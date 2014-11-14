
include("F_kernel.jl")
include("fileread.jl")
include("filewrite.jl")
using ProgressMeter

const k = (4*pi*8.85419e-12)^-1;
const G = 6.67384e-11;
const epsilon = 0;
const r_m = 0.3;

fileread("setup.vec");

global const stuff = float64([0,0,0,0,0]);

try
	global const warp = float64(settings[7]);	
	stuff[5] = float64(settings[6]);
	stuff[4] = float64(settings[5]);	
	global const max_step = int64(settings[1]);
	stuff[1] = float64(settings[2]);
	stuff[2] = float64(settings[3]);
	stuff[3] = float64(settings[4]);	
catch
	print("Settings not present or invalid; using defaults\n")
	global const max_step = int64(5e4);
	stuff[1] = float64(0.05);
	stuff[2] = float64(1);
	global const warp = float64(1);
end

global t_step = int64(0);
const n_el = int64(1/2*n*(n-1));
global n_frames = int64(floor(max_step*stuff[1]*30/warp));
global framecount = int64(0);
global tempcount = int64(0);
global r_tracker = float64(zeros(4,n,n_frames));
global bug_tracker = float64(zeros(n_el,n_frames));

global I = float64(zeros(size(r,2),1));
global massvec = float64(zeros(n_el,1));
global chargevec = float64(zeros(n_el,1));
global radvec = float64(zeros(n_el,1));
global rsquares = float64(zeros(n_el,1));
global rprod = float64(zeros(n_el,1));
global massrecip = float64(zeros(n_el,1));
global inertiapair = float64(zeros(n_el,1));
global l1 = int64(zeros(n_el,1));
global l2 = int64(zeros(n_el,1));
global l3 = int64(zeros(n,n_el));

for x = 1:n
	I[x] = (2*m[x]*(rad[x]^2)/5);
end

for x = 2:n
	for y = 1:(x-1)	
	local i = int64(0.5*(x-1)*(x-2) + y);	
		massvec[i] = float64(m[x]*m[y]*G);
		chargevec[i] = float64(q[x]*q[y]*k);
		radvec[i] = float64(rad[x] + rad[y]);
		rsquares[i] = float64(rad[x]^2 + rad[y]^2);
		rprod[i] = float64(2*rad[x]*rad[y]);		
		massrecip[i] = (1/m[x] + 1/m[y]);
		inertiapair[i] = rad[y]^2/I[y] + rad[x]^2/I[x];
		l1[i] = x;
		l2[i] = y;
		l3[x,i] = 1;
		l3[y,i] = -1;
	end
end

initdump = zeros(3,n,2)
initdump[:,:,1] = r;
initdump[:,:,2] = v;
filewrite("init_dump.dat",initdump,"i")

nbuff = cl.Buffer(Int64, ctx, (:r, :copy), hostbuf=int64(n_el*ones(1)));

l1buff = cl.Buffer(Int64, ctx, (:r, :copy), hostbuf=l1);
l2buff = cl.Buffer(Int64, ctx, (:r, :copy), hostbuf=l2);
cbuff = cl.Buffer(Float64, ctx, (:r, :copy), hostbuf=chargevec);
m1buff = cl.Buffer(Float64, ctx, (:r, :copy), hostbuf=float64(m));
m2buff = cl.Buffer(Float64, ctx, (:r, :copy), hostbuf=massvec);
m3buff = cl.Buffer(Float64, ctx, (:r, :copy), hostbuf=massrecip);
r1buff = cl.Buffer(Float64, ctx, (:r, :copy), hostbuf=float64(rad));
r2buff = cl.Buffer(Float64, ctx, (:r, :copy), hostbuf=radvec);
r3buff = cl.Buffer(Float64, ctx, (:r, :copy), hostbuf=rprod);
r4buff = cl.Buffer(Float64, ctx, (:r, :copy), hostbuf=rsquares);
I1buff = cl.Buffer(Float64, ctx, (:r, :copy), hostbuf=float64(I));
I2buff = cl.Buffer(Float64, ctx, (:r, :copy), hostbuf=inertiapair);
tbuff = cl.Buffer(Float64, ctx, (:r, :copy), hostbuf=stuff);

bugbuff = cl.Buffer(Float64, ctx, :rw, n_el);

rpbuff = cl.Buffer(Float64, ctx, (:rw, :copy), hostbuf=float64(r_pad));
vpbuff = cl.Buffer(Float64, ctx, (:rw, :copy), hostbuf=float64(v_pad));
wpbuff = cl.Buffer(Float64, ctx, (:rw, :copy), hostbuf=float64(w_pad));

vincbuff = cl.Buffer(Float64, ctx, (:rw, :copy), hostbuf=zeros(4,n_el));
wincbuff = cl.Buffer(Float64, ctx, (:rw, :copy), hostbuf=zeros(4,n_el));
vindbuff = cl.Buffer(Float64, ctx, (:rw, :copy), hostbuf=zeros(4,n));
windbuff = cl.Buffer(Float64, ctx, (:rw, :copy), hostbuf=zeros(4,n));

p = Progress(max_step,1)
for t_step = 1:max_step	
	
	tempcount = tempcount + 1;	
		
	cl.call(queue, ker2, n_el, nothing, cbuff, r3buff, r4buff, m1buff, I1buff, l1buff, l2buff, m2buff, r2buff, m3buff, I2buff, r1buff, tbuff, rpbuff, vpbuff, wpbuff, vincbuff, wincbuff); 	

	bbuff = cl.Buffer(Float64, ctx, (:rw, :copy), hostbuf=float64(l3));
	cl.call(queue, ker3, n, nothing, vincbuff, wincbuff, vindbuff, windbuff, bbuff, I1buff, m1buff, r1buff, nbuff, bugbuff);

	if (tempcount == floor(max_step/n_frames)) && (framecount < n_frames)
		tempcount = 0;
		framecount = framecount + 1;
		r_tracker[:,:,framecount] = cl.read(queue, rpbuff);
		bug_tracker[:,framecount] = cl.read(queue, bugbuff);
	end
	cl.call(queue, ker1, n, nothing, tbuff, vpbuff, rpbuff, wpbuff, vindbuff, windbuff);
	next!(p)
end

print("Simulation complete!\n")

global frameset = float64(zeros(3,n,int64(floor(max_step*stuff[1]*30/warp))));
   
frameset[:,:,:] = float64(r_tracker[1:3,:,:]);
filewrite("Particle_tracks.dat",frameset,"r")

   
#for i = 1:n
#	frameset[:,:] = r_tracker[1:3,n,:];    
#	local tempn = ["Particle_tracks_"string(i)".dat"]	
#	filewriteshort(tempn[1],frameset)
#end

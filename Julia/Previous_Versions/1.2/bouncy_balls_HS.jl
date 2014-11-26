
include("F_kernel_HS.jl")
include("fileread.jl")
include("filewrite.jl")
using ProgressMeter

const k = (4*pi*8.85419e-12)^-1;
const G = 6.67384e-11;
const epsilon = 0;
const r_m = 0.3;

fileread("setup.vec");

global const stuff = float64([0,0,0,0,0,0,G,k]);

try
	global const warp = float64(settings[9]);
	stuff[6] = float64(settings[7]);
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
global r_tracker = zeros(4,n,n_frames);

global I = zeros(size(r,2),1);
global l1 = zeros(Int32,n_el,1);
global l2 = zeros(Int32,n_el,1);
global l3 = zeros(Int8,n_el,n);

for x = 1:n
	I[x] = (2*m[x]*(rad[x]^2)/5);
end

for x = 2:n
	for y = 1:(x-1)	
	local i = int64(0.5*(x-1)*(x-2) + y);	
		l1[i] = x;
		l2[i] = y;
		l3[i,x] = -1;
		l3[i,y] = 1;
	end
end

initdump = zeros(3,n,2)
initdump[:,:,1] = r;
initdump[:,:,2] = v;
filewrite("init_dump.dat",initdump,"i")

nbuff = cl.Buffer(Int32, ctx, (:r, :copy), hostbuf=int32([n_el n]));
l3buff = cl.Buffer(Int8, ctx, (:rw, :copy), hostbuf=l3);
l1buff = cl.Buffer(Int32, ctx, (:r, :copy), hostbuf=l1);
l2buff = cl.Buffer(Int32, ctx, (:r, :copy), hostbuf=l2);
cbuff = cl.Buffer(Float64, ctx, (:r, :copy), hostbuf=q);
mbuff = cl.Buffer(Float64, ctx, (:r, :copy), hostbuf=float64(m));
radbuff = cl.Buffer(Float64, ctx, (:r, :copy), hostbuf=float64(rad));
Ibuff = cl.Buffer(Float64, ctx, (:r, :copy), hostbuf=float64(I));
tbuff = cl.Buffer(Float64, ctx, (:r, :copy), hostbuf=stuff);

rpbuff = cl.Buffer(Float64, ctx, (:rw, :copy), hostbuf=float64(r_pad));
vpbuff = cl.Buffer(Float64, ctx, (:rw, :copy), hostbuf=float64(v_pad));
wpbuff = cl.Buffer(Float64, ctx, (:rw, :copy), hostbuf=float64(w_pad));

vincbuff = cl.Buffer(Float64, ctx, (:rw, :copy), hostbuf=zeros(4,n_el));
wincbuff = cl.Buffer(Float64, ctx, (:rw, :copy), hostbuf=zeros(4,n_el));
accelbuff = cl.Buffer(Float64, ctx, (:rw, :copy), hostbuf=zeros(4,n));
alphabuff = cl.Buffer(Float64, ctx, (:rw, :copy), hostbuf=zeros(4,n));

p = Progress(max_step,1)
for t_step = 1:max_step	

	tempcount = tempcount + 1;	
	
	cl.call(queue, ker_v, n, nothing, vpbuff, wpbuff, accelbuff, alphabuff);	
	cl.call(queue, ker_r, n, nothing, tbuff, rpbuff, vpbuff, accelbuff, alphabuff);	
	cl.call(queue, ker_F, n_el, nothing, cbuff, mbuff, Ibuff, l1buff, l2buff, radbuff, tbuff, rpbuff, vpbuff, wpbuff, vincbuff, wincbuff); 	
	cl.call(queue, ker_S, n, nothing, vincbuff, wincbuff, accelbuff, alphabuff, l3buff, mbuff, Ibuff, radbuff, nbuff);	
	cl.call(queue, ker_v, n, nothing, vpbuff, wpbuff, accelbuff, alphabuff);
	
	if (t_step == 1 || (tempcount == floor(max_step/n_frames))) && (framecount < n_frames)
		tempcount = 0;
		framecount = framecount + 1;
		r_tracker[:,:,framecount] = cl.read(queue, rpbuff);	
	end	
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

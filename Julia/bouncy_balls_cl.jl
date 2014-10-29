
include("F_kernel.jl")
include("fileread.jl")
include("filewrite.jl")
using ProgressMeter

const k = (4*pi*8.85419e-12)^-1;
const G = 6.67384e-9;
const epsilon = 0;
const r_m = 0.3;

fileread("setup.vec");

global const stuff = float32([0,0,0,0]);

try
	global const warp = float32(settings[6]);	
	stuff[4] = float32(settings[5]);	
	global const max_step = int32(settings[1]);
	stuff[1] = float32(settings[2]);
	stuff[2] = float32(settings[3]);
	stuff[3] = float32(settings[4]);	
catch
	print("Settings not present or invalid; using defaults\n")
	global const max_step = int32(5e4);
	stuff[1] = float32(0.05);
	stuff[2] = float32(1);
	global const warp = float32(1);
end

global t_step = int32(0);
const n = int32(size(r,2));
const n_el = int32(1/2*n*(n-1));
global n_frames = int32(floor(max_step*stuff[1]*30/warp));
global framecount = int32(0);
global tempcount = int32(0);
global r_tracker = float32(zeros(4,n,n_frames));

global I = float32(zeros(size(r,2),1));
global massvec = float32(zeros(n_el,1));
global chargevec = float32(zeros(n_el,1));
global radvec = float32(zeros(n_el,1));
global rsquares = float32(zeros(n_el,1));
global rprod = float32(zeros(n_el,1));
global massrecip = float32(zeros(n_el,1));
global inertiapair = float32(zeros(n_el,1));
global l1 = int32(zeros(n_el,1));
global l2 = int32(zeros(n_el,1));

for x = 1:n
	I[x] = (2*m[x]*(rad[x]^2)/5);
end

for x = 2:n
	for y = 1:(x-1)	
	local i = int32(0.5*(x-1)*(x-2) + y);	
		massvec[i] = float32(m[x]*m[y]*G);
		chargevec[i] = float32(q[x]*q[y]*k);
		radvec[i] = float32(rad[x] + rad[y]);
		rsquares[i] = float32(rad[x]^2 + rad[y]^2);
		rprod[i] = float32(2*rad[x]*rad[y]);		
		massrecip[i] = (1/m[x] + 1/m[y]);
		inertiapair[i] = rad[y]^2/I[y] + rad[x]^2/I[x];
		l1[i] = x;
		l2[i] = y;
	end
end

l1buff = cl.Buffer(Int32, ctx, (:r, :copy), hostbuf=l1);
l2buff = cl.Buffer(Int32, ctx, (:r, :copy), hostbuf=l2);
cbuff = cl.Buffer(Float32, ctx, (:r, :copy), hostbuf=chargevec);
m1buff = cl.Buffer(Float32, ctx, (:r, :copy), hostbuf=float32(m));
m2buff = cl.Buffer(Float32, ctx, (:r, :copy), hostbuf=massvec);
m3buff = cl.Buffer(Float32, ctx, (:r, :copy), hostbuf=massrecip);
r1buff = cl.Buffer(Float32, ctx, (:r, :copy), hostbuf=float32(rad));
r2buff = cl.Buffer(Float32, ctx, (:r, :copy), hostbuf=radvec);
r3buff = cl.Buffer(Float32, ctx, (:r, :copy), hostbuf=rprod);
r4buff = cl.Buffer(Float32, ctx, (:r, :copy), hostbuf=rsquares);
I1buff = cl.Buffer(Float32, ctx, (:r, :copy), hostbuf=float32(I));
I2buff = cl.Buffer(Float32, ctx, (:r, :copy), hostbuf=inertiapair);
tbuff = cl.Buffer(Float32, ctx, (:r, :copy), hostbuf=stuff);

rpbuff = cl.Buffer(Float32, ctx, (:rw, :copy), hostbuf=float32(r_pad));
vpbuff = cl.Buffer(Float32, ctx, (:rw, :copy), hostbuf=float32(v_pad));
wpbuff = cl.Buffer(Float32, ctx, (:rw, :copy), hostbuf=float32(w_pad));

p = Progress(max_step,1)
for t_step = 1:max_step		
	tempcount = tempcount + 1;
	cl.call(queue, ker1, n, nothing, tbuff, vpbuff, rpbuff);
	
	cl.call(queue, ker2, n_el, nothing, cbuff, r3buff, r4buff, m1buff, I1buff, l1buff, l2buff, m2buff, r2buff, m3buff, I2buff, r1buff, tbuff, rpbuff, vpbuff, wpbuff); 	
	
	if (tempcount == floor(max_step/n_frames)) && (framecount < n_frames)
		tempcount = 0;
		framecount = framecount + 1;
		r_tracker[:,:,framecount] = cl.read(queue, rpbuff);	
	end
	
	next!(p)
end

print("Simulation complete!\n")

global frameset = float64(zeros(3,n,int32(floor(max_step*stuff[1]*30/warp))));
   
frameset[:,:,:] = float64(r_tracker[1:3,:,:]);
filewrite("Particle_tracks.dat",frameset)

   
#for i = 1:n
#	frameset[:,:] = r_tracker[1:3,n,:];    
#	local tempn = ["Particle_tracks_"string(i)".dat"]	
#	filewriteshort(tempn[1],frameset)
#end


			


























				



include("F_kernel.jl")
include("fileread.jl")
include("filewrite.jl")
using ProgressMeter

const k = (4*pi*8.85419e-12)^-1;
const G = 6.67384e-8;
const epsilon = 0;
const r_m = 0.3;

fileread("setup.vec");

try
	global const warp = float64(settings[6]);	
	global const mu_d = float64(settings[5]);	
	global const max_step = int64(settings[1]);
	global const dt = float64(settings[2]);
	global const diss = float64(settings[3]);
	global const mu_s = float64(settings[4]);	
catch
	print("Settings not present or invalid; using defaults\n")
	global const max_step = int64(5e4);
	global const delta_t = float64(0.05);
	global const diss = float64(1);
	global const warp = float64(1);
end

global t_step = int64(0);
const n = int64(size(r,2));
const n_el = int64(1/2*n*(n-1));
global r_tracker = zeros(3,n,max_step);	

global I = zeros(size(r,2),1);
global massvec = zeros(n_el,1);
global chargevec = zeros(n_el,1);
global radvec = zeros(n_el,1);
global massrecip = zeros(n_el,1);
global inertiapair = zeros(n_el,1);
global lookup = float32(zeros(n_el,2));

for x = 1:n
	I[x] = (2*m[x]*(rad[x]^2)/5);
end

for x = 2:n
	for y = 1:(x-1)	
	local i = int64(0.5*(x-1)*(x-2) + y);	
		massvec[i] = m[x]*m[y]*G;
		chargevec[i] = q[x]*q[y]*k;
		radvec[i] = rad[x] + rad[y];
		massrecip[i] = (1/m[x] + 1/m[y]);
		inertiapair[i] = rad[y]^2/I[y] + rad[x]^2/I[x];
		lookup[i,:] = [x y];
	end
end

tbuff = cl.Buffer(Float32, ctx, (:r, :copy), hostbuf=float32(dt));
cbuff = cl.Buffer(Float32, ctx, (:r, :copy), hostbuf=float32(chargevec));
m1buff = cl.Buffer(Float32, ctx, (:r, :copy), hostbuf=float32(m));
m2buff = cl.Buffer(Float32, ctx, (:r, :copy), hostbuf=float32(massvec));
m3buff = cl.Buffer(Float32, ctx, (:r, :copy), hostbuf=float32(massrecip));
r1buff = cl.Buffer(Float32, ctx, (:r, :copy), hostbuf=float32(rad));
r2buff = cl.Buffer(Float32, ctx, (:r, :copy), hostbuf=float32(radvec));
I1buff = cl.Buffer(Float32, ctx, (:r, :copy), hostbuf=float32(I));
I2buff = cl.Buffer(Float32, ctx, (:r, :copy), hostbuf=float32(inertiapair));
lbuff = cl.Buffer(Int32, ctx, (:r, :copy), hostbuf=lookup);

rbuff = cl.Buffer(Float32, ctx, (:rw, :copy), hostbuf=float32(r));
vbuff = cl.Buffer(Float32, ctx, (:rw, :copy), hostbuf=float32(v));
wbuff = cl.Buffer(Float32, ctx, (:rw, :copy), hostbuf=float32(w));

p = Progress(max_step,1)
for t_step = 1:max_step			
	
	cl.call(queue, kerF, n_el, nothing, cbuff, m1buff, I1buff, lbuff, m2buff, r2buff, m3buff, I2buff, r1buff, tbuff, rbuff, vbuff, wbuff); 

	cl.call(queue, kerR, n, nothing, tbuff, vbuff, rbuff);	
					
      	r_tracker[:,:,t_step] = cl.read(queue, rbuff);	
	
next!(p)
end

print("Simulation complete!\n")

global frameset = zeros(3,n,int64(ceil(max_step*delta_t*30/warp))+1);

for t = 1:int64(ceil(max_step*delta_t*30/warp))
    
    local t_ind = min(ceil(max_step/ceil(max_step*delta_t*30/warp)*t),size(r_tracker,3));
    frameset[:,:,t] = r_tracker[:,:,t_ind];
    
end

filewrite("Particle_tracks.dat",frameset)


			


























				


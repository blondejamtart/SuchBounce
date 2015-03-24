
include("F_kernel_hybrid.jl")
include("fileread.jl")
include("filewrite.jl")
using ProgressMeter

const k = (4*pi*8.85419e-12)^-1; # electrostatic force constant
const G = 6.67384e-11; # Gravitational force constant

fileread("Setup/setup.vec");

global const stuff = float64([0,0,0,0,0,0,G,k,0,0]);

# Assign parameters from settings file
try
	global const warp = float64(settings[9]);
	stuff[6] = float64(settings[7]);
	stuff[5] = float64(settings[6]);
	stuff[4] = float64(settings[5]);
	stuff[1] = float64(settings[2]);
	stuff[2] = float64(settings[3]);
	stuff[3] = float64(settings[4]);
	stuff[9] = float64(settings[8]);
	global const max_step = int64(settings[1]/stuff[1]);
catch
	print("Settings not present or invalid; using defaults\n")
	global const max_step = int64(5e4);
	stuff[1] = float64(0.05);
	stuff[2] = float64(1);
	global const warp = float64(1);
end


# Calculate interval between data samples for output
global t_step = int64(0);
const n_el = int64(1/2*n*(n-1));
global n_frames = int64(floor(max_step*stuff[1]*64/warp));
if n_frames > max_step
	n_frames = max_step;
	write(STDOUT,"Insufficient frames for specified warp; using all available frames\r\n")
end


# Preallocation
global framecount = int64(0);
global tempcount = int64(0);
const tracker_size = 32*n*n_frames;
if tracker_size > 2^32
	write(STDOUT,"NO!")
	break
else
	global r_tracker = zeros(4,n,n_frames);
	global Tv_tracker = zeros(n,n_frames);
	global Tw_tracker = zeros(n,n_frames);
	global V_tracker = zeros(n,n_frames);
	global Int_tracker = zeros(n,n_frames);
	global I = zeros(size(r,2),1);
	global l1 = zeros(Int32,n_el,1);
	global l2 = zeros(Int32,n_el,1);
	global l3 = zeros(Int8,n_el,n);
	global l4 = zeros(Int8,n_el,1);
	global external = zeros(4,n);
end
# Calculate Inertia (spheres)
for x = 1:n
	I[x] = (2*m[x]*(rad[x]^2)/5);
end


# Populate 'Lookup' matrices
for x = 2:n
	for y = 1:(x-1)	
	local i = int64(0.5*(x-1)*(x-2) + y);	
		l1[i] = x;
		l2[i] = y;
		l3[i,x] = -1;
		l3[i,y] = 1;
	end
end


# Write initial positions to file

initdump = zeros(3,n,2)
initdump[:,:,1] = r;
initdump[:,:,2] = v;

try
	filewrite("Outputs/init_dump.dat",initdump,"i")
catch 
	mkdir("Outputs");
	filewrite("Outputs/init_dump.dat",initdump,"i")
end



# Write data to OpenCL buffer
nbuff = cl.Buffer(Int32, ctx, (:r, :copy), hostbuf=int32([n_el n]));
l4buff = cl.Buffer(Int8, ctx, (:rw, :copy), hostbuf=l4);
l3buff = cl.Buffer(Int8, ctx, (:rw, :copy), hostbuf=l3);
l2buff = cl.Buffer(Int32, ctx, (:r, :copy), hostbuf=l2);
l1buff = cl.Buffer(Int32, ctx, (:r, :copy), hostbuf=l1);
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

extbuff = cl.Buffer(Float64, ctx, (:rw, :copy), hostbuf=zeros(4,n));
Vbuff = cl.Buffer(Float64, ctx, :rw, n);
Vincbuff = cl.Buffer(Float64, ctx, :rw, n_el);
Intbuff = cl.Buffer(Float64, ctx, :rw, n);
Intincbuff = cl.Buffer(Float64, ctx, :rw, n_el);
Tvbuff = cl.Buffer(Float64, ctx, :rw, n);
Twbuff = cl.Buffer(Float64, ctx, :rw, n);

# Iterate!
p = Progress(max_step,1)
for t_step = 1:max_step	

	tempcount = tempcount + 1;

	#cl.call(queue, ker_v, n, nothing, vpbuff, extbuff); # external kick
	cl.call(queue, ker_v, n, nothing, vpbuff, accelbuff); # translational kick
	cl.call(queue, ker_v, n, nothing, wpbuff, alphabuff); # rotatational kick		
	
	cl.call(queue, ker_0, n, nothing, accelbuff, Vbuff); # zero things
	cl.call(queue, ker_0, n, nothing, alphabuff, Intbuff);
	
	cl.call(queue, ker_r, n, nothing, tbuff, rpbuff, vpbuff); # Drift
		
	cl.call(queue, ker_F, n_el, nothing, cbuff, mbuff, Ibuff, l1buff, l2buff, radbuff, tbuff, rpbuff, vpbuff, wpbuff, vincbuff, wincbuff, Vincbuff, Intincbuff); 	# Compute force
	cl.call(queue, ker_S, n, nothing, vincbuff, wincbuff, accelbuff, alphabuff, l3buff, mbuff, Ibuff, radbuff, nbuff, Vbuff, Vincbuff, Intbuff, Intincbuff);	# Contract array
	#cl.call(queue, ker_ext,	n, nothing, extbuff, vpbuff, mbuff, rpbuff, Intbuff, Vbuff, tbuff); # Apply external/boundary forces
	
	#cl.call(queue, ker_v, n, nothing, vpbuff, extbuff); # external kick
	cl.call(queue, ker_v, n, nothing, vpbuff, accelbuff); # translational kick
	cl.call(queue, ker_v, n, nothing, wpbuff, alphabuff); # rotatational kick
	
	cl.call(queue, ker_kin, n, nothing, vpbuff, wpbuff, Tvbuff, Twbuff, mbuff, Ibuff); # Kinetic energies
	
	
	
 	#cl.call(queue, ker_T, n-1, nothing, rpbuff); # Make positions relative to particle 1
	#cl.call(queue, ker_T0, 1, nothing, rpbuff);
		
	if (t_step == 1 || (tempcount == floor(max_step/n_frames))) && (framecount < n_frames)
		tempcount = 0;
		framecount = framecount + 1;
		r_tracker[:,:,framecount] = cl.read(queue, rpbuff);
		Tv_tracker[:,framecount] = cl.read(queue, Tvbuff);
		Tw_tracker[:,framecount] = cl.read(queue, Twbuff);
		V_tracker[:,framecount] = cl.read(queue, Vbuff);	
		Int_tracker[:,framecount] = cl.read(queue, Intbuff);
	end	
	next!(p)
end

print("Simulation complete!\n")


# Reconfigure data for output
global frameset = float64(zeros(3,n,n_frames));   
frameset[:,:,:] = float64(r_tracker[1:3,:,:]);
finaldump = zeros(4,n,3);
finaldump[:,:,1] = cl.read(queue,rpbuff);
finaldump[:,:,2] = cl.read(queue,vpbuff);
finaldump[:,:,3] = cl.read(queue,wpbuff);


# Write Files/Create folder

filewrite("Outputs/Particle_tracks.dat",frameset,"r")
filewrite("Outputs/final_dump.dat",finaldump[1:3,:,:],"i")
filewrite("Outputs/T_v_tracks.dat",Tv_tracker,"r")
filewrite("Outputs/T_w_tracks.dat",Tw_tracker,"r")
filewrite("Outputs/V_tracks.dat",V_tracker,"r")
filewrite("Outputs/E_int_tracks.dat",Int_tracker,"r")









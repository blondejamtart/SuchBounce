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
	global const delta_t = float64(settings[2]);
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


for x = 1:n
	I[x] = (2*m[x]*(rad[x]^2)/5);
end

for x = 2:n
	for y = 1:(x-1)	
	local i = int64(0.5*(x-1)*(x-2) + y);	
		massvec[i] = m[x]*m[y];
		chargevec[i] = q[x]*q[y];
		radvec[i] = rad[x] + rad[y];
		massrecip[i] = (1/m[x] + 1/m[y]);
		inertiapair[i] = rad[y]^2/I[y] + rad[x]^2/I[x];
	end
end
p = Progress(max_step,1)
for t_step = 1:max_step
	
	
	for i = 2:n
		for j = 1:(i-1)
			
			local collisionflag = int64(0);
			local x = int64(0.5*(i-1)*(i-2) + j);
			local R = r[:,j] - r[:,i];
			local d = norm(R);
			local Runit = vec(R)/d;
			local wvec = w[:,j]*rad[j] + w[:,i]*rad[i];
			local vtemp = v[:,j] - v[:,i]; 
		
			collisionflag = 1/2 + (radvec[x] - d)/(2*norm(radvec[x] - d));	
		
			local F_part = ((massvec[x]*G - chargevec[x]*k)/d^2 + 0)*(1 - collisionflag);				
			local F_part_grad = ((-2*massvec[x]*G + 2*chargevec[x]*k)/d^3 + 0)*(1 - collisionflag)*dot(vtemp,Runit);	
	
			local frictiondir = (vtemp - dot(vtemp,Runit)*Runit);			
			local v_rel = frictiondir - cross(wvec,Runit);

			local j_f_part = -collisionflag/(inertiapair[x] + massrecip[x]);
			local j_part =  -(1 + diss)*collisionflag*dot(vtemp,Runit)/massrecip[x];					
					
			v[:,i] = v[:,i] + F_part*Runit*delta_t/m[i] + F_part_grad*Runit*delta_t^2/m[i] - j_part*Runit/m[i] - j_f_part*v_rel/m[i];
			v[:,j] = v[:,j] - F_part*Runit*delta_t/m[j] - F_part_grad*Runit*delta_t^2/m[j] + j_part*Runit/m[j] + j_f_part*v_rel/m[j];
			w[:,i] = w[:,i] - cross(Runit,j_f_part*v_rel)*rad[i]/I[i];
			w[:,j] = w[:,j] + cross(Runit,j_f_part*v_rel)*rad[j]/I[j];			
		end
	end

	
	for i = 1:n	
		r[:,i] = r[:,i] + v[:,i]*delta_t;			
		r_tracker[:,i,t_step] = r[:,i];	
	end
next!(p)
end

print("Simulation complete!\n")

global frameset = zeros(3,n,int64(ceil(max_step*delta_t*30/warp))+1);

for t = 1:int64(ceil(max_step*delta_t*30/warp))
    
    local t_ind = min(ceil(max_step/ceil(max_step*delta_t*30/warp)*t),size(r_tracker,3));
    frameset[:,:,t] = r_tracker[:,:,t_ind];
    
end

filewrite("Particle_tracks.dat",frameset)


			


























				


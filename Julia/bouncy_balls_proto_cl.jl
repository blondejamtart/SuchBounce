include("fileread.jl")
include("filewrite.jl")
using ProgressMeter

const k = (4*pi*8.85419e-12)^-1;
const G = 6.67384e-11;

fileread("setup.vec");

try
	global const mu = float64(settings[6]);	
	global const B = float64(settings[5]);	
	global const max_step = int64(settings[1]);
	global const delta_t = float64(settings[2]);
	global const diss = float64(settings[3]);
	global const A = float64(settings[4]);
	global const warp = float64(settings[7]);
catch
	print("Settings not present or invalid; using defaults\n")
	global const max_step = int64(5e4);
	global const delta_t = float64(0.05);
	global const diss = float64(1);
	global const warp = float64(1);
end

global n_frames = int64(floor(max_step*delta_t*30/warp));
global t_step = int64(0);
const n = int64(size(r,2));
const n_el = int64(1/2*n*(n-1));
global r_tracker = zeros(3,n,n_frames);	

global I = zeros(size(r,2),1);
global massvec = zeros(n_el,1);
global chargevec = zeros(n_el,1);
global radvec = zeros(n_el,1);
global rsquares = zeros(n_el,1);
global rprod = zeros(n_el,1);
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
		rprod[i] = 2*rad[x]*rad[y];
		rsquares[i] = rad[x]^2 + rad[y]^2;
	end
end

global tempcount = 0;
global framecount = 0;
p = Progress(max_step,1)
for t_step = 1:max_step

	for i = 1:n	
		r[:,i] = r[:,i] + v[:,i]*delta_t;			
	end
	
	tempcount = tempcount + 1;	

	for i = 2:n
		for j = 1:(i-1)
			
			local collisionflag = int64(0);
			local x = int64(0.5*(i-1)*(i-2) + j);
			local R = r[:,j] - r[:,i];
			local d = norm(R);
			local Runit = vec(R)/d;
			local wvec = w[:,j]*rad[j] + w[:,i]*rad[i];
			local vtemp = v[:,j] - v[:,i]; 
			local c = d + radvec[x];
			if d < radvec[x]*1.00001
				collisionflag = 1;
			end
			local vw6 = (0.1666666)*A*(c^3-2*rsquares[x]*c)*(1/((c*c - rsquares[x] - rprod[x])^2)-1/((c*c - rsquares[x] + rprod[x])^2));
			local F_part = ((massvec[x]*G - chargevec[x]*k)/d^2 + vw6)*(1 - collisionflag);				
			local F_part_grad = ((-2*massvec[x]*G + 2*chargevec[x]*k)/d^3 + (0.1666666)*A*((3*c^2-2*rsquares[x])*(1/((c*c - rsquares[x] - rprod[x])^2)-1/((c*c - rsquares[x] + rprod[x])^2)) - (4*c^4 - 8*rsquares[x]*c*c)*(1/((c*c - rsquares[x] - rprod[x])^3)-1/((c*c - rsquares[x] + rprod[x])^3))))*(1 - collisionflag)*dot(vtemp,Runit);	
	
			local v_rel = (vtemp - dot(vtemp,Runit)*Runit) - cross(wvec,Runit);

			local j_f_part = collisionflag*((F_part*delta_t + 0.5*F_part_grad*delta_t^2)*mu - 1/(inertiapair[x] + massrecip[x]));
			local j_part =  -(1 + diss)*collisionflag*dot(vtemp,Runit)/massrecip[x];
			if j_f_part > j_part*mu
				j_f_part = j_part*mu;
			end
					
			v[:,i] = v[:,i] + F_part*Runit*delta_t/m[i] + 0.5*F_part_grad*Runit*delta_t^2/m[i] - j_part*Runit/m[i] - j_f_part*v_rel/m[i];
			v[:,j] = v[:,j] - F_part*Runit*delta_t/m[j] - 0.5*F_part_grad*Runit*delta_t^2/m[j] + j_part*Runit/m[j] + j_f_part*v_rel/m[j];
			w[:,i] = w[:,i] - cross(Runit,j_f_part*v_rel)*rad[i]/I[i];
			w[:,j] = w[:,j] - cross(Runit,j_f_part*v_rel)*rad[j]/I[j];			
		end
	end

	
	
	if (tempcount == floor(max_step/n_frames)) && (framecount < n_frames)
		tempcount = 0;
		framecount = framecount + 1;
		for i = 1:n	
			r_tracker[:,i,framecount] = r[:,i];
		end
	end
	
next!(p)
end

print("Simulation complete!\n")


filewrite("Particle_tracks.dat",r_tracker,"r")


			


























				


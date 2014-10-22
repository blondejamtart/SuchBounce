include("fileread.jl")

const k = (4*pi*8.85419e-12)^-1;
const G = 6.67384e-11;
const epsilon = 1e-6;
const r_m = 0.3;

fileread("setup.vec");

const max_step = int64(5e4);
const delta_t = 0.00004;
const diss = 1;

global t_step = int64(0);
global x = int64(0);
const n = int64(size(r,1));
const n_el = int64(1/2*n*(n-1));
global r_tracker = zeros(max_step,n,3);	

mass = zeros(n,n);
charge = zeros(n,n);
I = zeros(size(r,1),1);

for x = 1:n
	I[x] = (2*m[x]*(rad[x]^2)/5);
	for y = 1:n
		mass[x,y] = m[x]*m[y];
		charge[x,y] = q[x]*q[y];
	end
end

while t_step < max_step

	t_step = t_step + 1;

	
	global d = zeros(n_el,1);
	global R = zeros(n_el,3);
    	global F_part = zeros(n_el,1);
    	global F_part_grad = zeros(n_el,1);   
    	global j_part = zeros(n_el,1);
    	global j_f_part = zeros(n_el,3);
	global Runit = zeros(n_el,3);

	x = 0;

	for i = 2:n

		for j = 1:(i-1)
			local collisionflag = int64(0);
			x = x + 1;
			R[x,:] = r[j,:] - r[i,:];
			d[x] = norm(R[x,:]);
			Runit[x,:] = R[x,:]/d[x];
			
			collisionflag = 1/2 + (rad[i] + rad[j] - d[x])/(2*norm(rad[i] + rad[j] - d[x]));	
			
			F_part[x] = ((mass[i,j]*G - charge[i,j]*k)/d[x]^2  + epsilon*(r_m^12/d[x]^13 -2*r_m^6/d[x]^7))*(1 - collisionflag);
			F_part_grad[x] = ((-2*mass[i,j]*G + 2*charge[i,j]*k)/d[x]^3  + epsilon*(-13*r_m^12/d[x]^14 + 14*r_m^6/d[x]^8))*(1 - collisionflag)*dot(vec(v[i,:] - v[j,:]),vec(Runit[x,:]));
			
			global frictiondir = [0 0 0];
			global templength = norm((v[j,:] - v[i,:]) - dot(vec(v[j,:] - v[i,:]),vec(Runit[x,:]))*Runit[x,:]);
			if templength != 0
				frictiondir = (v[j,:] - v[i,:]) - dot(vec(v[j,:] - v[i,:]),vec(Runit[x,:]))*Runit[x,:];			
			end

			v_rel = frictiondir' - cross(vec(w[j,:]),(vec(Runit[x,:])*rad[j])) - cross(vec(w[i,:]),vec(Runit[x,:])*rad[i]);
			j_f_part[x,:] = -v_rel*collisionflag/(rad[j]^2/I[j] + rad[i]^2/I[i] + 1/m[i] + 1/m[j]);
			j_part[x] =  -(1 + diss)*collisionflag*dot(vec(v[j,:] - v[i,:]),vec(Runit[x,:]))/(1/m[i] + 1/m[j]);		

		end
	end
	
	x = 0;
	for i = 2:n
		
		for j = 1:(i-1)
			x = x + 1;
			v[i,:] = v[i,:] + F_part[x]*Runit[x,:]*delta_t/m[i] + F_part_grad[x]*Runit[x,:]*delta_t^2/m[i] - j_part[x]*Runit[x,:]/m[i] - j_f_part[x,:]/m[i];
			v[j,:] = v[j,:] - F_part[x]*Runit[x,:]*delta_t/m[j] - F_part_grad[x]*Runit[x,:]*delta_t^2/m[j] + j_part[x]*Runit[x,:]/m[j] + j_f_part[x,:]/m[j];
			w[i,:] = w[i,:] - cross(vec(Runit[x,:]),vec(j_f_part[x,:]))'*rad[i]/I[i];
			w[j,:] = w[j,:] + cross(vec(Runit[x,:]),vec(j_f_part[x,:]))'*rad[j]/I[j];			
		end

	end

	
	for i = 1:n	
		r[i,:] = r[i,:] + v[i,:]*delta_t;			
		r_tracker[t_step,i,:] = r[i,:];	
	end

end





			


























				


#pragma OPENCL EXTENSION cl_khr_fp64 : enable


__kernel void Fimp(__global const double *q,			
				 	__global const double *m,				  
				  	__global const double *I,
				  	__global const int *k,
					__global const int *l,			  	 				  	 
				 	__global const double *rad,	
				 	__global double *stuff,			  
				 	__global double3 *r,
				 	__global double3 *v,
				 	__global double3 *w,
					__global double3 *mu,
					__global double3 *accel_part_lower,
					__global double3 *alpha_part_lower,
					__global double3 *accel_part_upper,
					__global double3 *alpha_part_upper,
					__global double *Vpart_lower,
					__global double *Ipart_lower,
					__global double *Vpart_upper,
					__global double *Ipart_upper,
					__global double *F_track,
					__global const int *n,
					__global const int *offset)
					
				  
		{ 			
			int x = get_global_id(0) + offset[0];
			int a = k[x];
			int b = l[x];
			double3 r_a = r[a], r_b = r[b], v_a = v[a], v_b = v[b];
			double rad_a = rad[a], rad_b = rad[b], q_a = q[a], q_b = q[b], m_a = m[a], m_b = m[b], t_step = (stuff[0]);
		   	double G = stuff[6];
			double e0 = stuff[7];
			double 	d = distance(r_a,r_b);			
		 	double3 Runit = normalize(r_a - r_b);		
			
			double 	p = dot(vtemp,Runit);							
					
			double  Vtemp = (-(m_a*m_b*G))/d;			
			double 	F = -Vtemp/d;
			double 	dF = -2.0*Vtemp*p/d;	
		
			F_track[1] = maxmag(F_track[1],F);
			
			double j = (F*t_step+0.5*dF*t_step*t_step);			
			
			int a_sub = a - n[4]*(a/n[4]);
			int b_sub = b - n[4]*(b/n[4]);
			accel_part_lower[a_sub*n[4]+b_sub] = -(j*Runit); 			
			accel_part_upper[b_sub*n[4]+a_sub] = (j*Runit); 
			
			Ipart_lower[a_sub*n[4]+b_sub] = 0.0;			
			Vpart_lower[a_sub*n[4]+b_sub] = Vtemp;	
			
			Ipart_upper[b_sub*n[4]+a_sub] = 0.0;
			Vpart_upper[b_sub*n[4]+a_sub] = Vtemp; 		

			
		}

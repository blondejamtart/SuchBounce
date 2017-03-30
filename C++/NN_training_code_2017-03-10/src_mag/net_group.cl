#pragma OPENCL EXTENSION cl_khr_fp64 : enable


__kernel void group_joints	(	__global const int *k,
					__global const int *l,			  	 				  	 
					__global const double *rad,	
					__global double *stuff,			  
					__global double3 *r,				 	
					__global const int *n,
					__global short *joined
				)
					
				  
		{ 			
			int x = get_global_id(0);
			int a = k[x];
			int b = l[x];
			double3 r_a = r[a], r_b = r[b];
			double rad_a = rad[a], rad_b = rad[b], t_step = stuff[0];
		   	double 	d = distance(r_a,r_b);
			joined[a+b*n[5]] = step(d,(stuff[17] + (rad[a]+rad[b])));
			joined[b+a*n[5]] = step(d,(stuff[17] + (rad[a]+rad[b]))); 
					
		}

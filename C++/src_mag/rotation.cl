#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void mustep(__global const double *stuff,					
					__global double3 *mu,
					__global double3 *w)
		{
			int x = get_global_id(0);
			double dt = stuff[0];						
			double3 mu_1 = normalize(mu[x]);	
			double mu_mag = length(mu[x]);			
			double a = dt*length(w[x])*length(mu[x]-w[x]*dot(mu[x],w[x]));
			double3 b = normalize(cross(mu_1,w[x]));
			mu_1 = mu_1 - a*b;
			mu[x] = mu_mag * normalize(mu_1);						
		}

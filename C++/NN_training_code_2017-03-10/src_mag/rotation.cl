#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void mustep(__global const double *stuff,					
					__global double3 *mu,
					__global double3 *w)
		{
			int x = get_global_id(0);
			double dt = stuff[0];						
//			double3 mu_1 = normalize(mu[x]);	
//			double mu_mag = length(mu[x]);			
//			double a = dt*length(w[x])*length(mu[x]-w[x]*dot(mu[x],w[x]));
//			double3 b = normalize(cross(mu_1,w[x]));
//			mu_1 = mu_1 - a*b;
//			mu[x] = mu_mag * normalize(mu_1);
			double3 mu_x, mu_y, mu_z;

			double3 theta = dt*w[x];			
			
			mu_x.x = mu[x].x;			
			mu_x.y = cos(theta.x)*mu[x].y - sin(theta.x)*mu[x].z;
			mu_x.z = sin(theta.x)*mu[x].y + cos(theta.x)*mu[x].z;

			mu_y.x = cos(theta.y)*mu_x.x + sin(theta.y)*mu_x.z;
			mu_y.y = mu_x.y;
			mu_y.z = -sin(theta.y)*mu_x.x + cos(theta.y)*mu_x.z;

			mu_z.x = cos(theta.z)*mu_y.x - sin(theta.z)*mu_y.y;
			mu_z.y = sin(theta.z)*mu_x.x + cos(theta.z)*mu_x.y;
			mu_z.z = mu_y.z;

			mu[x] = mu_z;
			
								
		}

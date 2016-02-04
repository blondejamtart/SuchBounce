#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void logic(__global double3 *r,		
					__global const short *k,
					__global const short *l,			
					__global double3 *v,
					__global double *q,
					__global int *trig,
					__global int *n,
					__global double *ranges)
					
		{
			int x = get_global_id(0);
			int a = k[x];
			int b = l[x];
			double d = distance(r[a],r[b]);

			double signal = 0;
			int n_range = 0;

			for (int i = 0, i < n, i++)
			{
				if ( d < ranges[0] && i != x)
				{				
					signal += 0.1*(ranges[0]/d)*trig[i];
					n_range += 1;
				}
			}
			
			signal = signal/n_range;
			for (int i = 0, i < n, i++)

			{
				  
				if (i != x && d > (rad_a + rad_b)
				{
					int do_attract = (d < ranges[1]);					
					if (do_attract) {q[a] += q_control; q[b] -= q_control;}
				}
			}				
									
		}

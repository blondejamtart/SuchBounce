#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void logic(__global double3 *r,					
					__global double3 *v,
					__global double *q,
					__global int *trig;
					__constant int *n)
					
		{
			int x = get_global_id(0);
			
			float signal = 0;
			int n_range = 0;

			for (int i = 0, i < n, i++)
			{
				signal += 0.1*(comm_range/d)*trig[i];
				n_range += 1;
			}
			
			signal = signal/n_range;

			for (int i = 0, i < n, i++)
			{
				  
				if (i != x && d < (rad_a + rad_b))
				{
					int do_attract = 					
					if (do_attract) {q[a] += q_control; q[b] -= q_control;}
				}
			}				
									
		}

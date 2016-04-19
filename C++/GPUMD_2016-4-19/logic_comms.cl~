#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void logic_comms(__global double3 *r,		
					__global int *gespielt,						
					__global double *q,
					__global int *trig,
					__global int *n,
					__global double *ranges,
					__global int *opponent)
					
		{
			int x = get_global_id(0);				
			
			double signal = 0;
			int n_range = 0;
			double d_choice = ranges[0];
			
			if (gespielt[x] == 0)
			{			
				for (int i = 0; i < n[0]; i++)
				{
					double d = distance(r[x],r[i]);
					if (i != x && d > rad[x] + rad[i] && d < ranges[0] && d < d_choice && gespielt[i] == 0) 
					{
						opponent[x] = i;					
					}
				}
			}
		}	

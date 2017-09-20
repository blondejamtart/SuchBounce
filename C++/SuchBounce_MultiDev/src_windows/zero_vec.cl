#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void zeroer(__global double3 *vector)
							

		{	
			int x = get_global_id(0);
			//vector[x] = (0.0, 0.0, 0.0);
			vector[x].x = 0.0;
			vector[x].y = 0.0;
			vector[x].z = 0.0;
			//vector[x] -= vector[x];			
		}

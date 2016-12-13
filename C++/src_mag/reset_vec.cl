#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void reset(__global double3 *vector)
							

		{	
			int x = get_global_id(0);
			vector[x].z = (1.0);			
		}

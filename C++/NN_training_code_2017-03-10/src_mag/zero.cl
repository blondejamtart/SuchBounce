#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void zeroer(__global double3 *vector,
					__global double *scalar1,
					__global double *scalar2)		

		{	
			int x = get_global_id(0);
			vector[x] = (0,0,0);			
			scalar1[x] = 0;
			scalar2[x] = 0;
		}

#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void zeroer(__global double3 *accel,
					__global double *V,
					__global int *flag)		

		{	
			int x = get_global_id(0);
			accel[x] = (0,0,0);			
			V[x] = 0;
			flag[x] = 0;
		}

#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void zeroer(__global double3 *accel,
					__global double *A,
					__global double *B)		

		{	
			int x = get_global_id(0);
			accel[x] = (0.0, 0.0, 0.0);			
			A[x] = 0.0;
			B[x] = 0.0;
		}

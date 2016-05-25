#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void WHYUNO0(__global int *A,
			__global int *B)		

		{	
			int x = get_global_id(0);			
			A[x] = -1;
			B[x] = 0;
		}

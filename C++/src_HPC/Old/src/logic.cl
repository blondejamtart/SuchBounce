#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void logic(__global double3 *r,					
					__global double3 *v,
					__global double *q,
					__constant int *n)
					
		{
			int x = get_global_id(0);
			for (int i = 0, i < n, i++)
			{
				
									
		}

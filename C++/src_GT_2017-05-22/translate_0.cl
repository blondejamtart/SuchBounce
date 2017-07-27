#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void rmove0(__global double3 *r)
		{			
			r[0] += -r[0];
		}

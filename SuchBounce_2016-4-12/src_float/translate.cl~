#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void rmove(__global double3 *r)
		{
			int x = get_global_id(0);
			r[x+1] += -r[0];
		}

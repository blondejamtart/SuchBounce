#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void rmove(	__global double3 *r,			
			__global double3 *r_mean,
			__global int *groupID,
			__global double *stuff
		)
		{
			int x = get_global_id(0);
			r[x] -= r_mean[groupID[x]];
			stuff[20] = max(r[x].x,stuff[20]);
			stuff[19] = max(r[x].z,stuff[19]);
		}

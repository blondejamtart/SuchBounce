#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void Tstep(__global double3 *v,			
					__global double *Tv,
					__global const double *m)
		{
			int x = get_global_id(0);
			Tv[x] = 0.5*m[x]*dot(v[x],v[x]);											
		}

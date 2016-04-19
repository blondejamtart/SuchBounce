#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void Tstep(__global float3 *v,			
					__global float3 *w,
					__global float *Tv,
					__global float *Tw,
					__global const float *m,
					__global const float *I)
		{
			int x = get_global_id(0);
			Tv[x] = 0.5*m[x]*dot(v[x],v[x]);
			Tw[x] = 0.5*I[x]*dot(w[x],w[x]);									
		}

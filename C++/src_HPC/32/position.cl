#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void rstep(__global const float *stuff,					
					__global float3 *r,
					__global float3 *v)
		{
			int x = get_global_id(0);						
			r[x] += (v[x]*stuff[0]);			
		}

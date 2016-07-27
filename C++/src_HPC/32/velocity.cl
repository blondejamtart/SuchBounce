#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void vstep(__global float3 *v,					
					__global float3 *accel,
					__global float *F_track)
					
		{
			int x = get_global_id(0);
			v[x] += 0.5f*accel[x];	
			F_track[3] =  maxmag(F_track[3],length(v[x]));							
		}

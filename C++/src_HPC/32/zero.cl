#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void zeroer(__global float3 *accel,
					__global float *V)		

		{	
			int x = get_global_id(0);
			accel[x] = (0.0f, 0.0f, 0.0f);			
			V[x] = 0.0f;
		}
#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void zeroer(__global float3 *accel,
					__global float *V)		

		{	
			int x = get_global_id(0);
			accel[x] = (0,0,0);			
			V[x] = 0;
		}

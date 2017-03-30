#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void NN_accel(__global double3 *accel,
					__global double3 *accelNN)
		{
			int x = get_global_id(0);											
			accel[x] += accelNN[x];
		}	

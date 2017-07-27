#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void zeroer(__global double3 *accel,
					__global double *V)		

		{	
			int x = get_global_id(0);
			//accel[x] = (0.0, 0.0, 0.0);
			accel[x].x = 0.0;
			accel[x].y = 0.0;
			accel[x].z = 0.0;
			//accel[x] -= accel[x];			
			V[x] = 0.0;
		}

#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void vstep(__global float3 *v,					
					__global float3 *accel,
					__global float *F_track)
					
		{
			int x = get_global_id(0);
			//v[x].x += 0.5*accel[x].x;
			//v[x].y += 0.5*accel[x].y;
			//v[x].z += 0.5*accel[x].z;	
			v[x] += 0.5f*accel[x];
			F_track[3] =  maxmag(F_track[3],length(v[x]));							
		}

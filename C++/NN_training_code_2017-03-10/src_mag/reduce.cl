#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void red(__global double3 *rddp,
					__global double3 *accel,
					__global const double *m,
					__global const double *rad,
					__global const int *n,
					__global double *V,
					__global double *Vpart,
					__global double *Internal,
					__global double *Ipart)
		{
			int x = get_global_id(0);			
									
			for (int i = 0; i < n[1]-1; i++)					
			{				
					Internal[x] += Ipart[i+(n[1]-1)*x];				
					V[x] += Vpart[i+(n[1]-1)*x];				
					accel[x] += rddp[i+(n[1]-1)*x]/m[i];				
			}
				
		}	

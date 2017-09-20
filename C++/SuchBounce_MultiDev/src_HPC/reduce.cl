#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void red(__global double3 *rddp,
					__global double3 *oddp,
					__global double3 *accel,
					__global double3 *alpha,
					__global const int *b,
					__global const double *m,
					__global const double *I,
					__global const double *rad,
					__global const int *n,
					__global double *V,
					__global double *Vpart,
					__global double *Internal,
					__global double *Ipart)
		{
			int x = get_global_id(0);			
									
			for (int c = 0; c < n[1]; c++)					
			{	
				float flag = b[c+n[1]*x];
				if (b[c+n[1]*x] != 0)
				{
					Internal[x] += Ipart[abs(b[c+n[1]*x])-1];				
					V[x] += 0.5*Vpart[abs(b[c+n[1]*x])-1];				
					accel[x] -= sign(flag)*rddp[abs(b[c+n[1]*x])-1]/m[x];					
					alpha[x] += oddp[abs(b[c+n[1]*x])-1]/I[x];	
				}			
			}
				
		}	

#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void red(__global float3 *rddp,
					__global float3 *oddp,
					__global float3 *accel,
					__global float3 *alpha,
					__global const int *b,
					__global const float *m,
					__global const float *I,
					__global const float *rad,
					__global const int *n,
					__global float *V,
					__global float *Vpart,
					__global float *Internal,
					__global float *Ipart)
		{
			int x = get_global_id(0);			
									
			for (int c = 0; c < n[1]; c++)					
			{	
				float flag = b[c+n[1]*x];
				if (b[c+n[1]*x] != 0)
				{
					Internal[x] += Ipart[abs(b[c+n[1]*x])-1];				
					V[x] += 0.5f*Vpart[abs(b[c+n[1]*x])-1];				
					accel[x] -= sign(flag)*rddp[abs(b[c+n[1]*x])-1]/m[x];					
					alpha[x] += oddp[abs(b[c+n[1]*x])-1]*rad[x]/I[x];	
				}			
			}
				
		}	

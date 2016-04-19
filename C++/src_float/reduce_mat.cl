#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void red(__global float3 *rddp,
					__global float3 *oddp,
					__global float3 *accel,
					__global float3 *alpha,
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
									
			Internal[x] = Ipart[n[1]*x];
			Ipart[n[1]*x] = 0;
			V[x] = 0.5*Vpart[n[1]*x];
			Vpart[n[1]*x] = 0;				
			accel[x] = rddp[n[1]*x]/m[x];
			rddp[n[1]*x] = (0.0, 0.0, 0.0);					
			alpha[x] = oddp[n[1]*x]*rad[x]/I[x];
			oddp[n[1]*x] = (0.0, 0.0, 0.0);	
				
		}	

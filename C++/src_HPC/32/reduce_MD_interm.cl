#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void red_copy(__global float3 *rddp,
					__global float3 *oddp,
					__global float3 *accelsum,
					__global float3 *alphasum,
					__global const int *n,
					__global float *Vsum,
					__global float *Vpart,
					__global float *Internalsum,
					__global float *Ipart,
					__global const int *offset)
		{
			int x = get_global_id(0);
			int n_2 = n[2]; //get_global_size(0)*2/n[3];		
			int row = n_2*((offset[0]/n_2));
			int column = offset[0] - row;
			row += n_2*x;						
			Internalsum[row+column] = Ipart[n[4]*x];
			Ipart[n[4]*x] = 0.0f;
			Vsum[row+column] = Vpart[n[4]*x];
			Vpart[n[4]*x] = 0.0f;				
			accelsum[row+column] = rddp[n[4]*x];
			rddp[n[4]*x] = (0.0f, 0.0f, 0.0f);					
			alphasum[row+column] = oddp[n[4]*x];
			oddp[n[4]*x] = (0.0f, 0.0f, 0.0f);	
				
		}	

#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void red_copy(__global double3 *rddp,
					__global double3 *oddp,
					__global double3 *accelsum,
					__global double3 *alphasum,
					__global const int *n,
					__global double *Vsum,
					__global double *Vpart,
					__global double *Internalsum,
					__global double *Ipart,
					__global const short *offset)
		{
			int x = get_global_id(0);			
			
			int row_offset = 128*floor(offset[1]/(n[1]))
			int column_offset = offset[1] - row_offset/128;						
			Internalsum[n[1]*(x+row_offset)+column_offset] = Ipart[128*x];
			Ipart[128*x] = 0;
			Vsum[x+offsets[0]] = Vpart[128*x];
			Vpart[128*x] = 0;				
			accelsum[x+offsets[0]] = rddp[128*x];
			rddp[128*x] = (0.0, 0.0, 0.0);					
			alphasum[x+offsets[0]] = oddp[128*x];
			oddp[128*x] = (0.0, 0.0, 0.0);	
				
		}	

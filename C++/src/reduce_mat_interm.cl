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
					__global const int *offset)
		{
			int x = get_global_id(0);			
			int row = n[2]*((offset[0]/n[2]));
			int column = offset[0] - row;
			row += n[2]*x;						
			Internalsum[row+column] = Ipart[128*x];
			Ipart[128*x] = 0;
			Vsum[row+column] = Vpart[128*x];
			Vpart[128*x] = 0;				
			accelsum[row+column] = rddp[128*x];
			rddp[128*x] = (0.0, 0.0, 0.0);					
			alphasum[row+column] = oddp[128*x];
			oddp[128*x] = (0.0, 0.0, 0.0);	
				
		}	

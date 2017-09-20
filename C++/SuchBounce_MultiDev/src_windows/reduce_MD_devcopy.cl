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
			int n_2 = n[2]; 	
			int row = n_2*((offset[0]/n_2));
			int column = offset[0] - row;
			row += n_2*x;						
			Internalsum[row+column] = Ipart[row+column];			
			Vsum[row+column] = Vpart[row+column];							
			accelsum[row+column] = rddp[row+column];						
			alphasum[row+column] = oddp[row+column];					
		}	

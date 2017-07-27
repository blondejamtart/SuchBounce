#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void red_pair(__global double3 *rddp,
					__global double3 *oddp,		
					__global int *n,				
					__global double *Vpart,
					__global double *Ipart,
					__global double *pheremone_part)
		{
			int i = get_global_id(0);
			int n_2 = get_global_size(0)*2/n[3];
				
			int a = n[1]*(((2*i)/n_2));
			int x = i-0.5*n_2*a/n[1];							
				
			rddp[a+x] += rddp[a+n_2-x-1];
			rddp[a+n_2-x-1] = (0.0,0.0,0.0);

			oddp[a+x] += oddp[a+n_2-x-1];
			oddp[a+n_2-x-1] = (0.0,0.0,0.0);

			Ipart[a+x] += Ipart[a+n_2-x-1];
			Ipart[a+n_2-x-1] = 0.0;

			Vpart[a+x] += Vpart[a+n_2-x-1];
			Vpart[a+n_2-x-1] = 0.0;	
			
			pheremone_part[a+x] += pheremone_part[a+n_2-x-1];
			pheremone_part[a+n_2-x-1] = 0.0; 										
				
		}	

#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void red_pair(__global double3 *rddp,
					__global double3 *oddp,		
					__global int *n,				
					__global double *Vpart,
					__global double *Ipart)
		{
			int i = get_global_id(0);
				
			int a = n[1]*(floor(2.0*i/n[2]));
			int x = i-0.5*n[2]*a/n[1];							
				
			rddp[a+x] += rddp[a+n[2]-x-1];
			rddp[a+n[2]-x-1] = (0,0,0);

			oddp[a+x] += oddp[a+n[2]-x-1];
			oddp[a+n[2]-x-1] = (0,0,0);

			Ipart[a+x] += Ipart[a+n[2]-x-1];
			Ipart[a+n[2]-x-1] = 0;

			Vpart[a+x] += Vpart[a+n[2]-x-1];
			Vpart[a+n[2]-x-1] = 0;											
				
		}	

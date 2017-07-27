#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void comms(__global double3 *r,
					__global const double *rad,		
					__global int *gespielt,						
					__global double *q,					
					__global int *n,
					__global const double *ranges,
					__global int *opponent,
					__global int *genes,
					__global double *pheremones)
					
		{
			int x = get_global_id(0);		
			double signal = 0.0;			
			
			if (gespielt[x] == 0 && genes[x] != 0)
			{
				opponent[x] = -1;
				//double d_choice = ranges[0]; //rad[x]; // //CHANGE TACTIC HERE AND BELOW
				double last_optimality = 0.001;//exp(-1.0*pow((0.5*ranges[0])/(rad[x]+rad[i]),2.0)); // initialise "last optimality" to least optimal value in expected range

				int n_range = 0;
				int n_range_choice = 1;
				//int test_choice = 1;
						
				for (int i = 0; i < n[5]; i++)
				{										
					double d = distance(r[x],r[i]);
					//if ((i != x) && (d < ranges[0]) && d > (rad[x] + rad[i]))// random
					if ((i != x) && (d < ranges[0]) && d > (rad[x] + rad[i]) && (genes[x] != genes[i]) && genes[i] != 0)//genetic
					{						
						double optimality =  pow(pheremones[x],-1.0)*exp(-1.0*pow((d-0.5*ranges[0])/(rad[x]+rad[i]),2.0));//CHANGE TACTIC HERE AND ABOVE

						if ((optimality > last_optimality) && (gespielt[i] == 0))			
						{
							last_optimality = optimality;							
							n_range_choice = n_range;						
							opponent[x] = i;											
						}
					}
				}
			}
		}
			

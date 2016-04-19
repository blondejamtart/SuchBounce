#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void comms(__global double3 *r,
					__global double *rad,		
					__global int *gespielt,						
					__global double *q,
					__global int *trig,
					__global int *n,
					__global double *ranges,
					__global int *opponent)
					
		{
			int x = get_global_id(0);				
			int n_crit = 1024; // set to 0 to force strategy #2, >= n to force strategy #1
			double d_crit = 4*rad[x];
			double signal = 0;
			int n_range = 0;
			
			for (int i = 0; i < n[1]; i++)
			{
				double d = distance(r[x],r[i]);
				if (i != x && d < d_crit)
				{
					n_range++;					
				}
				
			}			
			
			double d_choice = 0; //tactic #2
			opponent[x] = -1;
			if (n_range < n_crit) {double d_choice = ranges[0];} //tactic #1
						
			if (gespielt[x] == 0)
			{			
				for (int i = 0; i < n[1]; i++)
				{
					double d = distance(r[x],r[i]);
					bool candidate = 0;
					if  (n_range < n_crit) { candidate = (i != x && d > 1.01*(rad[x] + rad[i]) && d < ranges[0] && d < d_choice && gespielt[i] == 0); } //tactic #1
					else { candidate =  (i != x && d > 1.01*(rad[x] + rad[i]) && d < ranges[0] && d > d_choice && gespielt[i] == 0); }  //tactic #2
					if (candidate)					
					{
						d_choice = d;						
						opponent[x] = i;					
					}
				}
			}
		}	

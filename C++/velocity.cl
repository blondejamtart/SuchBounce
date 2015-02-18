__kernel void vstep(__global double3 *v,					
					__global double3 *accel)
					
		{
			int x = get_global_id(0);
			v[x] += 0.5*accel[x];	
			//F_track[3] =  maxmag(F_track[3],length(v[x]));							
		}
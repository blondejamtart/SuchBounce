
__kernel void rstep(__global const double *stuff,					
					__global double3 *r,
					__global double3 *v)
		{
			int x = get_global_id(0);						
			r[x] += (v[x]*stuff[0]);			
		}

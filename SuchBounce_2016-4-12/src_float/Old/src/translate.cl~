
__kernel void rmove(__global double3 *r)
		{
			int x = get_global_id(0);
			r[x+1] += -r[0];
		}

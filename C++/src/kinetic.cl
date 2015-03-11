
__kernel void Tstep(__global double3 *v,			
					__global double3 *w,
					__global double *Tv,
					__global double *Tw,
					__global const double *m,
					__global const double *I)
		{
			int x = get_global_id(0);
			Tv[x] = 0.5*m[x]*dot(v[x],v[x]);
			Tw[x] = 0.5*I[x]*dot(w[x],w[x]);									
		}

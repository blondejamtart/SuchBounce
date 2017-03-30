#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void Fimp(__global const double *q,			
				 	__global const double *m,				  
				  	__global const double *I,
				  	__global const int *k,
					__global const int *l,					  	 				  	 
				 	__global const double *rad,	
				 	__global double *stuff,			  
				 	__global double3 *r,
				 	__global double3 *v,
				 	__global double3 *w,
					__global double3 *rddp,
					__global double3 *oddp,
					__global double *Vpart,
					__global double *Ipart,
					__global double *F_track)
					
				  
		{ 			
			int x = get_global_id(0);
			int a = k[x];
			int b = l[x];
			double3 r_a = r[a], r_b = r[b], v_a = v[a], v_b = v[b];
			double m_a = m[a], m_b = m[b], t_step = stuff[0];
		   	double G = stuff[6];			
			double 	d = distance(r_a,r_b);			
		 	double3 Runit = normalize(r_a - r_b);				
			double 	p = dot(vtemp,Runit);
	
			Vpart[x] = (-(m_a*m_b*G))/d;			
			double 	F = -Vpart[x]/d;
			double 	dF = -2.0*F*p/d;			

			F_track[1] = maxmag(F_track[1],F);
			
			double j = (F*t_step+0.5*dF*t_step*t_step);
			
			rddp[x] = j*Runit; 
			oddp[x] = 0.0;		

			Ipart[x] = 0.0;				
		}

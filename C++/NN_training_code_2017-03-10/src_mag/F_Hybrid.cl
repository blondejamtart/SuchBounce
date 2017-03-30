#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void Fimp(__global const double *q,			
				 	__global const double *m,
				  	__global const int *k,
					__global const int *l,					  	 				  	 
				 	__global const double *rad,	
				 	__global double *stuff,			  
				 	__global double3 *r_fixed,
					__global double3 *r_controlled,
				 	__global double3 *v,
					__global double3 *rddp,
					__global double *Vpart,
					__global double *Ipart)
					
				  
		{ 			
			int x = get_global_id(0);
			int a = k[x];
			int b = l[x];
			double3 r_a = r_controlled[a], r_b = r_fixed[b], v_a = v[a];			
			double rad_a = rad[a], rad_b = rad[b], q_a = q[a], q_b = q[b], m_a = m[a], m_b = m[b], t_step = stuff[0];
		   	double G = stuff[6];
			double e0 = stuff[7];
			double 	d = distance(r_a,r_b);
			double 	d0 = distance((r_a-v_a*0.5*t_step),(r_b));
		 	double3 Runit = normalize(r_a - r_b);	
			double3 vtemp =  v_a; 
			double 	p = dot(vtemp,Runit);
			double 	p0 = dot(vtemp,normalize((r_a-v_a*0.5*t_step)-r_b));		
			double 	collisionflag = step(d0,(rad_a+rad_b));

			double 	cut_off = (rad_a+rad_b) + 0.01*min(rad_a,rad_b);
			double 	hard_rad = (rad_a+rad_b) - 0.005*min(rad_a,rad_b);		
			double 	fplus = 1/(pow(d,2) - pow((rad_a+rad_b),2));		
			double 	fminus = 1/(pow(d,2) - pow((rad_b-rad_a),2));
			double 	fpe = 1/(pow(cut_off,2) - pow((rad_a+rad_b),2));		
			double 	fme = 1/(pow(cut_off,2) - pow((rad_b-rad_a),2));					
					
			Vpart[x] = (-(m_a*m_b*G)+(q_a*q_b*e0))/d;			
			double 	F = -Vpart[x]/d;
			double 	dF = -2*F*p/d;		

			if (d > cut_off) 
			{
				Vpart[x] -= (1.0/6.0)*stuff[2]*(2*rad_a*rad_b*(fplus+fminus)-log(fplus)+log(fminus));
				F -= (1.0/3.0)*stuff[2]*d*(fplus-fminus-2*rad_a*rad_b*(pow(fplus,2)+pow(fminus,2)));
					
			}
			else 
			{
				Vpart[x] -= ((1.0/6.0)*stuff[2]*(cut_off*(fpe-fme-2*rad_a*rad_b*(pow(fpe,2)+pow(fme,2)))*pow((d-hard_rad),2)/(cut_off-hard_rad) + (2*rad_a*rad_b*(fpe+fme)-log(fpe)+log(fme)) - cut_off*(fpe-fme-2*rad_a*rad_b*(pow(fpe,2)+pow(fme,2)))*(cut_off-hard_rad)));
				F -=  ((1.0/3.0)*stuff[2]*cut_off*(fpe-fme-2*rad_a*rad_b*(pow(fpe,2)+pow(fme,2))))*(d-hard_rad)/(cut_off-hard_rad);
				
			}

			double3 v_rel = (vtemp - p*Runit) ;				
			
			double dt = fmax((t_step-(d0-rad_a-rad_b)/p0)*step((d0-rad_a-rad_b)/p0,t_step)*step(0,(d0-rad_a-rad_b)/p0),0);
			
			double j = (F*t_step+0.5*dF*t_step*t_step)-m_a*m_b/(m_a+m_b)*(collisionflag*(stuff[1]*p0*(t_step-dt)+stuff[8]*(rad_a+rad_b-d0)*(t_step-dt)+0.5*stuff[8]*p0*(t_step-dt)*(t_step-dt))-(collisionflag-1)*(stuff[1]*p0*dt+0.5*stuff[8]*p0*dt*dt));
				
			double jf = collisionflag*length(v_rel)/((1/m_a+1/m_b));			
			double fdyn = (F*t_step + 0.5*dF*t_step*t_step);
			if (jf > fdyn*stuff[4]){jf = fdyn*stuff[5];}			
			rddp[x] = -(j*Runit - collisionflag*step(0,jf)*jf*normalize(v_rel)); 			
			Ipart[x] = 0.25*collisionflag*m_a*m_b/(m_a+m_b)*stuff[8]*pow((rad_a+rad_b-d0),2);				
		}

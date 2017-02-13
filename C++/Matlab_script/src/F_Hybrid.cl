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
			double rad_a = rad[a], rad_b = rad[b], q_a = q[a], q_b = q[b], m_a = m[a], m_b = m[b], t_step = (stuff[0]);
		   	double G = stuff[6];
			double e0 = stuff[7];
			double 	d = distance(r_a,r_b);
			double 	d0 = distance((r_a-v_a*0.5*t_step),(r_b-v_b*0.5*t_step));
		 	double3 Runit = normalize(r_a - r_b);			
			double3 wvec = w[a]*rad_a + w[b]*rad_b;
			double3 vtemp = v_b - v_a; 
			double 	p = dot(vtemp,Runit);
			double 	p0 = dot(vtemp,normalize((r_a-v_a*0.5*t_step)-(r_b-v_b*0.5*t_step)));		
			int 	collisionflag = step(d0,(rad_a+rad_b));

			double 	cut_off = (rad_a+rad_b) + 0.01*min(rad_a,rad_b);
			double 	hard_rad = (rad_a+rad_b) - 0.01*min(rad_a,rad_b);		
			double 	fplus = 1.0/(pow(d,2.0) - pow((rad_a+rad_b),2.0));		
			double 	fminus = 1.0/(pow(d,2.0) - pow((rad_b-rad_a),2.0));
			double 	fpe = 1.0/(pow(cut_off,2.0) - pow((rad_a+rad_b),2.0));		
			double 	fme = 1.0/(pow(cut_off,2.0) - pow((rad_b-rad_a),2.0));					
					
			double  Vtemp = (-(m_a*m_b*G)+(q_a*q_b*e0))/d;			
			double 	F = (((m_a*m_b*G) - (q_a*q_b*e0))/(d*d));
			double 	dF = ((-2*(m_a*m_b*G) + 2*(q_a*q_b*e0))/(d*d*d))*p;	
			double  F_VdW = 0.0;
		

			if (d > cut_off) 
			{
				Vtemp -= (1.0/6.0)*stuff[2]*(2*rad_a*rad_b*(fplus+fminus)-log(fplus)+log(fminus));
				F_VdW = -(1.0/3.0)*stuff[2]*d*(fplus-fminus-2*rad_a*rad_b*(pow(fplus,2)+pow(fminus,2)));
						
			}
			else 
			{
				Vtemp -= ((1.0/6.0)*stuff[2]*(cut_off*(fpe-fme-2*rad_a*rad_b*(pow(fpe,2)+pow(fme,2)))*pow((d-hard_rad),2)/(cut_off-hard_rad) + (2*rad_a*rad_b*(fpe+fme)-log(fpe)+log(fme)) - cut_off*(fpe-fme-2*rad_a*rad_b*(pow(fpe,2)+pow(fme,2)))*(cut_off-hard_rad)));
				F_VdW =  -((1.0/3.0)*stuff[2]*cut_off*(fpe-fme-2*rad_a*rad_b*(pow(fpe,2)+pow(fme,2))))*(d-hard_rad)/(cut_off-hard_rad);
			}

			F_track[1] = maxmag(F_track[1],F);			

			double3 v_rel = (vtemp - p*Runit) - cross(wvec,Runit);				
			double t_sign = t_step/fabs(t_step);
			double dt = fmax((fabs(t_step)-(d0-rad_a-rad_b)/p0)*step((d0-rad_a-rad_b)/p0,fabs(t_step))*step(0,(d0-rad_a-rad_b)/p0),0);
						
			double j = ((F+F_VdW)*t_step+0.5*dF*t_step*t_step)-m_a*m_b/(m_a+m_b)*(collisionflag*(stuff[1]*p0*(fabs(t_step)-dt)*t_sign+stuff[8]*(rad_a+rad_b-d0)*(fabs(t_step)-dt)*t_sign+0.5*stuff[8]*p0*((fabs(t_step)-dt))*(fabs(t_step)-dt))-(collisionflag-1)*(stuff[1]*p0*dt*t_sign+0.5*stuff[8]*p0*dt*dt));
			
			double jf = collisionflag*length(v_rel)/((pow(rad_a,2)/I[a]+pow(rad_b,2)/I[b])+(1/m_a+1/m_b));		
			
			
			double fdyn = (F*t_step + 0.5*dF*t_step*t_step);
			if (fabs(jf) > fabs(fdyn*stuff[4])){jf = fdyn*stuff[5];}
			
			
			rddp[x] = (j*Runit - (collisionflag*step(0,jf)*jf)*normalize(v_rel)); 
			oddp[x] = cross(Runit,(step(0,jf)*jf)*v_rel)*rad[a];	
			Ipart[x] = 0.25*collisionflag*m_a*m_b/(m_a+m_b)*stuff[8]*pow((rad_a+rad_b-d0),2);			
			Vpart[x] = Vtemp;	
			
		}

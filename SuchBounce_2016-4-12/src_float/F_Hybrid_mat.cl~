#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void Fimp(__global const float *q,			
				 	__global const float *m,				  
				  	__global const float *I,
				  	__global const int *k,
					__global const int *l,			  	 				  	 
				 	__global const float *rad,	
				 	__global float *stuff,			  
				 	__global float3 *r,
				 	__global float3 *v,
				 	__global float3 *w,
					__global float3 *accel_part_lower,
					__global float3 *alpha_part_lower,
					__global float3 *accel_part_upper,
					__global float3 *alpha_part_upper,
					__global float *Vpart_lower,
					__global float *Ipart_lower,
					__global float *Vpart_upper,
					__global float *Ipart_upper,
					__global float *F_track,
					__global const int *n,
					__global const int *offset)
					
				  
		{ 			
			int x = get_global_id(0) + offset[0];
			int a = k[x];
			int b = l[x];
			float3 r_a = r[a], r_b = r[b], v_a = v[a], v_b = v[b];
			float rad_a = rad[a], rad_b = rad[b], q_a = q[a], q_b = q[b], m_a = m[a], m_b = m[b], t_step = stuff[0];
		   	float G = stuff[6];
			float e0 = stuff[7];
			float 	d = distance(r_a,r_b);
			float 	d0 = distance((r_a-v_a*0.5f*t_step),(r_b-v_b*0.5f*t_step));
		 	float3 Runit = normalize(r_a - r_b);			
			float3 wvec = w[a]*rad_a + w[b]*rad_b;
			float3 vtemp = v_b - v_a; 
			float 	p = dot(vtemp,Runit);
			float 	p0 = dot(vtemp,normalize((r_a-v_a*0.5f*t_step)-(r_b-v_b*0.5f*t_step)));		
			float 	collisionflag = step(d0,(rad_a+rad_b));

			float 	cut_off = (rad_a+rad_b) + 0.01f*min(rad_a,rad_b);
			float 	hard_rad = (rad_a+rad_b) - 0.005f*min(rad_a,rad_b);		
			float 	fplus = 1/(pow(d,2) - pow((rad_a+rad_b),2));		
			float 	fminus = 1/(pow(d,2) - pow((rad_b-rad_a),2));
			float 	fpe = 1/(pow(cut_off,2) - pow((rad_a+rad_b),2));		
			float 	fme = 1/(pow(cut_off,2) - pow((rad_b-rad_a),2));					
					
			float  Vtemp = (-(m_a*m_b*G)+(q_a*q_b*e0))/d;			
			float 	F = (((m_a*m_b*G) - (q_a*q_b*e0))/(d*d));
			float 	dF = ((-2*(m_a*m_b*G) + 2*(q_a*q_b*e0))/(d*d*d))*p;	
		

			if (d > cut_off) 
			{
				Vtemp -= (1.0f/6.0f)*stuff[2]*(2*rad_a*rad_b*(fplus+fminus)-log(fplus)+log(fminus));
				F -= (1.0f/3.0f)*stuff[2]*d*(fplus-fminus-2*rad_a*rad_b*(pow(fplus,2)+pow(fminus,2)));
			}
			else 
			{
				Vtemp -= ((1.0f/6.0f)*stuff[2]*(cut_off*(fpe-fme-2*rad_a*rad_b*(pow(fpe,2)+pow(fme,2)))*pow((d-hard_rad),2)/(cut_off-hard_rad) + (2*rad_a*rad_b*(fpe+fme)-log(fpe)+log(fme)) - cut_off*(fpe-fme-2*rad_a*rad_b*(pow(fpe,2)+pow(fme,2)))*(cut_off-hard_rad)));
				F -=  ((1.0f/3.0f)*stuff[2]*cut_off*(fpe-fme-2*rad_a*rad_b*(pow(fpe,2)+pow(fme,2))))*(d-hard_rad)/(cut_off-hard_rad);
			}

			F_track[1] = maxmag(F_track[1],F);

			float3 v_rel = (vtemp - p*Runit) - cross(wvec,Runit);				
			
			float dt = fmax((t_step-(d0-rad_a-rad_b)/p0)*step((d0-rad_a-rad_b)/p0,t_step)*step(0,(d0-rad_a-rad_b)/p0),0);
			
			float j = (F*t_step+0.5f*dF*t_step*t_step)-m_a*m_b/(m_a+m_b)*(collisionflag*(stuff[1]*p0*(t_step-dt)+stuff[8]*(rad_a+rad_b-d0)*(t_step-dt)+0.5*stuff[8]*p0*(t_step-dt)*(t_step-dt))-(collisionflag-1)*(stuff[1]*p0*dt+0.5f*stuff[8]*p0*dt*dt));
				
			float jf = collisionflag*length(v_rel)/((pow(rad_a,2)/I[a]+pow(rad_b,2)/I[b])+(1/m_a+1/m_b));
			
			float fdyn = (F*t_step + 0.5f*dF*t_step*t_step);
			if (jf > fdyn*stuff[4]){jf = fdyn*stuff[5];}
			
			int a_sub = a - 128*(a/128);
			int b_sub = b - 128*(b/128);
			accel_part_lower[a_sub*128+b_sub] = -(j*Runit - collisionflag*step(0,jf)*jf*normalize(v_rel)); 
			alpha_part_lower[a_sub*128+b_sub] = cross(Runit,step(0,jf)*jf*v_rel);			
			
			accel_part_upper[b_sub*128+a_sub] = (j*Runit - collisionflag*step(0,jf)*jf*normalize(v_rel)); 
			alpha_part_upper[b_sub*128+a_sub] = cross(Runit,step(0,jf)*jf*v_rel);	

			Ipart_lower[a_sub*128+b_sub] = 0.25f*collisionflag*m_a*m_b/(m_a+m_b)*stuff[8]*pow((rad_a+rad_b-d0),2);
			Vpart_lower[a_sub*128+b_sub] = Vtemp;	
			
			Ipart_upper[b_sub*128+a_sub] = 0.25f*collisionflag*m_a*m_b/(m_a+m_b)*stuff[8]*pow((rad_a+rad_b-d0),2);
			Vpart_upper[b_sub*128+a_sub] = Vtemp;	


			
		}

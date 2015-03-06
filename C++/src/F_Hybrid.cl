#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void Fimp(__global const double *q,			
				 	__global const double *m,				  
				  	__global const double *I,
				  	__global const int *k,
					__global const int *l,					  	 				  	 
				 	__global const double *rad,	
				 	__global const double *stuff,			  
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
		   	double G = stuff[6];
			double e0 = stuff[7];
			double 	d = distance(r[a],r[b]);
			double 	d0 = distance((r[a]-v[a]*0.5*stuff[0]),(r[b]-v[b]*0.5*stuff[0]));
		 	double3 Runit = normalize(r[a] - r[b]);			
			double3 wvec = w[a]*rad[a] + w[b]*rad[b];
			double3 vtemp = v[b] - v[a]; 
			double 	p = dot(vtemp,Runit);
			double 	p0 = dot(vtemp,normalize((r[a]-v[a]*0.5*stuff[0])-(r[b]-v[b]*0.5*stuff[0])));		
			double 	collisionflag = step(d0,(rad[a]+rad[b]));

			double 	cut_off = 1.01*(rad[a]+rad[b]);
			double 	hard_rad = 0.99*(rad[a]+rad[b]);	
			double 	fplus = 1/(pow(d,2) - pow((rad[a]+rad[b]),2));		
			double 	fminus = 1/(pow(d,2) - pow((rad[b]-rad[a]),2));
			double 	fpe = 1/(pow(cut_off,2) - pow((rad[a]+rad[b]),2));		
			double 	fme = 1/(pow(cut_off,2) - pow((rad[b]-rad[a]),2));					
					
			Vpart[x] = (-(m[a]*m[b]*G)+(q[a]*q[b]*e0))/d;			
			double 	F = (((m[a]*m[b]*G) - (q[a]*q[b]*e0))/(d*d));
			double 	dF = ((-2*(m[a]*m[b]*G) + 2*(q[a]*q[b]*e0))/(d*d*d))*p;	
		

			if (d > cut_off) 
			{
				Vpart[x] -= (1.0/6.0)*stuff[2]*(2*rad[a]*rad[b]*(fplus+fminus)-log(fplus)+log(fminus));
				F -= (1.0/3.0)*stuff[2]*d*(fplus-fminus-2*rad[a]*rad[b]*(pow(fplus,2)+pow(fminus,2)));
				//dF -= (1.0/3.0)*stuff[2]*((fplus-fminus-2*rad[a]*rad[b]*(pow(fplus,2)+pow(fminus,2)))+2*pow(d,2)*(4*rad[a]*rad[b]*(pow(fplus,3)+pow(fminus,3))+pow(fminus,2)-pow(fplus,2)))*p; 		
			}
			else 
			{
				Vpart[x] -= ((1.0/6.0)*stuff[2]*cut_off*(fpe-fme-2*rad[a]*rad[b]*(pow(fpe,2)+pow(fme,2))))*(pow((d-hard_rad),2)/(cut_off-hard_rad) - (cut_off-hard_rad)) + (1.0/6.0)*stuff[2]*(2*rad[a]*rad[b]*(fpe+fme)-log(fpe)+log(fme));
				F -=  ((1.0/3.0)*stuff[2]*cut_off*(fpe-fme-2*rad[a]*rad[b]*(pow(fpe,2)+pow(fme,2))))*(d-hard_rad)/(cut_off-hard_rad);
				//dF -= ((1.0/3.0)*stuff[2]*cut_off*(fpe-fme-2*rad[a]*rad[b]*(pow(fpe,2)+pow(fme,2))))*p/(cut_off-hard_rad);
			}


			double3 v_rel = (vtemp - p*Runit) - cross(wvec,Runit);				
			
			double dt = fmax((stuff[0]-(d0-rad[a]-rad[b])/p0)*step((d0-rad[a]-rad[b])/p0,stuff[0])*step(0,(d0-rad[a]-rad[b])/p0),0);
			
			double j = (F*stuff[0]+0.5*dF*stuff[0]*stuff[0])-m[a]*m[b]/(m[a]+m[b])*(collisionflag*(stuff[1]*p0*(stuff[0]-dt)+stuff[8]*(rad[a]+rad[b]-d0)*(stuff[0]-dt)+0.5*stuff[8]*p0*(stuff[0]-dt)*(stuff[0]-dt))-(collisionflag-1)*(stuff[1]*p0*dt+0.5*stuff[8]*p0*dt*dt));
				
			double jf = collisionflag*length(v_rel)/((pow(rad[a],2)/I[a]+pow(rad[b],2)/I[b])+(1/m[a]+1/m[b]));
			
			double fdyn = (F*stuff[0] + 0.5*dF*stuff[0]*stuff[0]);
			if (jf > fdyn*stuff[4]){jf = fdyn*stuff[5];}			
			rddp[x] = j*Runit - collisionflag*step(0,jf)*jf*normalize(v_rel); 
			oddp[x] = cross(Runit,step(0,jf)*jf*v_rel);			
			

			Ipart[x] = 0.25*collisionflag*m[a]*m[b]/(m[a]+m[b])*stuff[8]*pow((rad[a]+rad[b]-d0),2);	

			F_track[1] = maxmag(F_track[1],F);			

						
		}

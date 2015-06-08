import OpenCL
const cl = OpenCL
ask = bool(0);

dev_list = cl.devices();
if ask
	print("Select device for computations:\r\n")
	for x = 1:length(dev_list)
		write(STDOUT,[string(x) ": "  string(dev_list[x])  "\r\n"])
	end
	n_choice = int64(readline(STDIN));
else
	n_choice = 1;
end

dev = dev_list[n_choice];
ctx = cl.Context(dev);
queue = cl.CmdQueue(ctx); 


const F_kernels = ["" "" ""];

#// Hybrid (no grad)
F_kernels[2] = "
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
					__global double *Ipart)
					
				  
		{ 			
			int x = get_global_id(0);
			int a = k[x] - 1;
			int b = l[x] - 1;
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

			double 	cut_off = (rad[a]+rad[b]) + 0.01*min(rad[a],rad[b]);
			double 	hard_rad = (rad[a]+rad[b]) - 0.005*min(rad[a],rad[b]);	
			double 	fplus = 1/(pow(d,2) - pow((rad[a]+rad[b]),2));		
			double 	fminus = 1/(pow(d,2) - pow((rad[b]-rad[a]),2));
			double 	fpe = 1/(pow(cut_off,2) - pow((rad[a]+rad[b]),2));		
			double 	fme = 1/(pow(cut_off,2) - pow((rad[b]-rad[a]),2));					
					
			Vpart[x] = (-(m[a]*m[b]*G)+(q[a]*q[b]*e0))/d;			
			double 	F = (((m[a]*m[b]*G) - (q[a]*q[b]*e0))/(d*d));			

			if (d > cut_off) 
			{
				Vpart[x] -= (1.0/6.0)*stuff[2]*(2*rad[a]*rad[b]*(fplus+fminus)-log(fplus)+log(fminus));
				F -= (1.0/3.0)*stuff[2]*d*(fplus-fminus-2*rad[a]*rad[b]*(pow(fplus,2)+pow(fminus,2)));
			}
			else 
			{
				Vpart[x] -= ((1.0/6.0)*stuff[2]*(cut_off*(fpe-fme-2*rad[a]*rad[b]*(pow(fpe,2)+pow(fme,2)))*pow((d-hard_rad),2)/(cut_off-hard_rad) + (2*rad[a]*rad[b]*(fpe+fme)-log(fpe)+log(fme)) - cut_off*(fpe-fme-2*rad[a]*rad[b]*(pow(fpe,2)+pow(fme,2)))*(cut_off-hard_rad)));
				F -=  ((1.0/3.0)*stuff[2]*cut_off*(fpe-fme-2*rad[a]*rad[b]*(pow(fpe,2)+pow(fme,2))))*(d-hard_rad)/(cut_off-hard_rad);
				
			}


			double3 v_rel = (vtemp - p*Runit) - cross(wvec,Runit);				
			
			double dt = fmax((stuff[0]-(d0-rad[a]-rad[b])/p0)*step((d0-rad[a]-rad[b])/p0,stuff[0])*step(0,(d0-rad[a]-rad[b])/p0),0);
			
			double j = F*stuff[0]-m[a]*m[b]/(m[a]+m[b])*(collisionflag*(stuff[1]*p0*(stuff[0]-dt)+stuff[8]*(rad[a]+rad[b]-d0)*(stuff[0]-dt)+0.5)-(collisionflag-1)*(stuff[1]*p0*dt));
				
			double jf = collisionflag*length(v_rel)/((pow(rad[a],2)/I[a]+pow(rad[b],2)/I[b])+(1/m[a]+1/m[b]));
			
			double fdyn = F*stuff[0];
			if (jf > fdyn*stuff[4]){jf = fdyn*stuff[5];}			
			rddp[x] = j*Runit - collisionflag*step(0,jf)*jf*normalize(v_rel); 
			oddp[x] = cross(Runit,step(0,jf)*jf*v_rel);			
			

			Ipart[x] = 0.25*collisionflag*m[a]*m[b]/(m[a]+m[b])*stuff[8]*pow((rad[a]+rad[b]-d0),2);			
		}
"

#// Hard Spheres	
 F_kernels[1] = "
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
					__global double *Ipart)
					
				  
		{ 			
			int x = get_global_id(0);
			int a = k[x] - 1;
			int b = l[x] - 1;
		   	double G = stuff[6];
			double e0 = stuff[7];
			double d = distance(r[a],r[b]);
		 	double3 Runit = normalize(r[a] - r[b]);
			double3 wvec = w[a]*rad[a] + w[b]*rad[b];
			double3 vtemp = v[a] - v[b]; 
			double p = dot(vtemp,Runit);
		
			double collisionflag = step(d,(rad[a]+rad[b]));

			double c = d + (rad[a]+rad[b]);
			double f = d*(c+rad[a]+rad[b]);					
			
			double F = (((m[a]*m[b]*G) - (q[a]*q[b]*e0))/(d*d)) - (0.33333333)*stuff[2]*c*((f-2*rad[a]*rad[b])/pow(f,2)-(f+6*rad[a]*rad[b])/pow((f+4*rad[a]*rad[b]),2));	
		
			double dF = ((-2*(m[a]*m[b]*G) + 2*(q[a]*q[b]*e0))/(d*d*d) + (0.33333333)*stuff[2]*(((f-2*rad[a]*rad[b])/pow(f,2)-(f+6*rad[a]*rad[b])/pow((f+4*rad[a]*rad[b]),2)) + 2*pow(c,2)*((4*rad[a]*rad[b]-f)/pow(f,3)+(f+8*rad[a]*rad[b])/pow((f+4*rad[a]*rad[b]),3))))*p;			
			
			double3 v_rel = (vtemp - p*Runit) - cross(wvec,Runit);			
			double jf1 = (collisionflag*(-1/((pow(rad[a],2)/I[a] + pow(rad[b],2)/I[b]) + (1/m[a] + 1/m[b]))));						 
			double j =  -(1 + stuff[1])*collisionflag*p/(1/m[a] + 1/m[b]);			
			double fdyn = ((F*stuff[0] + 0.5*dF*stuff[0]*stuff[0]));
			double jf = step(fdyn*stuff[4],jf1)*fdyn*stuff[5]+step(jf1,fdyn*stuff[4])*jf1;			
			rddp[x] = ((1-collisionflag)*(F*Runit*stuff[0] + 0.5*dF*Runit*stuff[0]*stuff[0]) - (j*Runit + jf*v_rel));
			oddp[x] = -cross(Runit,jf*v_rel);
			Vpart[x] = (-(m[a]*m[b]*G)+(q[a]*q[b]*e0))/d - (0.1666666)*stuff[2]*((2*rad[a]*rad[b])*(1/f+1/(f+4*rad[a]*rad[b]))+log(f)-log(f+4*rad[a]*rad[b]));
			Ipart[x] = 0;			
		}
"		

#// Hybrid (Tweaked)
F_kernels[3] = "
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
					__global double *Ipart)
					
				  
		{ 			
			int x = get_global_id(0);
			int a = k[x] - 1;
			int b = l[x] - 1;
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

			double 	cut_off = (rad[a]+rad[b]) + 0.01*min(rad[a],rad[b]);
			double 	hard_rad = (rad[a]+rad[b]) - 0.005*min(rad[a],rad[b]);		
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
				Vpart[x] -= ((1.0/6.0)*stuff[2]*(cut_off*(fpe-fme-2*rad[a]*rad[b]*(pow(fpe,2)+pow(fme,2)))*pow((d-hard_rad),2)/(cut_off-hard_rad) + (2*rad[a]*rad[b]*(fpe+fme)-log(fpe)+log(fme)) - cut_off*(fpe-fme-2*rad[a]*rad[b]*(pow(fpe,2)+pow(fme,2)))*(cut_off-hard_rad)));
//((1.0/6.0)*stuff[2]*cut_off*(fpe-fme-2*rad[a]*rad[b]*(pow(fpe,2)+pow(fme,2))))*(pow((d-hard_rad),2)/(cut_off-hard_rad) - (cut_off-hard_rad)) + (1.0/6.0)*stuff[2]*(2*rad[a]*rad[b]*(fpe+fme)-log(fpe)+log(fme));
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
		}
"
	
if ask
	print("Select kernel:\r\n1. Hard Spheres \r\n2. Hybrid (no grad)\r\n3. Hybrid (Variable hardness)\r\n")
	n_choice = int64(readline(STDIN));
	const F_kernel = F_kernels[n_choice];
else
	const F_kernel = F_kernels[3];
end

#// Position Incrementer
const r_kernel = " 
		#pragma OPENCL EXTENSION cl_khr_fp64 : enable
		__kernel void rstep(__global const double *stuff,					
					__global double3 *r,
					__global double3 *v)
		{
			int x = get_global_id(0);						
			r[x] += (v[x]*stuff[0]);			
		}				
"
#// Velocity Incrementer
const v_kernel = " 
		#pragma OPENCL EXTENSION cl_khr_fp64 : enable
		__kernel void vstep(__global double3 *v,					
					__global double3 *accel)
					
		{
			int x = get_global_id(0);
			v[x] += 0.5*accel[x];							
		}				
"
#// Reduce 
const red_kernel = " 
		#pragma OPENCL EXTENSION cl_khr_fp64 : enable
		__kernel void red(__global double3 *rddp,
					__global double3 *oddp,
					__global double3 *accel,
					__global double3 *alpha,
					__global const char *b,
					__global const double *m,
					__global const double *I,
					__global const double *rad,
					__global const int *n,
					__global double *V,
					__global double *Vpart,
					__global double *Internal,
					__global double *Ipart)
		{
			int x = get_global_id(0);			
			for (int c = 0; c < n[0]; c++)					
			{	
				Internal[x] += b[c+n[0]*x]*b[c+n[0]*x]*Ipart[c];				
				V[x] += 0.5*b[c+n[0]*x]*b[c+n[0]*x]*Vpart[c];				
				accel[x] += b[c+n[0]*x]*rddp[c]/m[x];
				alpha[x] += b[c+n[0]*x]*b[c+n[0]*x]*oddp[c]*rad[x]/I[x];	
			}		
		}	
"

#// Translate positions to be relative to particle 0 (0th zeroed seperately)
const trans_kernel = "
		#pragma OPENCL EXTENSION cl_khr_fp64 : enable
		__kernel void rmove(__global double3 *r)
		{
			int x = get_global_id(0);
			r[x+1] += -r[0];
		}
"

const trans0_kernel = "
		#pragma OPENCL EXTENSION cl_khr_fp64 : enable
		__kernel void rmove0(__global double3 *r)
		{			
			r[0] += -r[0];
		}
"
#// Zeros a vector and scalar		
const zero_kernel = "
		#pragma OPENCL EXTENSION cl_khr_fp64 : enable
		__kernel void zeroer(__global double3 *accel,
					__global double *V)		

		{	
			int x = get_global_id(0);
			accel[x] = (0,0,0);			
			V[x] = 0;
		}
"
#// Calculates kinetic energies
const T_kernel = " 
		#pragma OPENCL EXTENSION cl_khr_fp64 : enable
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

"
#!// ext needs update to mass-dependent spring force or simillar!!!  
const ext_kernel = " 
		#pragma OPENCL EXTENSION cl_khr_fp64 : enable
		__kernel void external(	__global double3 *ext,
					__global double3 *v,
					__global double *m,					
					__global double3 *r,
					__global double *Internal,
					__global double *V,
					__global double *stuff)
		{
			int x = get_global_id(0);
			double3 f = (0,0,0);
			double3 d = (0,0,0);			
			double3 dt = (0,0,0);			
			double3 b = (0,0,0);
			double3 t = (1,1,1);
				
			dt.x = fmax(step((-r[x].x+b.x)/v[x].x,stuff[0])*step(0,(-r[x].x+b.x)/v[x].x)*(stuff[0]-(-r[x].x+b.x)/v[x].x)+step((-r[x].x+t.x)/v[x].x,stuff[0])*step(0,(-r[x].x+t.x)/v[x].x)*(stuff[0]-(-r[x].x+t.x)/v[x].x),0);						
			f.x = (step(r[x].x,b.x)*(r[x].x-b.x)+step(t.x,r[x].x)*(r[x].x-t.x));			
			d.x = (step(r[x].x,b.x)+step(t.x,r[x].x));

			ext[x].x = -stuff[8]*(f.x*(stuff[0]-dt.x)+0.5*(stuff[0]-dt.x)*(stuff[0]-dt.x)*d.x*v[x].x+step(r[x].x,t.x)*step(b.x,r[x].x)*0.5*v[x].x*dt.x*dt.x);

			dt.y = fmax(step((-r[x].y+b.y)/v[x].y,stuff[0])*step(0,(-r[x].y+b.y)/v[x].y)*(stuff[0]-(-r[x].y+b.y)/v[x].y)+step((-r[x].y+t.y)/v[x].y,stuff[0])*step(0,(-r[x].y+t.y)/v[x].y)*(stuff[0]-(-r[x].y+t.y)/v[x].y),0);						
			f.y = (step(r[x].y,b.y)*(r[x].y-b.y)+step(t.y,r[x].y)*(r[x].y-t.y));			
			d.y = (step(r[x].y,b.y)+step(t.y,r[x].y));

			ext[x].y = -stuff[8]*(f.y*(stuff[0]-dt.y)+0.5*(stuff[0]-dt.y)*(stuff[0]-dt.y)*d.y*v[x].y+step(r[x].y,t.y)*step(b.y,r[x].y)*0.5*v[x].y*dt.y*dt.y);

			dt.z = fmax(step((-r[x].z+b.z)/v[x].z,stuff[0])*step(0,(-r[x].z+b.z)/v[x].z)*(stuff[0]-(-r[x].z+b.z)/v[x].z)+step((-r[x].z+t.z)/v[x].z,stuff[0])*step(0,(-r[x].z+t.z)/v[x].z)*(stuff[0]-(-r[x].z+t.z)/v[x].z),0);						
			f.z = (step(r[x].z,b.z)*(r[x].z-b.z)+step(t.z,r[x].z)*(r[x].z-t.z));			
			d.z = (step(r[x].z,b.z)+step(t.z,r[x].z));

			ext[x].z = -stuff[8]*(f.z*(stuff[0]-dt.z)+0.5*(stuff[0]-dt.z)*(stuff[0]-dt.z)*d.z*v[x].z+step(r[x].z,t.z)*step(b.z,r[x].z)*0.5*v[x].z*dt.z*dt.z);
		
		


			Internal[x] += 0.5*stuff[8]*m[x]*dot(f,f);
			//V[x] += //-0.5*2e-2*stuff[9]*stuff[0]*stuff[0]*d.x*v[x].x;
		}	
"
#!// ext needs update to mass-dependent spring force or simillar!!!  
		
vstep = cl.Program(ctx, source=v_kernel) |> cl.build!
ker_v = cl.Kernel(vstep, "vstep");
rstep = cl.Program(ctx, source=r_kernel) |> cl.build!
ker_r = cl.Kernel(rstep, "rstep");
dynamics = cl.Program(ctx, source=F_kernel) |> cl.build!
ker_F = cl.Kernel(dynamics, "Fimp");
red = cl.Program(ctx, source=red_kernel) |> cl.build!
ker_S = cl.Kernel(red, "red");
exter = cl.Program(ctx, source=ext_kernel) |> cl.build!
ker_ext = cl.Kernel(exter, "external");
trans = cl.Program(ctx, source=trans_kernel) |> cl.build!
ker_T = cl.Kernel(trans, "rmove");
trans0 = cl.Program(ctx, source=trans0_kernel) |> cl.build!
ker_T0 = cl.Kernel(trans0, "rmove0");
kinetic = cl.Program(ctx, source=T_kernel) |> cl.build!
ker_kin = cl.Kernel(kinetic, "Tstep");
zeroer = cl.Program(ctx, source=zero_kernel) |> cl.build!
ker_0 = cl.Kernel(zeroer, "zeroer");

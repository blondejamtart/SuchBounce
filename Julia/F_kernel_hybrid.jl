import OpenCL
const cl = OpenCL

dev_list = cl.devices();
print("Select device for computations:\r\n")
for x = 1:length(dev_list)
	write(STDOUT,[string(x) ": "  string(dev_list[x])  "\r\n"])
end
n_choice = int64(readline(STDIN));

dev = dev_list[n_choice];
ctx = cl.Context(dev);
queue = cl.CmdQueue(ctx); 


const F_kernels = ["" "" ""];

# Hybrid
F_kernels[3] = "
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
			double3 vtemp = v[b] - v[a]; 
			double p = dot(vtemp,Runit);		
			double collisionflag = step(d,(rad[a]+rad[b]));	
		
			double c = d+(rad[a]+rad[b]);			
			double f = d*(c+rad[a]+rad[b]);		

				
					
			double F = (((m[a]*m[b]*G) - (q[a]*q[b]*e0))/(d*d)) - (0.33333333)*stuff[2]*c*((f-2*rad[a]*rad[b])/pow(f,2)-(f+6*rad[a]*rad[b])/pow((f+4*rad[a]*rad[b]),2));	
		
			double dF = ((-2*(m[a]*m[b]*G) + 2*(q[a]*q[b]*e0))/(d*d*d) + (0.33333333)*stuff[2]*(((f-2*rad[a]*rad[b])/pow(f,2)-(f+6*rad[a]*rad[b])/pow((f+4*rad[a]*rad[b]),2)) + 2*pow(c,2)*((4*rad[a]*rad[b]-f)/pow(f,3)+(f+8*rad[a]*rad[b])/pow((f+4*rad[a]*rad[b]),3))))*p;				
				
			double3 v_rel = (vtemp - p*Runit) - cross(wvec,Runit);				
			
			double dt = step((d-rad[a]-rad[b])/p,stuff[0])*step(0,(d-rad[a]-rad[b])/p)*(stuff[0]-(d-rad[a]-rad[b])/p);
					
			double j = (F*stuff[0]+0.5*dF*stuff[0]*stuff[0]) - collisionflag*(stuff[1]*p*(stuff[0]-dt) + stuff[8]*(rad[a]+rad[b]-d)*(stuff[0]-dt) + 0.5*stuff[8]*p*(stuff[0]-dt)*(stuff[0]-dt)) -step((rad[a]+rad[b]),d)*(stuff[1]*p*dt+0.5*stuff[8]*p*dt*dt);
					
			double jf = collisionflag*length(v_rel)/((pow(rad[a],2)/I[a]+pow(rad[b],2)/I[b])+(1/m[a]+1/m[b]));
			
			double fdyn = (F*stuff[0] + 0.5*dF*stuff[0]*stuff[0]);
			if (jf > fdyn*stuff[4]) jf = fdyn*stuff[5];			
			rddp[x] = j*Runit - collisionflag*jf*normalize(v_rel);			
			oddp[x] = cross(Runit,jf*v_rel);

			Vpart[x] = 0;//(-(m[a]*m[b]*G)+(q[a]*q[b]*e0))/d - (0.1666666)*stuff[2]*((2*rad[a]*rad[b])*(1/f+1/(f+4*rad[a]*rad[b]))+log(f)-log(f+4*rad[a]*rad[b]));

			Ipart[x] =  0.25*collisionflag*stuff[8]*pow((rad[a]+rad[b]-d),2);			
		}
"

# Hard Spheres	
 F_kernels[1] = "
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
		
			double dF = stuff[9]*((-2*(m[a]*m[b]*G) + 2*(q[a]*q[b]*e0))/(d*d*d) + (0.33333333)*stuff[2]*(((f-2*rad[a]*rad[b])/pow(f,2)-(f+6*rad[a]*rad[b])/pow((f+4*rad[a]*rad[b]),2)) + 2*pow(c,2)*((4*rad[a]*rad[b]-f)/pow(f,3)+(f+8*rad[a]*rad[b])/pow((f+4*rad[a]*rad[b]),3))))*p;			
			
			double3 v_rel = (vtemp - p*Runit) - cross(wvec,Runit);			
			double jf = collisionflag*(-1/((pow(rad[a],2)/I[a] + pow(rad[b],2)/I[b]) + (1/m[a] + 1/m[b])));						 
			double j =  -(1 + stuff[1])*collisionflag*p/(1/m[a] + 1/m[b]);			
			double fdyn = ((F*stuff[0] + 0.5*dF*stuff[0]*stuff[0]));
			if (jf > fdyn*stuff[4]) jf = fdyn*stuff[5];			
			rddp[x] = ((1-collisionflag)*(F*Runit*stuff[0] + 0.5*dF*Runit*stuff[0]*stuff[0]) - (j*Runit + jf*v_rel));
			oddp[x] = -cross(Runit,jf*v_rel);
			Vpart[x] = (-(m[a]*m[b]*G)+(q[a]*q[b]*e0))/d - (0.1666666)*stuff[2]*((2*rad[a]*rad[b])*(1/f+1/(f+4*rad[a]*rad[b]))+log(f)-log(f+4*rad[a]*rad[b]));
			Ipart[x] = 0;			
		}
"		

# Soft Spheres (Symplectic)
F_kernels[2] = "
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
			double3 vtemp = v[b] - v[a]; 
			double p = dot(vtemp,Runit);		
			double collisionflag = step(d,(rad[a]+rad[b]));	
		
			double c = d+(rad[a]+rad[b]);			
			double f = d*(c+rad[a]+rad[b]);				
					
			double F = (((m[a]*m[b]*G) - (q[a]*q[b]*e0))/(d*d)) - (0.33333333)*stuff[2]*c*((f-2*rad[a]*rad[b])/pow(f,2)-(f+6*rad[a]*rad[b])/pow((f+4*rad[a]*rad[b]),2));				
			
			Vpart[x] = (-(m[a]*m[b]*G)+(q[a]*q[b]*e0))/d - (0.1666666)*stuff[2]*((2*rad[a]*rad[b])*(1/f+1/(f+4*rad[a]*rad[b]))+log(f)-log(f+4*rad[a]*rad[b]));

			Ipart[x] = 0.25*collisionflag*stuff[8]*pow((rad[a]+rad[b]-d),2);
				
			double3 v_rel = (vtemp - p*Runit) - cross(wvec,Runit);						
			double j = F*stuff[0] - collisionflag*(stuff[1]*p*stuff[0] + stuff[8]*(rad[a]+rad[b]-d)*stuff[0]);					

			double jf = collisionflag*step(0,length(v_rel))*(stuff[8]*(rad[a]+rad[b]-d)*stuff[0])*stuff[5];	
					
			rddp[x] = j*Runit - collisionflag*jf*normalize(v_rel);			
			oddp[x] = -cross(Runit,jf*v_rel);			
					
					
		}
"			

print("Select kernel:\r\n1. Hard Spheres (Gradient Enhanced)\r\n2. Soft Spheres (Symplectic)\r\n3. Hybrid (Gradient Enhanced)\r\n")
n_choice = int64(readline(STDIN));
const F_kernel = F_kernels[n_choice];

const r_kernel = " 
		__kernel void rstep(__global const double *stuff,					
					__global double3 *r,
					__global double3 *v)
		{
			int x = get_global_id(0);						
			r[x] += 0.5*(v[x]*stuff[0]);			
		}				
"
const v_kernel = " 
		__kernel void vstep(__global double3 *v,					
					__global double3 *accel)
					
		{
			int x = get_global_id(0);
			v[x] += 0.5*accel[x];							
		}				
"
const red_kernel = " 
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


const trans_kernel = "
		__kernel void rmove(__global double3 *r)
		{
			int x = get_global_id(0);
			r[x+1] += -r[0];
		}
"

const trans0_kernel = "
		__kernel void rmove0(__global double3 *r)
		{			
			r[0] += -r[0];
		}
"
		
const zero_kernel = "
		__kernel void zeroer(__global double3 *accel,
					__global double *V)		

		{	
			int x = get_global_id(0);
			accel[x] = (0,0,0);			
			V[x] = 0;
		}
"

const T_kernel = " 
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
const ext_kernel = " 
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
			double3 b = (0,-4e-2,0);
			double3 t = (8e-2,8e-2,2e-2);
				
			dt.x = fmax(step((-r[x].x+b.x)/v[x].x,stuff[0])*step(0,(-r[x].x+b.x)/v[x].x)*(stuff[0]-(-r[x].x+b.x)/v[x].x)+step((-r[x].x+t.x)/v[x].x,stuff[0])*step(0,(-r[x].x+t.x)/v[x].x)*(stuff[0]-(-r[x].x+t.x)/v[x].x),0);						
			f.x = (step(r[x].x,b.x)*(r[x].x-b.x)+step(t.x,r[x].x)*(r[x].x-t.x));			
			d.x = (step(r[x].x,b.x)+step(t.x,r[x].x));

			ext[x].x = -2e-2/m[x]*(f.x*(stuff[0]-dt.x)+0.5*(stuff[0]-dt.x)*(stuff[0]-dt.x)*d.x*v[x].x+step(r[x].x,t.x)*step(b.x,r[x].x)*0.5*v[x].x*dt.x*dt.x);

			dt.y = fmax(step((-r[x].y+b.y)/v[x].y,stuff[0])*step(0,(-r[x].y+b.y)/v[x].y)*(stuff[0]-(-r[x].y+b.y)/v[x].y)+step((-r[x].y+t.y)/v[x].y,stuff[0])*step(0,(-r[x].y+t.y)/v[x].y)*(stuff[0]-(-r[x].y+t.y)/v[x].y),0);						
			f.y = (step(r[x].y,b.y)*(r[x].y-b.y)+step(t.y,r[x].y)*(r[x].y-t.y));			
			d.y = (step(r[x].y,b.y)+step(t.y,r[x].y));

			ext[x].y = -2e-2/m[x]*(f.y*(stuff[0]-dt.y)+0.5*(stuff[0]-dt.y)*(stuff[0]-dt.y)*d.y*v[x].y+step(r[x].y,t.y)*step(b.y,r[x].y)*0.5*v[x].y*dt.y*dt.y);

			dt.z = fmax(step((-r[x].z+b.z)/v[x].z,stuff[0])*step(0,(-r[x].z+b.z)/v[x].z)*(stuff[0]-(-r[x].z+b.z)/v[x].z)+step((-r[x].z+t.z)/v[x].z,stuff[0])*step(0,(-r[x].z+t.z)/v[x].z)*(stuff[0]-(-r[x].z+t.z)/v[x].z),0);						
			f.z = (step(r[x].z,b.z)*(r[x].z-b.z)+step(t.z,r[x].z)*(r[x].z-t.z));			
			d.z = (step(r[x].z,b.z)+step(t.z,r[x].z));

			ext[x].z = -2e-2/m[x]*(f.z*(stuff[0]-dt.z)+0.5*(stuff[0]-dt.z)*(stuff[0]-dt.z)*d.z*v[x].z+step(r[x].z,t.z)*step(b.z,r[x].z)*0.5*v[x].z*dt.z*dt.z);
		
		


			Internal[x] += 0.5*2e-2*dot(f,f);
			V[x] += dt.y; //-0.5*2e-2*stuff[9]*stuff[0]*stuff[0]*d.x*v[x].x;
		}	
"

		
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

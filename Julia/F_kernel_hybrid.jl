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
			
			Vpart[x] = (-(m[a]*m[b]*G)+(q[a]*q[b]*e0))/d - (0.1666666)*stuff[2]*((2*rad[a]*rad[b])*(1/f+1/(f+4*rad[a]*rad[b]))+log(f)-log(f+4*rad[a]*rad[b]));

			Ipart[x] = 0.25*collisionflag*stuff[8]*pow((rad[a]+rad[b]-d),2);
				
			double3 v_rel = (vtemp - p*Runit) - cross(wvec,Runit);						
			double j = (F*stuff[0]+0.5*dF*stuff[0]*stuff[0]) - collisionflag*(stuff[1]*p*stuff[0] + stuff[8]*(rad[a]+rad[b]-d)*stuff[0] + 0.5*stuff[8]*p*stuff[0]*stuff[0]);			
					
			double jf = collisionflag*length(v_rel)/((pow(rad[a],2)/I[a]+pow(rad[b],2)/I[b])+(1/m[a]+1/m[b]));
			
			double fdyn = (F*stuff[0] + 0.5*dF*stuff[0]*stuff[0]);
			if (jf > fdyn*stuff[4]) jf = fdyn*stuff[5];			
			rddp[x] = j*Runit - collisionflag*jf*normalize(v_rel);			
			oddp[x] = -cross(Runit,jf*v_rel);			
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
					__global double3 *oddp)
					
				  
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
			double jf = collisionflag*(-1/((pow(rad[a],2)/I[a] + pow(rad[b],2)/I[b]) + (1/m[a] + 1/m[b])));						 
			double j =  -(1 + stuff[1])*collisionflag*p/(1/m[a] + 1/m[b]);			
			double fdyn = ((F*stuff[0] + 0.5*dF*stuff[0]*stuff[0]));
			if (jf > fdyn*stuff[4]) jf = fdyn*stuff[5];			
			rddp[x] = ((1-collisionflag)*(F*Runit*stuff[0] + 0.5*dF*Runit*stuff[0]*stuff[0]) - (j*Runit + jf*v_rel));
			oddp[x] = -cross(Runit,jf*v_rel);			
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
					__global double3 *v,
					__global double3 *accel,
					__global double3 *alpha,
					__global double *V,
					__global double *Internal)
		{
			int x = get_global_id(0);						
			r[x] += (v[x]*stuff[0]);
			accel[x] = (0,0,0);
			alpha[x] = (0,0,0);
			V[x] = 0;
			Internal[x] = 0;
		}				
"
const v_kernel = " 
		__kernel void vstep(__global double3 *v,			
					__global double3 *w,
					__global double3 *accel,
					__global double3 *alpha,
					__global double3 *ext)
		{
			int x = get_global_id(0);
			v[x] += 0.5*(accel[x]+ext[x]);
			w[x] += 0.5*alpha[x];									
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
				V[x] += b[c+n[0]*x]*b[c+n[0]*x]*Vpart[c];				
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
		__kernel void external(__global double *q,
					__global double3 *ext,
					__global double3 *v,
					__global double *m,					
					__global double3 *r,
					__global double *stuff)
		{
			int x = get_global_id(0);	
			double3 E = (0,0,0);
			double3 B = (0,0,0);
			double3 G = (0,0,0); //((0,0,0) - r[x])*stuff[6]*5.972e24/pow(distance(r[x],(0,0,0)),3);
			ext[x] = stuff[0]*(q[x]*(E + cross(v[x],B))/m[x] + G);
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
ker_ext = cl.Kernel(vstep, "vstep");
trans = cl.Program(ctx, source=trans_kernel) |> cl.build!
ker_T = cl.Kernel(trans, "rmove");
trans0 = cl.Program(ctx, source=trans0_kernel) |> cl.build!
ker_T0 = cl.Kernel(trans0, "rmove0");
kinetic = cl.Program(ctx, source=T_kernel) |> cl.build!
ker_kin = cl.Kernel(kinetic, "Tstep");

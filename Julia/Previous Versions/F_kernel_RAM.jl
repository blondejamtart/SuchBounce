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

const F_kernel = "
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
		
			double collisionflag = 0;
			if (d < (rad[a]+rad[b])*1.0001) collisionflag = 1; //0.5*(1 + ((rad[a]+rad[b]) - d)/(fabs((rad[a]+rad[b]) - d)));	
			double c = d + (rad[a]+rad[b]);
			double vw6 = (0.1666666)*stuff[2]*(pow(c,3)-2*(pow(rad[a],2) + pow(rad[b],2))*c)*(1/pow((c*c - (pow(rad[a],2) + pow(rad[b],2)) - (2*rad[a]*rad[b])),2)-1/pow((c*c - (pow(rad[a],2) + pow(rad[b],2)) + (2*rad[a]*rad[b])),2));
			// double del = rad[a] - rad[b];
			// double fi = (del*(9+14*rad[a])-d*d+2*rad[a]*(13*rad[a]-2))/pow((2*rad[a]+d),7)+(-del*(9+14*rad[b])-d*d+2*rad[b]*(13*rad[b]-2))/pow((2*rad[b]+d),7);
			// double di = (-14*rad[a]*(13*rad[a]-2+7*del)+d*d-63*del)/pow((2*rad[a]+d),8) - 2*d/pow((2*rad[a]+d),7)+(-14*rad[b]*(13*rad[b]-2-7*del)+d*d+63*del)/pow((2*rad[b]+d),8) - 2*d/pow((2*rad[b]+d),7); 
			// double vw121 = 0; //stuff[3]*(1/(6*c))*((c*c+8*c*(rad[a]+rad[b])+7*(pow(rad[a],2) + pow(rad[b],2))+28*(2*rad[a]*rad[b]))/pow((c+(rad[a]+rad[b])),8)+(21*(2*rad[a]*rad[b])+7*(rad[a]+rad[b])+d*d)/pow(d,8)-0.2*di);
			// double vw122 = 0; //stuff[3]*(1/(30*c*c))*((c*c+7*c*(rad[a]+rad[b])+6*(pow(rad[a],2) + pow(rad[b],2))+21*(2*rad[a]*rad[b]))/pow((c+(rad[a]+rad[b])),7)+(15*(2*rad[a]*rad[b])+5*(rad[a]+rad[b])+d*d)/pow(d,7)+fi);
			double F = (((m[a]*m[b]*G) - (q[a]*q[b]*e0))/(d*d) + vw6);				
			double dF = ((-2*(m[a]*m[b]*G) + 2*(q[a]*q[b]*e0))/(d*d*d) + (0.1666666)*stuff[2]*((3*pow(c,2)-2*(pow(rad[a],2) + pow(rad[b],2)))*(1/pow((c*c - (pow(rad[a],2) + pow(rad[b],2)) - (2*rad[a]*rad[b])),2)-1/pow((c*c - (pow(rad[a],2) + pow(rad[b],2)) + (2*rad[a]*rad[b])),2)) - (4*pow(c,4)-8*(pow(rad[a],2) + pow(rad[b],2))*c*c)*(1/pow((c*c - (pow(rad[a],2) + pow(rad[b],2)) - (2*rad[a]*rad[b])),3)-1/pow((c*c - (pow(rad[a],2) + pow(rad[b],2)) + (2*rad[a]*rad[b])),3))))*p;		
			
			double3 v_rel = (vtemp - p*Runit) - cross(wvec,Runit);			
			double jf = collisionflag*(-1/((pow(rad[a],2)/I[a] + pow(rad[b],2)/I[b]) + (1/m[a] + 1/m[b])));						 
			double j =  -(1 + stuff[1])*collisionflag*p/(1/m[a] + 1/m[b]);			
			double fdyn = (j +(F*stuff[0] + 0.5*dF*stuff[0]*stuff[0]));
			if (jf > fdyn*stuff[4]) jf = fdyn*stuff[5];			
			rddp[x] = ((1-collisionflag)*(F*Runit*stuff[0] + 0.5*dF*Runit*stuff[0]*stuff[0]) - (j*Runit + jf*v_rel));
			oddp[x] = -cross(Runit,jf*v_rel);			
		}
"		

const r_kernel = " 
		__kernel void rstep(__global const double *stuff,					
					__global double3 *r,
					__global double3 *v,
					__global double3 *accel,
					__global double3 *alpha)
		{
			int x = get_global_id(0);		
			r[x] += (v[x]*stuff[0]);
			accel[x] = (0,0,0);
			alpha[x] = (0,0,0);
		}				
"
const v_kernel = " 
		__kernel void vstep(__global double3 *v,			
					__global double3 *w,
					__global double3 *accel,
					__global double3 *alpha)
		{
			int x = get_global_id(0);
			v[x] += 0.5*accel[x];
			w[x] += 0.5*alpha[x];			
		}				
"
const red_kernel = " 
		__kernel void red(__global double3 *rddp,
					__global double3 *oddp,
					__global double3 *accel,
					__global double3 *alpha,
					__global char *b,
					__global double *m,
					__global double *I,
					__global double *rad,
					__global int *n)
		{
			int x = get_global_id(0);			
			for (long c = 0; c < n[0]; c++)					
			{	
				accel[x] += b[c+n[0]*x]*rddp[c]/m[x];
				alpha[x] += b[c+n[0]*x]*b[c+n[0]*x]*oddp[c]*rad[x]/I[x];	
			}		
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

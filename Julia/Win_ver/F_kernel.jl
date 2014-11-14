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
		__kernel void Fimp(__global const double *chargevec,			
				    __global const double *rprod,
					__global const double *rsquares,
				 	__global const double *m,				  
				  	__global const double *I,
				  	__global const long *k,
					__global const long *l,
			  	 	__global const double *massvec,			
				 	__global const double *radvec,
			  	 	__global const double *massrecip,
			  	 	__global const double *inertiapair,
				 	__global const double *rad,	
				 	__global const double *stuff,			  
				 	__global double3 *r,
				 	__global double3 *v,
				 	__global double3 *w,
					__global double3 *vinc,
					__global double3 *winc)
					
				  
		{ 			
			long x = get_global_id(0);
			long a = k[x] - 1;
			long b = l[x] - 1;
		    double d = distance(r[a],r[b]);
		 	double3 Runit = normalize(r[a] - r[b]);
			double3 wvec = w[a]*rad[a] + w[b]*rad[b];
			double3 vtemp = v[a] - v[b]; 
			double p = dot(vtemp,Runit);
		
			double collisionflag = 0;
			if (d < radvec[x]*1.0001) collisionflag = 1; //0.5*(1 + (radvec[x] - d)/(fabs(radvec[x] - d)));	
			double c = d + radvec[x];
			double vw6 = (0.1666666)*stuff[2]*(pow(c,3)-2*rsquares[x]*c)*(1/pow((c*c - rsquares[x] - rprod[x]),2)-1/pow((c*c - rsquares[x] + rprod[x]),2));
			// double del = rad[a] - rad[b];
			// double fi = (del*(9+14*rad[a])-d*d+2*rad[a]*(13*rad[a]-2))/pow((2*rad[a]+d),7)+(-del*(9+14*rad[b])-d*d+2*rad[b]*(13*rad[b]-2))/pow((2*rad[b]+d),7);
			// double di = (-14*rad[a]*(13*rad[a]-2+7*del)+d*d-63*del)/pow((2*rad[a]+d),8) - 2*d/pow((2*rad[a]+d),7)+(-14*rad[b]*(13*rad[b]-2-7*del)+d*d+63*del)/pow((2*rad[b]+d),8) - 2*d/pow((2*rad[b]+d),7); 
			// double vw121 = 0; //stuff[3]*(1/(6*c))*((c*c+8*c*radvec[x]+7*rsquares[x]+28*rprod[x])/pow((c+radvec[x]),8)+(21*rprod[x]+7*radvec[x]+d*d)/pow(d,8)-0.2*di);
			// double vw122 = 0; //stuff[3]*(1/(30*c*c))*((c*c+7*c*radvec[x]+6*rsquares[x]+21*rprod[x])/pow((c+radvec[x]),7)+(15*rprod[x]+5*radvec[x]+d*d)/pow(d,7)+fi);
			double F = ((massvec[x] - chargevec[x])/(d*d) + vw6);				
			double dF = ((-2*massvec[x] + 2*chargevec[x])/(d*d*d) + (0.1666666)*stuff[2]*((3*pow(c,2)-2*rsquares[x])*(1/pow((c*c - rsquares[x] - rprod[x]),2)-1/pow((c*c - rsquares[x] + rprod[x]),2)) - (4*pow(c,4)-8*rsquares[x]*c*c)*(1/pow((c*c - rsquares[x] - rprod[x]),3)-1/pow((c*c - rsquares[x] + rprod[x]),3))))*p;		
			
			double3 v_rel = (vtemp - p*Runit) - cross(wvec,Runit);			
			double jf = collisionflag*(-1/(inertiapair[x] + massrecip[x]) + (F*stuff[0] + 0.5*dF*stuff[0]*stuff[0])*stuff[4]);						 
			double j =  -(1 + stuff[1])*collisionflag*p/massrecip[x];			
			if (jf > j*stuff[4]) jf = j*stuff[4];
			
			vinc[x] += ((1-collisionflag)*(F*Runit*stuff[0] + 0.5*dF*Runit*stuff[0]*stuff[0]) - (j*Runit + jf*v_rel));
			// vinc[x,a] += ((collisionflag-1)*(F*Runit*stuff[0] + 0.5*dF*Runit*stuff[0]*stuff[0]) + (j*Runit + jf*v_rel))/m[a];
			winc[x] += -cross(Runit,jf*v_rel);
			//winc[x,a] += -cross(Runit,jf*v_rel)*rad[a]/I[a];
			
		}
"		

const r_kernel = " 
		__kernel void rstep(__global const double *stuff,
					__global double3 *v,
					__global double3 *r,
					__global double3 *w,
					__global double3 *vind,
					__global double3 *wind)
		{
			int x = get_global_id(0);
			v[x] += vind[x];
			w[x] += wind[x];
			r[x] += (v[x]*stuff[0]);
			vind[x] = (0,0,0);
			wind[x] = (0,0,0);
		}				
"
const red_kernel = " 
		__kernel void red(__global double3 *vinc,
					__global double3 *winc,
					__global double3 *vind,
					__global double3 *wind,
					__global double *b,
					__global double *m,
					__global double *I,
					__global double *rad,
					__global long *n_el,
					__global double *bug)
		{
			long x = get_global_id(0);			
			for (long c = 0; c < n_el[1]; c++)					
			{	
				vind[x] += b[x]*vinc[c]/m[x];
				wind[x] += b[x]*winc[c]*rad[x]/I[x];	
			}		
		}	
"
		

rstep = cl.Program(ctx, source=r_kernel) |> cl.build!
ker1 = cl.Kernel(rstep, "rstep");
dynamics = cl.Program(ctx, source=F_kernel) |> cl.build!
ker2 = cl.Kernel(dynamics, "Fimp");
red = cl.Program(ctx, source=red_kernel) |> cl.build!
ker3 = cl.Kernel(red, "red");

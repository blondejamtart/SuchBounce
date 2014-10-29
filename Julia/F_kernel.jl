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
		__kernel void Fimp(__global const float *chargevec,			
				    __global const float *rprod,
					__global const float *rsquares,
				 	__global const float *m,				  
				  	__global const float *I,
				  	__global const int *k,
					__global const int *l,
			  	 	__global const float *massvec,			
				 	__global const float *radvec,
			  	 	__global const float *massrecip,
			  	 	__global const float *inertiapair,
				 	__global const float *rad,	
				 	__global const float *stuff,			  
				 	__global float3 *r,
				 	__global float3 *v,
				 	__global float3 *w)
					
				  
		{ 			
			int x = get_global_id(0);
			int a = k[x] - 1;
			int b = l[x] - 1;
		    float d = distance(r[a],r[b]);
		 	float3 Runit = normalize(r[a] - r[b]);
			float3 wvec = w[a]*rad[a] + w[b]*rad[b];
			float3 vtemp = v[a] - v[b]; 
			float p = dot(vtemp,Runit);
		
			float collisionflag = 0;
			if (d < radvec[x]+0.0001) collisionflag = 1; //0.5*(1 + (radvec[x] - d)/(fabs(radvec[x] - d)));	
			float c = d + radvec[x];
			float vw6 = (1/6)*stuff[2]*(pow(c,3)-2*rsquares[x]*c)*(1/pow((c*c - rsquares[x] - rprod[x]),2)-1/pow((c*c - rsquares[x] + rprod[x]),2));
			float del = rad[a] - rad[b];
			float fi = (del*(9+14*rad[a])-d*d+2*rad[a]*(13*rad[a]-2))/pow((2*rad[a]+d),7)+(-del*(9+14*rad[b])-d*d+2*rad[b]*(13*rad[b]-2))/pow((2*rad[b]+d),7);
			float di = (-14*rad[a]*(13*rad[a]-2+7*del)+d*d-63*del)/pow((2*rad[a]+d),8) - 2*d/pow((2*rad[a]+d),7)+(-14*rad[b]*(13*rad[b]-2-7*del)+d*d+63*del)/pow((2*rad[b]+d),8) - 2*d/pow((2*rad[b]+d),7); 
			float vw121 = stuff[3]*(1/(6*c))*((c*c+8*c*radvec[x]+7*rsquares[x]+28*rprod[x])/pow((c+radvec[x]),8)+(21*rprod[x]-7*radvec[x]+d*d)/pow(d,8)-0.2*di);
			float vw122 = stuff[3]*(1/(30*c*c))*((c*c+7*c*radvec[x]+6*rsquares[x]+21*rprod[x])/pow((c+radvec[x]),7)+(15*rprod[x]-5*radvec[x]+d*d)/pow(d,7)+fi);
			float F = ((massvec[x] - chargevec[x])/(d*d) + vw6 + vw121 + vw122)*(1 - collisionflag);				
			float dF = ((-2*massvec[x] + 2*chargevec[x])/(d*d*d))*(1 - collisionflag)*p;		
			
			float3 v_rel = (vtemp - p*Runit) - cross(wvec,Runit);
			float jf = -collisionflag/(inertiapair[x] + massrecip[x]);
			float j =  -(1 + stuff[1])*collisionflag*p/massrecip[x];			
		
			v[b] += F*Runit*stuff[0]/m[b] + dF*Runit*stuff[0]*stuff[0]/m[b] - j*Runit/m[b] - jf*v_rel/m[b];
			v[a] += -F*Runit*stuff[0]/m[a] - dF*Runit*stuff[0]*stuff[0]/m[a] + j*Runit/m[a] + jf*v_rel/m[a];
			w[b] += -cross(Runit,jf*v_rel)*rad[b]/I[b];
			w[a] += -cross(Runit,jf*v_rel)*rad[a]/I[a];			
		}
"		

const r_kernel = " 
		__kernel void rstep(__global const float *stuff,
					__global float3 *v,
					__global float3 *r)
		{
			int x = get_global_id(0);
			r[x] += (v[x]*stuff[0]);			
		}				
"

rstep = cl.Program(ctx, source=r_kernel) |> cl.build!
ker1 = cl.Kernel(rstep, "rstep");
dynamics = cl.Program(ctx, source=F_kernel) |> cl.build!
ker2 = cl.Kernel(dynamics, "Fimp");
	

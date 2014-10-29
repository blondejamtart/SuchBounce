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
			
			float F = ((massvec[x] - chargevec[x])/(d*d))*(1 - collisionflag);				
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
	

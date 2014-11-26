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
				  	__global const int *l1,
					__global const int *l2,
			  	 	__global const float *massvec,			
				 	__global const float *radvec,
			  	 	__global const float *massrecip,
			  	 	__global const float *inertiapair,
				 	__global const float *rad,	
				 	__global const float *stuff,			  
				 	__global float3 *r,
				 	__global float3 *v,
				 	__global float3 *w,
					__global float *bug)
					
				  
		{ 			
			int x = get_global_id(0);
			int a = l1[x]-1;
			int b = l2[x]-1;
		    	float d = length(r[a] - r[b]);
		 	float3 Runit = normalize(r[a] - r[b]);
			float3 wvec = w[a]*rad[a] + w[b]*rad[b];
			float3 vtemp = v[a] - v[b]; 
			float p = dot(vtemp,Runit);
		
			float collisionflag = 0.5*(1 + (radvec[x] - d)/(fabs(radvec[x] - d)));	
		
			float F = ((massvec[x] - chargevec[x])/(d*d))*(1 - collisionflag);				
			float dF = ((-2*massvec[x] + 2*chargevec[x])/(d*d*d))*(1 - collisionflag)*p;		
			
			float3 v_rel = (vtemp - p*Runit) - cross(wvec,Runit);
			float jf = -collisionflag/(inertiapair[x] + massrecip[x]);
			float j =  -(1 + stuff[1])*collisionflag*p/massrecip[x];					
			
			
			bug[x] = collisionflag;
			v[b] += F*Runit*stuff[1]/m[b] + dF*Runit*stuff[1]*stuff[1]/m[b] - j*Runit/m[b] - jf*v_rel/m[b];
			v[a] += -F*Runit*stuff[1]/m[a] - dF*Runit*stuff[1]*stuff[1]/m[a] + j*Runit/m[a] + jf*v_rel/m[a];
			w[b] += -1*cross(Runit,jf*v_rel)*rad[b]/I[b];
			w[a] += cross(Runit,jf*v_rel)[1]*rad[a]/I[a];
			
			
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
	

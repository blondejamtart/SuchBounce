import OpenCL
const cl = OpenCL

device, ctx, queue = cl.create_compute_context();
const F_kernel = "
		__kernel void Fimp(__global const float *chargevec,
				 	__global const float *m,				  
				  	__global const float *I,
				  	__global const int *lookup,
			  	 	__global const float *massvec,			
				 	__global const float *radvec,
			  	 	__global const float *massrecip,
			  	 	__global const float *inertiapair,
				 	__global const float *rad,	
				 	__global const float *dt,			  
				 	__global float3 *r,
				 	__global float3 *v,
				 	__global float3 *w)
				  
		{ 	
			int diss = 1;
			int x = get_global_id(0);	
			float3 r1 = (r[1,lookup[x,1]],r[2,lookup[x,1]],r[3,lookup[x,1]]);
			float3 r2 = (r[1,lookup[x,2]],r[2,lookup[x,2]],r[3,lookup[x,2]]);
			float3 v1 = (v[1,lookup[x,1]],v[2,lookup[x,1]],v[3,lookup[x,1]]);
			float3 v2 = (v[1,lookup[x,2]],v[2,lookup[x,2]],v[3,lookup[x,2]]);
			float3 w1 = (w[1,lookup[x,1]],w[2,lookup[x,1]],w[3,lookup[x,1]]);
			float3 w2 = (w[1,lookup[x,2]],w[2,lookup[x,2]],w[3,lookup[x,2]]);

		        float d = distance(r1, r2);
		 	float3 Runit = normalize(r1 - r2);
			float3 wvec = w1*rad[lookup[x,1]] + w2*rad[lookup[x,2]];
			float3 vtemp = v1 - v2; 
			float p = dot(vtemp,Runit);
		
			int collisionflag = 1/2 + (radvec[x] - d)/(2*(radvec[x] - d));	
		
			float F = ((massvec[x] - chargevec[x])/(d*d) + 0)*(1 - collisionflag);				
			float dF = ((-2*massvec[x] + 2*chargevec[x])/(d*d*d) + 0)*(1 - collisionflag)*p;		
			
			float3 v_rel = (vtemp - p*Runit) -cross(wvec,Runit);
			float jf = -collisionflag/(inertiapair[x] + massrecip[x]);
			float j =  -(1 + diss)*collisionflag*p/massrecip[x];					
					
			v2 += F*Runit*dt/m[lookup[x,2]] + dF*Runit*dt*dt/m[lookup[x,2]] - j*Runit/m[lookup[x,2]] - jf*v_rel/m[lookup[x,2]];
			v1 += -F*Runit*dt/m[lookup[x,1]] - dF*Runit*dt*dt/m[lookup[x,1]] + j*Runit/m[lookup[x,1]] + jf*v_rel/m[lookup[x,1]];
			w2 += float3 -1*cross(Runit,jf*v_rel)*rad[lookup[x,2]]/I[lookup[x,2]];
			w1 += float3 cross(Runit,jf*v_rel)[1]*rad[lookup[x,1]]/I[lookup[x,1]];
		}
"		
const a_kernel = "
		__kernel void Fimp(__global const float *chargevec,
				 	__global const float *m,				  
				  	__global const float *I,
				  	__global const int *lookup,
			  	 	__global const float *massvec,			
				 	__global const float *radvec,
			  	 	__global const float *massrecip,
			  	 	__global const float *inertiapair,
				 	__global const float *rad,	
				 	__global const float *dt,			  
				 	__global float3 *r,
				 	__global float3 *v,
				 	__global float3 *w)
				  
		{ 	
			float diss = 1;
			int x = get_global_id(0);	
			float3 r1 = (r[1,lookup[x,1]],r[2,lookup[x,1]],r[3,lookup[x,1]]);
			float3 r2 = (r[1,lookup[x,2]],r[2,lookup[x,2]],r[3,lookup[x,2]]);
			float3 v1 = (v[1,lookup[x,1]],v[2,lookup[x,1]],v[3,lookup[x,1]]);
			float3 v2 = (v[1,lookup[x,2]],v[2,lookup[x,2]],v[3,lookup[x,2]]);
			float3 w1 = (w[1,lookup[x,1]],w[2,lookup[x,1]],w[3,lookup[x,1]]);
			float3 w2 = (w[1,lookup[x,2]],w[2,lookup[x,2]],w[3,lookup[x,2]]);
			
			float d = distance(r1, r2);
		 	float3 Runit = normalize(r1 - r2);
			float3 wvec = w1*rad[lookup[x,1]] + w2*rad[lookup[x,2]];
			float3 vtemp = v1 - v2; 
			float p = dot(vtemp,Runit);
			float collisionflag = 1/2 + (radvec[x] - d)/(2*(radvec[x] - d));
  			float F = ((massvec[x] - chargevec[x])/(d*d) + 0)*(1 - collisionflag);				
			float dF = ((-2*massvec[x] + 2*chargevec[x])/(d*d*d) + 0)*(1 - collisionflag)*p;
			
			float3 v_rel = (vtemp - p*Runit) - cross(wvec,Runit);
			float jf = -collisionflag/(inertiapair[x] + massrecip[x]);
			float j =  -(1 + diss)*collisionflag*p/massrecip[x];
			
			w2 += -1*cross(Runit,jf*v_rel)*rad[lookup[x,2]]/I[lookup[x,2]];
			w1 += cross(Runit,jf*v_rel)[1]*rad[lookup[x,1]]/I[lookup[x,1]];
		}	
"		
const r_kernel = " 
		__kernel void rstep(__global const float *dt,
					__global float3 *v,
					__global float3 *r)
		{
			int x = get_global_id(0);
			r[1,x] += v[1,x]*dt[1];
			r[2,x] += v[2,x]*dt[1];
			r[3,x] += v[3,x]*dt[1];
		}
"

rstep = cl.Program(ctx, source=r_kernel) |> cl.build!
ker1 = cl.Kernel(rstep, "rstep");
dynamics = cl.Program(ctx, source=a_kernel) |> cl.build!
ker2 = cl.Kernel(dynamics, "Fimp");
	

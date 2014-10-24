import OpenCL
const cl = OpenCL

const F_kernel = " _kernel void F(_global const float *chargevec,
				  _global const float *m,				  
				  _global const float *I,
				  _global const float *,
				  _global const *lookup,
			  	  _global const *massvec,			
				  _global const *radvec,
			  	  _global const *massrecip,
			  	  _global const *inertiapair,
				  _global const *rad,				  
				  _global float *r,
				  _global float *v,
				  _global float *w)
				  
		{ 
			int x = get_global_id(0);	

		        float d = distance(r[:,lookup[x,1]], r[:,lookup[x,2]]);
		 	float3 Runit = normalize(r[:,lookup[x,1]] - r[:,lookup[x,2]]);
			float3 wvec = w[:,lookup[x,1]]*rad[lookup[x,1]] + w[:,lookup[x,2]]*rad[lookup[x,2]];
			float3 vtemp = v[:,lookup[x,1]] - v[:,lookup[x,2]]; 
			float p = dot(vtemp,Runit);
		
			int collisionflag = 1/2 + (radvec[x] - d)/(2*(radvec[x] - d));	
		
			F = ((massvec[x] - chargevec[x])/d^2 + 0)*(1 - collisionflag);				
			dF = ((-2*massvec[x] + 2*chargevec[x])/d^3 + 0)*(1 - collisionflag)*p;		
			
			float3 v_rel = (vtemp[x,:] - p*Runit) - float3 cross(wvec,Runit);
			float jf = -collisionflag/(inertiapair[x] + massrecip[x]);
			float j =  -(1 + diss)*collisionflag*p/massrecip[x];					
					
			v[:,lookup[x,2]] = v[:,lookup[x,2]] + F*Runit*dt/m[lookup[x,2]] + dF*Runit*dt^2/m[lookup[x,2]] - j*Runit/m[lookup[x,2]] - jf*v_rel/m[lookup[x,2]];
			v[:,lookup[x,1]] = v[:,lookup[x,1]] - F*Runit*dt/m[lookup[x,1]] - dF*Runit*dt^2/m[lookup[x,1]] + j*Runit/m[lookup[x,1]] + jf*v_rel/m[lookup[x,1]];
			w[:,lookup[x,2]] = w[:,lookup[x,2]] - float3 cross(Runit,jf*v_rel)*rad[lookup[x,2]]/I[lookup[x,2]];
			w[:,lookup[x,1]] = w[:,lookup[x,1]] + float3 cross(Runit,jf*v_rel)*rad[lookup[x,1]]/I[lookup[x,1]];
		}
"			

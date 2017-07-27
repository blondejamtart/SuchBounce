__kernel void neural_net(	
				__global double* weights,
				__global double* activation_t0,
				__global double* activation_t1,
				__global double3* mu,								
				__global double* stuff,
				__global double3* positions,
				__global double* q
			)
{
	int x = get_global_id(0);
	int net_size = stuff[11];
	int NN_outputs = stuff[13];

	double min_x = -stuff[20]; //-1.0*min(1.4*stuff[20],0.35);
	double thickness = stuff[19]; //max(0.4*stuff[19],0.02);	
	
	
	double x_flag = stuff[3];
	if (x_flag == 1)
	{
		
		double temp_x = fabs(positions[x].x)+min_x+thickness;
		temp_x = sign(positions[x].x)*temp_x*step(0,temp_x);	
	
		double d_field = sqrt(pow(temp_x,2) + pow(positions[x].z,2));
		
		mu[x].x = maxmag(positions[x].z/d_field,0.0);
		mu[x].y = 0.0;		
		mu[x].z = -maxmag(temp_x/d_field,0.0);		
	}
	else
	{	

		double temp_x = fabs(positions[x].y)+min_x+thickness;
		temp_x = sign(positions[x].y)*temp_x*step(0,temp_x);	
	
		double d_field = sqrt(pow(temp_x,2) + pow(positions[x].z,2));
		
		mu[x].x = 0.0;
		mu[x].y = maxmag(positions[x].z/d_field,0.0);		
		mu[x].z = -maxmag(temp_x/d_field,0.0);	
	}		
	

}

			

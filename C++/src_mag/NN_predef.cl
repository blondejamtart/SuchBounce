__kernel void neural_net(	
				__global double* weights,
				__global double* activation_t0,
				__global double* activation_t1,
				__global double3* mu,								
				__global double* stuff,
				__global double3* positions
			)
{
	int x = get_global_id(0);
	int net_size = stuff[11];
	int NN_outputs = stuff[13];	
	
	
	double x_flag = stuff[3];
	if (x_flag == 1)
	{
		double d_field = sqrt(pow(positions[x].x,2) + pow(positions[x].y,2));
		mu[x].x = (positions[x].y/d_field);
		mu[x].y = -((positions[x].x/d_field));
		mu[x].z = 0.0;		
	}
	else
	{
		double d_field = sqrt(pow(positions[x].x,2) + pow(positions[x].z,2));
		mu[x].x = 0.85 + positions[x].z/d_field;
		mu[x].y = 0.0;		
		mu[x].z = -positions[x].x/d_field;
	}
}
			
		
							
							





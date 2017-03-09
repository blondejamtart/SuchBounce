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
	
	for (int i = 0; i < (net_size - NN_outputs); i++)
	{
		double input = 0.0;
		for (int j = 0; j < net_size; j++)
		{
			input += weights[net_size*j + i]*activation_t0[net_size*x + j];
		}
		//activation_t1[net_size*x + i] = step(input,1)*step(0,input)*pow(input,2)*(3.0 - 2.0*input) + step(1,input); // 
		activation_t1[net_size*x + i] = step(0,input)*pow(input,2)*(3.0 - 2.0*input); 
		//if (activation_t1[net_size*x + i] > 1 || activation_t1[net_size*x + i] < 0 ) { r = 1e3; }	
		
	}
	double output[3];
	for (int i = (net_size - NN_outputs); i < net_size; i++)
	{
		output[net_size-i-1] = 0.0; 
		for (int j = 0; j < net_size; j++)
		{
			output[net_size-i-1] += activation_t0[net_size*x + j]*weights[net_size*j + i];
		}
		//if (output[net_size-i] > 1 || output[net_size-i] < 0 ) { r = 1e3; }
				
	}
	output[0] += output[0];
	double r = (step(output[0],1)*(step(0,output[0])*pow((output[0]),2)*(3.0 - 2.0*output[0]))) + step(1,output[0]);
	double theta = 2.0*M_PI*output[1];
	double phi = M_PI*output[2];	
	
	
	mu[x].x = r*cos(theta)*sin(phi);
	mu[x].y = r*sin(theta)*sin(phi);
	mu[x].z = r*cos(phi);	
}
			
		
							
							





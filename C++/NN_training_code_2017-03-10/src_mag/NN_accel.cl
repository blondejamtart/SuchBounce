__kernel void neural_net(	
				__global double* weights,
				__global double* activation_t0,
				__global double* activation_t1,
				__global double3* accel,								
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
			input += weights[x*net_size*net_size + net_size*j + i]*activation_t0[net_size*x + j];
		}		
		activation_t1[net_size*x + i] = step(input,1)*step(0,input)*pow(input,2)*(3.0 - 2.0*input) + step(1,input); 		
		
	}
	double output[3];	
	for (int i = 0; i < NN_outputs; i++) //(net_size - NN_outputs); i < net_size; i++)
	{
		output[i] = 0.0; 
		for (int j = 0; j < net_size; j++)
		{
			output[i] += activation_t0[net_size*x + j]*weights[x*net_size*net_size + net_size*j + (net_size-NN_outputs)+i];		
		}
		//output[i] = step(output[i],1)*step(0,output[i])*output[i]+step(1,output[i]);			
	}	

	double r = stuff[14]*(pow(output[0],2)*step(fabs(output[0]),1)*(3.0 - 2.0*output[0]) + step(1,fabs(output[0])));
	double theta = 2.0*M_PI*output[1];
	double phi = 1.0*M_PI*output[2];		
	
	accel[x].x = r*cos(theta)*sin(phi); 
	accel[x].y = r*sin(theta)*sin(phi); 
	accel[x].z = r*cos(phi); 

//	accel[x].x = stuff[14]; //*(exp(2*output[0])-1)/(exp(2*output[0])+1);
//	accel[x].y = stuff[14]; //*(exp(2*output[1])-1)/(exp(2*output[1])+1);
//	accel[x].z = stuff[14]; //*(exp(2*output[2])-1)/(exp(2*output[2])+1);	

}

			
		
							
							





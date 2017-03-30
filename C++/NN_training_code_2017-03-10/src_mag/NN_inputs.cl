__kernel void NN_inputs	(	
				__global double* activation_t0,
				__global double* activation_t1,
				__global double* surface_coverage,
				__global double* stuff
			)
{
	int x = get_global_id(0);
	int net_size = stuff[11];
	int surface_blocks = stuff[12];
	for (int i = 0; i < surface_blocks; i++)
	{
		activation_t0[net_size*x + i] = surface_coverage[surface_blocks*x + i];
		activation_t1[net_size*x + i] = 0.0;
	}
	for (int i = surface_blocks; i < net_size; i++)
	{	
		activation_t0[net_size*x + i] = activation_t1[net_size*x + i];
		activation_t1[net_size*x + i] = 0.0;
	}
	
}
					

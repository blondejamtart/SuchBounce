__kernel void NN_zero	(	
				__global double* activation_t0,
				__global double* activation_t1,					
				__global double* stuff
			)
{
	int x = get_global_id(0);
	int net_size = stuff[11];
	int surface_blocks = stuff[12];	
	for (int i = 0; i < net_size; i++)
	{	
		activation_t0[net_size*x + i] = 0.0;
		activation_t1[net_size*x + i] = 0.0;
	}
	
}

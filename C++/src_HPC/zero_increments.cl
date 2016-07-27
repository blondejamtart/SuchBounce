#pragma OPENCL EXTENSION cl_khr_fp64 : enable
__kernel void zero_incs(__global double3 *vec_inc_one,
			__global double3 *vec_inc_two,
			__global double *scal_inc_two,
			__global double *scal_inc_one)

	{
		int x = get_global_id(0);
		vec_inc_one[x] = (0.0, 0.0, 0.0);
		scal_inc_one[x] = 0.0;
		vec_inc_two[x] = (0.0, 0.0, 0.0);
		scal_inc_two[x] = 0.0;
	}


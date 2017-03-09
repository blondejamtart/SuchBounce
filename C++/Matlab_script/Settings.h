#define __CL_ENABLE_EXCEPTIONS
#define __CL_USE_DEPRECATED_OPENCL_1_1_APIS
#define linux

#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <cmath>
#include <CL/cl.hpp>
#include <array>
#include <stdio.h>
#include <time.h>

//Settings:

const int n = 2;
const double settings[14] = {pow(2,17), pow(2.0,-3), pow(2.0,-0), 1.0e-08, 2.5e-15, 0, 0.2, 0.1, 5.0e-03, pow(2.0,8), 1.0e-20, 1.0e-03, 1.0e-04, 1.0e-02};
// [t_max, dt_init, dt_max, soft body energy loss, VdW attraction, VdW repulsion (Deprecated), mu_static, mu_dynamic, soft body parameter, render warp, magnetic force constant, setae length, drag constant...
//, particle comms range] 
 
const int net_size = 64; //total # of neurons per cell
const int surface_blocks = 32; //# of surface input neurons on each cell
const int NN_outputs = 3;
const int n_swaps = 2;
const int workgroup_size = 1; // set around 32-64 for GPU, 1 for CPU
const int nDevs = 1; // leave as 1 unless running MultiDev version of code
int Devs[3] = { 0, 1, 2 }; // 1st entry should be # of device on which code is to be run (see OpenCL_dev_info output)
int block_size = 2; // Size of blocks for partitioning of particle interaction calculations 
int write_neurons = 0;
int t_test = pow(2.0,14); // Number of integraiton steps to run for time estimation
int Neural_eval_inter = 128; // length of time (seconds) after which rotational kinetic energy is dumped/zeroed
int use_NN = 0; // toggle between using Neural net to control magnetic dipole moment or using analytically defined 

//----------------------------------------------------------------------------------//

const double warp = settings[9];
int NN_eval_freq = ((Neural_eval_inter*64)/warp);
double ranges[2] =  { 24e-2 , 64e-2 };
const double max_time = settings[0];
int n_block[3] = { block_size, block_size-1, block_size/2 };

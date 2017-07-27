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

const int n = 2048;
const double settings[15] = {pow(2,2), pow(2.0,-12), pow(2.0,-12), 8.0e-02, 3.0e-16, 0, 0.5, 0.4, 2.0e-01, pow(2.0,-6), 2.0e-18, 4.0e-03, 0.0e+00, 3.0e-02, 1.0e-2};
// [t_max, dt_init, dt_max, soft body energy loss, VdW attraction, VdW repulsion (Deprecated), mu_static, mu_dynamic, soft body parameter, render warp, magnetic force constant, setae length, drag constant...
//, particle comms range, VdW pseudopotential cut-off] 
 
const int net_size = 64; //total # of neurons per cell
const int surface_blocks = 32; //# of surface input neurons on each cell
const int NN_outputs = 3;
const int n_swaps = 1;
const int workgroup_size = 32; // set around 32-64 for GPU, 1 for CPU
const int nDevs = 1; // leave as 1 unless running MultiDev version of code
int Devs[3] = { 0, 1, 2 }; // 1st entry should be # of device on which code is to be run (see OpenCL_dev_info output)
int platform_choice = 0;
int block_size = 512; // Size of blocks for partitioning of particle interaction calculations 
int write_neurons = 0;
int t_test = pow(2.0,8); // Number of integraiton steps to run for time estimation 
double Neural_eval_inter = pow(2,14); // length of time (seconds) after which rotational kinetic energy is dumped/zeroed
int use_NN = 0; // toggle between using Neural net to control magnetic dipole moment or using analytically defined 

//----------------------------------------------------------------------------------//

const double warp = settings[9];
int NN_eval_freq = ((Neural_eval_inter*64)/warp);
double ranges[2] =  { 10e-2 , 15e-2 };
const double max_time = settings[0];
int n_block[3] = { block_size, block_size-1, block_size/2 };





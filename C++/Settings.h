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

const int n = 128;
const double settings[13] = {pow(2,19), pow(2.0,-0), pow(2.0,-0), 1.0e-03, 2.5e-15, 0, 0.3, 0.2, 5.0e-03, pow(2.0,10), 5.0e-18, 1.0e-03, 2.0e+03};
// [ t_max, dt_init, dt_max, soft body energy loss, VdW attraction, VdW repulsion (Deprecated), mu_static, mu_dynamic, soft body parameter, render warp, magnetic force constant, setae length, drag constant] 
 
const int net_size = 64; //total # of neurons per cell
const int surface_blocks = 32; //# of surface input neurons on each cell
const int NN_outputs = 3;
const int workgroup_size = 1; // set around 32-64 for GPU, 1 for CPU
const int nDevs = 1; // leave as 1 unless running MultiDev version of code
int Devs[3] = { 0, 1, 2 }; // 1st entry should be # of device on which code is to be run (see OpenCL_dev_info output)
int block_size = 128; // Size of blocks for partitioning of particle interaction calculations 

int t_test = pow(2.0,10); // Number of integraiton steps to run for time estimation 
int Tw_dump_rate = 64; // length of time (seconds) after which rotational kinetic energy is dumped/zeroed


//----------------------------------------------------------------------------------//

const double warp = settings[9];
int energy_dump = ((Tw_dump_rate*64)/warp);
double ranges[2] =  { 24e-2 , 64e-2 };
const double max_time = settings[0];
int n_block[3] = { block_size, block_size-1, 0.5*block_size };


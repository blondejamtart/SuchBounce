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

const int n = 512;
const double settings[10] = {pow(2,18), pow(2.0,-3), pow(2.0,-3), 1.0e-03, 2.5e-16, 0, 0.8, 0.7, 1.0e-02, pow(2.0,8)};
// [ t_max, dt_init, dt_max, soft body energy loss, VdW attraction, VdW repulsion (Deprecated), mu_static, mu_dynamic, soft body parameter, render warp]  

const double max_time = settings[0];
const double warp = settings[9];
const int workgroup_size = 1;
const int nDevs = 1;
int Devs[3] = { 0, 1, 2 };
int n_block[3] = { 64, 63, 32 };
double ranges[2] =  { 24e-2 , 64e-2 };
int t_test = pow(2.0,12);



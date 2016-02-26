#define __CL_ENABLE_EXCEPTIONS
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
const double settings[10] = {pow(2,4), pow(2.0,-6), pow(2.0,-6), 1e+00, 2.1e-16, 0, 0, 0, 1e+01, pow(2.0,2)};
// [ t_max, dt_init, dt_min, soft body energy loss, VdW attraction, VdW repulsion (Deprecated), mu_static, mu_dynamic, soft body parameter, render warp]  

const double max_time = settings[0];
const double warp = settings[9];
const int workgroup_size = 64;
const int nDevs = 2;
int Devs[3] = { 1, 0, 2 };
int n_block[3] = {512, 511, 256};

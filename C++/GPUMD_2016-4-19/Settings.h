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
const double settings[10] = {pow(2,6), pow(2.0,-8), pow(2.0,-8), 1e-02, 2e-16, 0.0, 0.4, 0.3, 1e-02, pow(2.0,4)};
// [ t_max, dt_init, dt_min, soft body energy loss, VdW attraction, VdW repulsion (Deprecated), mu_static, mu_dynamic, soft body parameter, render warp]  

const double max_time = settings[0];
const double warp = settings[9];
const int workgroup_size = 64;
const int nDevs = 2;
int Devs[8] = { 1, 0, 2, 3, 4, 5, 6, 7 };
double ranges[2] = { 10e-2, 5e-1 };
int n_block[3] = { 1024, 1023, 512 };

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
const int n = 3;
const double settings[9] = {pow(2,16), pow(2.0,-4), 0, 2.1e-16, 0, 0, 0, 1e-03, pow(2.0,8)};
const double max_time = pow(2,16);
const double warp = pow(2.0,8);

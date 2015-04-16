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

//Settings:
const int n = 514;
const double settings[9] = {pow(2,10), pow(2.0,-4), 1.0e-011, 5e-18, 0, 0.3, 0.3, 1.0e+01, pow(2.0,5)};
const double max_time = pow(2,10);
const double warp = pow(2.0,5);

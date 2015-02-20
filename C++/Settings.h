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
const int n = 189;
double r[189][4] = { { -3.6007738952686e+06, +6.8713164525017e+06, 0.0, 0.0}, {0.0, 0.0, 0.0, 0.0} };
double v[189][4] = { 0 };
double w[189][4] = { 0 };
double q[189] = { 0 };
double m[189] = { 0.5, 5.972e24 };
double rad[189] = { 0.05, 6.371e6 };
const double settings[9] = { pow(2, 11), 0.5, 0.0, 5e-19, 2, 0.0, 0.0, 5.0, 128 };
const double max_time = pow(2, 11);
const double warp = 128;

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
const int n = 3;
double r[3][4] = { {-2.944664537006607e+08, 8.862094573279311e+07, 0, 0}, {-2.944664532986608e+08, 8.862094573279311e+07, 0, 0}, {0, 0, 0, 0}};
double v[3][4] = {{1.593224683206409e+03, -2.319437877430860e+02, 0, 0}, {1.593224683206409e+03, -2.319443044186128e+02, 0, 0}, {0, 0, 0, 0}};
double w[3][4] = { 0 };
double q[3] = { 0 };
double m[3] = { 800.0, 800.0, 5.972e24 };
double rad[3] = { 0.2, 0.2, 6.371e6 };
const double settings[9] = {pow(2,18), pow(2.0,-2), 3.0, 5e-19, 0, 0.5, 0.5, 80, 512.0};
const double max_time = pow(2, 18);
const double warp = 512.0;

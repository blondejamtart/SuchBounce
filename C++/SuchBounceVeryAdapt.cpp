#include <iostream>
#include <fstream>
#include <string>
#include <cmath>
#include <CL/cl.hpp>

using namespace std;

//Settings:
const int n = 3;
const double r[3][3] = {{-2.9446645349966073e8+55, 8.862094573279311e7, 0.0}, {-2.9446645349966073e8-55, 8.862094573279311e7, 0.0}, {0.0, 0.0, 0.0}};
const double v[3][3] = {{1593.528887871104, -231.98833265355293, 0.0}, {1593.528887871104, -231.98833265355293, 0.0}, {0.0, 0.0, 0.0}};
const double w[3][3] = {{0.0, 0.0, 0.0}, {0.0, 0.0, 0.0}, {0.0, 0.0, 0.0}};
const double q[3] = {0, 0, 0};
const double m[3] = {3.5e8, 3.5e8, 5.972e24};
const double rad[3] = {50, 50, 6.371e6};
const double settings[9] =  {2^18, 0.5, 0.0, 5e-19, 16, 0.0, 0.0, 5.0, 1024.0};

//Auto-stuff	
double warp = settings[8];
double stuff[11] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
double t_step = 0;
const int n_el = (1/2*n*(n-1));

// Calculate interval between data samples for output	
const int n_frames = floor(settings[0]*64/warp);

int main() {
	if (n_frames > settings[0]/stuff[4])
	{	
		cout << "Insufficient frames for specified warp; frame intervals will be wierd\r\n";
	}
	stuff[6] = settings[6];
	stuff[5] = settings[5];
	stuff[4] = settings[4];	
	int max_time = settings[0];
	stuff[1] = settings[1];
	stuff[2] = settings[2];
	stuff[3] = settings[3];
	stuff[7] = 6.67384e-11;
	stuff[8] = -6.67384e-11; //(4*pi*8.85419e-12)^-1; // electrostatic force constant
	stuff[9] = settings[7];
	stuff[10] = settings[4];
	stuff[11] = settings[1];

	int framecount = 0;
	int tempcount = 0;
	double r_tracker[4][n][n_frames] = {0};
	double Tv_tracker[n][n_frames] = {0};
	double Tw_tracker[n][n_frames] = {0};
	double V_tracker[n][n_frames] = {0};
	double Int_tracker[n][n_frames] = {0};
	double I[n] = {0};
	int l1[n] = {0};
	int l2[n] = {0};
	short l3[n][n_el] = {0};
	short l4[n] = {0};
	double external[4][n] = {0};

	for (int x=0; x<n; x++)
	{
	I[x] = (2*m[x]*(pow(rad[x],2))/5);
	}
	
	for (int x=0; x<n; x++)
	{
		for (int y=0; y<(x-1); y++)	
		{	
		int i = (0.5*(x-1)*(x-2)+y)-1;	
		l1[i] = x;
		l2[i] = y;
		l3[i][x] = -1;
		l3[i][y] = 1;
		}
	}
	
	double v_norm[3] = {0};

	for (x=0; x<n; x++)
	{
		v_norm[x] = norm(v[:,x]);
	}

	//Buffers!
	nbuff = cl::Buffer buff(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, 2, int {n_el, n}, &error);
	l4buff = cl::Buffer buff(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, sizeof(l4), l4, &error);
	l3buff = cl::Buffer buff(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, sizeof(l4), l3, &error);
	l2buff = cl::Buffer buff(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, sizeof(l4), l2, &error);
	l1buff = cl::Buffer buff(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, sizeof(l4), l1, &error);


	double t_now = 0;
	double t_last = 0;


	cout << "Simulation complete!\n";

}

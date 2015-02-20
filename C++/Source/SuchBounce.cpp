#include "../Settings.h"

//Auto-stuff
double stuff[11] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
double t_step = 0;
const int n_el = (0.5)*n*(n - 1);

// Calculated interval between data samples for output	
const int n_frames = (max_time * 64 / warp);

std::string arraytostring(double a[n][4], int n)
{	
	std::string out = "[";
	for (int j = 0; j < n; j++)
	{
		for (int k = 0; k < 3; k++)
		{	
			char temp[25];
			sprintf(temp, "%+.13e", a[j][k]);
			out.append(std::string(temp));
			if (k != 2){out.append(", "); }		
		}
		if (j != (n - 1)){ out.append("; "); }
	}
	out.append("]\n");
	return out;
}

std::string arraytostring(double a[n], int n)
{
	std::string out = "[";
	for (int j = 0; j < n; j++)
	{
			char temp[25];
			sprintf(temp, "%+.13e", a[j]);
			out.append(std::string(temp));
			if (j != (n-1)){ out.append(", "); }
	}
	out.append("]\n");
	return out;
}

cl::Kernel kernel_init(std::string file, std::string ker_func, cl::Context ctx, std::vector<cl::Device> ctxdev)
{
	std::ifstream programFile(file);
	std::string programString(std::istreambuf_iterator<char>(programFile), (std::istreambuf_iterator<char>()));
	cl::Program::Sources source(1, std::make_pair(programString.c_str(), programString.length()+1));
	cl::Program program(ctx, source);
	program.build(ctxdev, "-cl-finite-math-only");	
	cl::Kernel kernel(program, ker_func.c_str());
	return kernel;
}


int main() {

	stuff[0] = settings[1];
	stuff[1] = settings[2];
	stuff[2] = settings[3];
	//stuff[3] = settings[4];
	stuff[4] = settings[5];
	stuff[5] = settings[6];
	stuff[6] = 6.67384e-11;
	stuff[7] = -6.67384e-11;// + 0 * pow((4 * 3.141592654*8.85419e-12), -1); // electrostatic force constant
	stuff[8] = settings[7];
	stuff[9] = settings[4];
	stuff[10] = settings[1];

	if (n_frames > max_time/stuff[9])
	{	
		std::cout << "Insufficient frames for specified warp; frame intervals will be wierd\r\n";
	}

	int framecount = 0;
	int tempcount = 0;
	double E_temp[n] = { 0 };
	double I[n];
	int l1[n];
	int l2[n];
	short l3[n][n_el] = {0};
	//short l4[n] = {0};
	int n0[2] = { n_el, n };

	for (int x=0; x<n; x++)
	{
	I[x] = (2*m[x]*(pow(rad[x],2))/5);
	}
	
	for (int x=1; x<n; x++)
	{
		for (int y=0; y<x; y++)	
		{	
		int i = (0.5*x*(x-1)+y);	
		l1[i] = x;
		l2[i] = y;
		l3[x][i] = -1;
		l3[y][i] = 1;
		}
	}	
	
	// OpenCL Context Sorcery
	std::vector<cl::Platform> platforms;
	std::vector<cl::Device> platformDevices, allDevices, conDev;
	std::string device_name;
	cl::Device DevChoice;

	cl::Platform::get(&platforms);
	platforms[0].getDevices(CL_DEVICE_TYPE_ALL, &platformDevices);
	
	cl::Context ctx(platformDevices);
	conDev = ctx.getInfo<CL_CONTEXT_DEVICES>();
		
	std::cout << "Please Choose Device:\n\n";
	for (unsigned int i = 0; i < conDev.size(); i++)
	{
		device_name = conDev[i].getInfo<CL_DEVICE_NAME>();
		std::cout << "Device " << i << ": "
		<< device_name
		<< std::endl;
	}
	int nDev;
	std::cin >> nDev;
	std::vector<cl::Device> ctxDevices = { conDev[nDev] };
	cl::CommandQueue queue(ctx, ctxDevices[0]);

	// Build Kernels
	cl::Kernel ker_F = kernel_init("F_Hybrid.cl", "Fimp", ctx, ctxDevices);
	cl::Kernel ker_T = kernel_init("kinetic.cl", "Tstep", ctx, ctxDevices);
	cl::Kernel ker_r = kernel_init("position.cl", "rstep", ctx, ctxDevices);
	cl::Kernel ker_S = kernel_init("reduce.cl", "red", ctx, ctxDevices);
	cl::Kernel ker_t = kernel_init("translate.cl", "rmove", ctx, ctxDevices);
	cl::Kernel ker_v_0 = kernel_init("velocity.cl", "vstep", ctx, ctxDevices);
	cl::Kernel ker_v_1 = kernel_init("velocity.cl", "vstep", ctx, ctxDevices);
	cl::Kernel ker_0_0 = kernel_init("zero.cl", "zeroer", ctx, ctxDevices);
	cl::Kernel ker_0_1 = kernel_init("zero.cl", "zeroer", ctx, ctxDevices);
	cl::Kernel ker_scale = kernel_init("time_scaler.cl", "Scale", ctx, ctxDevices);

	// Assign Buffers
	double zerotemp_n_4[n][4] = { 0 };
	double zerotemp_nel_4[n_el][4] = { 0 };
	double zerotemp_4[4] = { 0 };
	cl::Buffer nbuff(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, sizeof(n0), n0);
	//cl::Buffer l4buff(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, sizeof(l4), l4);
	cl::Buffer l3buff(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, sizeof(l3), l3);
	cl::Buffer l2buff(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, sizeof(l2), l2);
	cl::Buffer l1buff(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, sizeof(l1), l1);
	cl::Buffer cbuff(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, sizeof(q), q);
	cl::Buffer mbuff(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, sizeof(m), m);
	cl::Buffer radbuff(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, sizeof(rad), rad);
	cl::Buffer Ibuff(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, sizeof(I), I);
	cl::Buffer tbuff(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, sizeof(stuff), stuff);
	cl::Buffer Ftmp(ctx, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, sizeof(double[4]),zerotemp_4);

	cl::Buffer rbuff(ctx, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, sizeof(r), r);
	cl::Buffer vbuff(ctx, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, sizeof(v), v);
	cl::Buffer wbuff(ctx, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, sizeof(w), w);

	cl::Buffer vincbuff(ctx, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, sizeof(zerotemp_nel_4), zerotemp_nel_4);
	cl::Buffer wincbuff(ctx, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, sizeof(zerotemp_nel_4), zerotemp_nel_4);
	cl::Buffer accelbuff(ctx, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, sizeof(r), zerotemp_n_4);
	cl::Buffer alphabuff(ctx, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, sizeof(r), zerotemp_n_4);

	cl::Buffer Vbuff(ctx, CL_MEM_READ_WRITE, ::size_t (8*n));
	cl::Buffer Vincbuff(ctx, CL_MEM_READ_WRITE, ::size_t (8*n_el));
	cl::Buffer Intbuff(ctx, CL_MEM_READ_WRITE, ::size_t (8*n));
	cl::Buffer Intincbuff(ctx, CL_MEM_READ_WRITE, ::size_t (8*n_el));
	cl::Buffer Tvbuff(ctx, CL_MEM_READ_WRITE, ::size_t (8*n));
	cl::Buffer Twbuff(ctx, CL_MEM_READ_WRITE, ::size_t (8*n));

	// Open output streams
	std::ofstream r_tracker("../Outputs/Particle_tracks.dat", std::ios::out);
	std::ofstream Tv_tracker("../Outputs/Tv_tracks.dat", std::ios::out);
	std::ofstream Tw_tracker("../Outputs/Tw_tracks.dat", std::ios::out);
	std::ofstream E_tracker("../Outputs/Int_tracks.dat", std::ios::out);
	std::ofstream V_tracker("../Outputs/V_tracks.dat", std::ios::out);
	std::ofstream v_tracker("../Outputs/v_tracks.dat", std::ios::out);
	std::ofstream w_tracker("../Outputs/w_tracks.dat", std::ios::out);


	//Set Kernel Arguments

	ker_F.setArg(0, cbuff);
	ker_F.setArg(1, mbuff);
	ker_F.setArg(2, Ibuff);
	ker_F.setArg(3, l1buff);
	ker_F.setArg(4, l2buff);
	ker_F.setArg(5, radbuff);
	ker_F.setArg(6, tbuff);
	ker_F.setArg(7, rbuff);
	ker_F.setArg(8, vbuff);
	ker_F.setArg(9, wbuff);
	ker_F.setArg(10, vincbuff);
	ker_F.setArg(11, wincbuff);
	ker_F.setArg(12, Vincbuff);
	ker_F.setArg(13, Intincbuff);
	ker_F.setArg(14, Ftmp);
	
	ker_S.setArg(0, vincbuff);
	ker_S.setArg(1, wincbuff);
	ker_S.setArg(2, accelbuff);
	ker_S.setArg(3, alphabuff);
	ker_S.setArg(4, l3buff);
	ker_S.setArg(5, mbuff);
	ker_S.setArg(6, Ibuff);
	ker_S.setArg(7, radbuff);
	ker_S.setArg(8, nbuff);
	ker_S.setArg(9, Vbuff);
	ker_S.setArg(10, Vincbuff);
	ker_S.setArg(11, Intbuff);
	ker_S.setArg(12, Intincbuff);

	ker_0_0.setArg(0, accelbuff);
	ker_0_0.setArg(1, Vbuff);
	ker_0_1.setArg(0, alphabuff);
	ker_0_1.setArg(1, Intbuff);

	ker_v_0.setArg(0, vbuff);
	ker_v_0.setArg(1, accelbuff);
	ker_v_1.setArg(0, wbuff);
	ker_v_1.setArg(1, alphabuff);

	ker_r.setArg(0, tbuff);
	ker_r.setArg(1, rbuff);
	ker_r.setArg(2, vbuff);

	ker_T.setArg(0, vbuff);
	ker_T.setArg(1, wbuff);
	ker_T.setArg(2, Tvbuff);
	ker_T.setArg(3, Twbuff);
	ker_T.setArg(4, mbuff);
	ker_T.setArg(5, Ibuff);

	cl::NDRange offset(0);
	cl::NDRange gsize1(n);
	cl::NDRange gsize2(n_el);
	cl::NDRange local_size(1);


	// Initialise timestep scaler
	double v_norm[3] = { 0 };
	double v_max = 0;
	for (int x = 0; x<n; x++)
	{
		v_norm[x] = sqrt(pow(v[x][0], 2) + pow(v[x][1], 2) + pow(v[x][2], 2));
		if (x > 0){ v_max = std::max(v_norm[x], v_norm[x - 1]); }
	}
	double F1[4] = { 0 };
	queue.enqueueNDRangeKernel(ker_F, offset, gsize2, local_size);
	queue.enqueueReadBuffer(Ftmp, CL_TRUE, ::size_t(0),::size_t(16) , &F1);
	double scaleset[4] = { F1[1], F1[1], v_max, v_max };
	cl::Buffer Fbuff(ctx, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, sizeof(scaleset), scaleset);
	ker_F.setArg(14, Fbuff);
	ker_v_0.setArg(2, Fbuff);
	ker_v_1.setArg(2, Ftmp);
	ker_scale.setArg(0, tbuff);
	ker_scale.setArg(1, Fbuff);
	
	// Initialise simulation
	double t_now = 0;
	double t_last = 0;
	double prog = 0;
	long counter = 0;
	std::string tempstring;

	std::cout << "Kernels & Buffers set: simulation started.\n";
	
	while (t_now < max_time)
	{
		queue.enqueueNDRangeKernel(ker_v_0, offset, gsize1, local_size); 	// Translational Kick
		queue.enqueueNDRangeKernel(ker_v_1, offset, gsize1, local_size);	// Rotational Kick
		queue.enqueueNDRangeKernel(ker_T, offset, gsize1, local_size); 		// Evaluate Kinetic Energy

		if (( t_now == 0 || (t_now - t_last) >= (1.0 / 64.0)*warp) && framecount < n_frames)
		{
			framecount++;
			queue.enqueueReadBuffer(rbuff, CL_TRUE, ::size_t(0), sizeof(r), &r);
			tempstring = arraytostring(r,n);
			r_tracker << tempstring;

			queue.enqueueReadBuffer(Vbuff, CL_TRUE, ::size_t(0), sizeof(E_temp), &E_temp);
			tempstring = arraytostring(E_temp, n);
			V_tracker << tempstring;

			queue.enqueueReadBuffer(Intbuff, CL_TRUE, ::size_t(0), sizeof(E_temp), &E_temp);
			tempstring = arraytostring(E_temp, n);
			E_tracker << tempstring;

			queue.enqueueReadBuffer(Tvbuff, CL_TRUE, ::size_t(0), sizeof(E_temp), &E_temp);
			tempstring = arraytostring(E_temp, n);
			Tv_tracker << tempstring;

			queue.enqueueReadBuffer(Twbuff, CL_TRUE, ::size_t(0), sizeof(E_temp), &E_temp);
			tempstring = arraytostring(E_temp, n);
			Tw_tracker << tempstring;

			queue.enqueueReadBuffer(vbuff, CL_TRUE, ::size_t(0), sizeof(v), &v);
			tempstring = arraytostring(v, n);
			v_tracker << tempstring;
			
			queue.enqueueReadBuffer(wbuff, CL_TRUE, ::size_t(0), sizeof(w), &w);
			tempstring = arraytostring(w, n);
			w_tracker << tempstring;
			

			t_last = t_now;
			prog = 100 * framecount / n_frames;				
			std::cout << prog << "%\r";

		}
		queue.enqueueReadBuffer(tbuff, CL_TRUE, ::size_t(0), sizeof(stuff), stuff);
		t_now += stuff[0];
		//queue.enqueueNDRangeKernel(ker_scale,offset,local_size,local_size); 	// Set new time step

		
		queue.enqueueNDRangeKernel(ker_0_0, offset, gsize1, local_size); 	// zero things
		queue.enqueueNDRangeKernel(ker_0_1, offset, gsize1, local_size); 	// zero things

		queue.enqueueNDRangeKernel(ker_r, offset, gsize1, local_size); 		// Drift

		queue.enqueueNDRangeKernel(ker_F, offset, gsize2, local_size); 		// Compute force
		queue.enqueueNDRangeKernel(ker_S, offset, gsize1, local_size);		// Reduce

		counter++;
		
		queue.enqueueNDRangeKernel(ker_v_0, offset, gsize1, local_size); 	// Translational Kick
		queue.enqueueNDRangeKernel(ker_v_1, offset, gsize1, local_size); 	// Rotational Kick

		//cl.call(queue, ker_t, n-1, nothing, rpbuff); 				// Make positions relative to particle 1
		//cl.call(queue, ker_t0, 1, nothing, rpbuff);

	}
  

	std::cout << "Simulation complete!\n";	
	//long hold = 0;
	//while (true)
	//{
		//hold++;
		//hold--;
	//}

	return 0;
}
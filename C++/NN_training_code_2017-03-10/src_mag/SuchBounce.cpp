#include "../Settings.h"

//Auto-stuff
double stuff[19] = { 0.0 };
double t_step = 0;
const int n_el = 0.5*n*(n-1);


// Calculated interval between data samples for output	
const int n_frames = (max_time * 64 / warp);


int string2array(std::string str, double* arr, int length)			// converts csv string to double array
{
	std::stringstream streamy(str);
	for (int i = 0; i < length; i++)
	{
		std::string tempstr;
		std::getline(streamy, tempstr, ',');
		arr[i] = std::stod(tempstr);
	}
	
}

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

std::string arraytostring(double a[n][net_size], int n)				
{	
	std::string out = "[";
	for (int j = 0; j < n; j++)
	{
		for (int k = 0; k < net_size; k++)
		{	
			char temp[25];
			sprintf(temp, "%+.13e", a[j][k]);
			out.append(std::string(temp));
			if (k != net_size - 1){out.append(", "); }		
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

cl::Kernel kernel_init(std::string file, std::string ker_func, cl::Context ctx, std::vector<cl::Device> ctxdev, std::ofstream &logfile) // Compiles, Builds and establishes OpenCL kernel from .cl source file
{
	logfile << "File: " << file << ":\n";
	std::stringstream tempstr;
	std::ifstream programFile(file);
	std::string programString(std::istreambuf_iterator<char>(programFile), (std::istreambuf_iterator<char>()));
	cl::Program::Sources source(1, std::make_pair(programString.c_str(), programString.length()+1));		
	cl::Program program(ctx, source);			
	try{ program.build(ctxdev, "-cl-finite-math-only"); }
	catch (cl::Error e)
	{
		std::cout << "File " << file << ": "
		<< e.what() << ";" << e.err() << "\n";
		
	}
	tempstr << program.getBuildInfo<CL_PROGRAM_BUILD_LOG>(ctxdev[0]);	
	logfile << tempstr.str().substr(0, tempstr.str().size()-1) << "\n";	
	logfile.flush();
		
	cl::Kernel kernel(program, ker_func.c_str());
	

	return kernel;
}

int main() 
{
	auto r = new double[n][4];
	auto r_controlled = new double[n/2][4];
	auto initial_orient = new double[n][4];
	auto v = new double[n/2][4];
	auto q = new double[n];
	auto m = new double[n];
	auto rad = new double[n];
	auto weights = new double[n/2][net_size][net_size];
	auto surf_temp = new double[n/2][net_size];//[surface_blocks];
	std::string path;
	std::string root = "../Setup";

	path = root + "/";
	std::ifstream r_in(path + "r.vec");
	std::ifstream v_in(path + "v.vec");
	std::ifstream rad_in(path + "rad.vec");	
	std::ifstream q_in(path + "q.vec");
	std::ifstream m_in(path + "m.vec");
	std::ifstream weight_in(path + "weights.vec");
	
	for (int i = 0; i < n; i++)
	{
		std::string r_str = "";
		std::string v_str = "";
		std::string q_str = "";
		std::string m_str = "";
		std::string rad_str = "";				
		double r_temp[4] = {0.0, 0.0, 0.0, 0.0};
		double v_temp[4] = {0.0, 0.0, 0.0, 0.0};
		double q_temp = 0.0;
		double rad_temp = 0.0;
		double m_temp = 0.0;		

		std::getline(r_in,r_str);
		std::getline(v_in,v_str);
		std::getline(q_in,q_str);
		std::getline(m_in,m_str);
		std::getline(rad_in,rad_str);
		
		string2array(r_str,r_temp,3);
		string2array(v_str,v_temp,3);	
		
		q_temp = std::stod(q_str);		
		m_temp = std::stod(m_str);		
		rad_temp = std::stod(rad_str);	
		
		q[i] = q_temp;
		rad[i] = rad_temp;
		m[i] = m_temp;
		
		for (int j = 0; j < 4; j++)
		{	
			initial_orient[i][j] = 0.0;	
			r[i][j] = r_temp[j];
			if (i < 0.5*n) { v[i][j] = v_temp[j]; }
			if (j == 0) { initial_orient[i][j] = 1.0; }
		}
	}
	//for (int i = 0; i<n; i++){std::cout << q[i] << "; "; }
	//std::cout <<"\n";
	for (int x = 0; x < n/2; x++)
	{
		for (int i = 0; i < net_size; i++)
		{
			std::string weight_str = "";						
			double weight_temp[net_size] = {0.0};			
			std::getline(weight_in, weight_str);					
			string2array(weight_str,weight_temp,net_size);	
			for (int j = 0; j < net_size; j++)
			{				
				weights[x][i][j] = weight_temp[j];
			}					
		}
	}
	for (int i = 0; i < 0.5*n; i++)
	{
		for (int j = 0; j < 4; j++)
		{
			r_controlled[i][j] = r[0][j];
		}
	}
		
	stuff[0] = settings[1];
	stuff[1] = settings[3];
	stuff[2] = settings[4];
	//stuff[3] = settings[5];
	stuff[4] = settings[6];
	stuff[5] = settings[7];
	stuff[6] = 6.67384e-11;
	stuff[7] = pow((4 * 3.141592654*8.85419e-12), -1); // electrostatic force constant
	stuff[8] = settings[8];
	stuff[9] = settings[2];
	stuff[10] = settings[1];
	stuff[11] = net_size;
	stuff[12] = surface_blocks;
	stuff[13] = NN_outputs;
	stuff[14] = settings[10];
	stuff[15] = settings[11];
	stuff[16] = settings[12]; 
	stuff[17] = settings[13];
	stuff[18] = settings[14];

	if (n_frames > max_time/stuff[9])
	{	
		std::cout << "Insufficient frames for specified warp; frame intervals will be wierd\r\n";
		std::cout << n_frames << "; " << (max_time/stuff[9]) << "\n";
	}

	int framecount = 0;
	int tempcount = 0;
	auto E_temp = new double[n/2];
	auto l1 = new int[n_el];
	auto l2 = new int[n_el];
	int n0[2] = { n_el, n };	

	//int count = 0;
	for (int i=0; i<n/2; i++)
	{
		for (int j = 1; j<n; j++)
		{
			int count = (j-1)+(n-1)*i;
			//std::cout << count << ";";
			l1[count] = i;
			l2[count] = j;			
		}
	}
	

	// OpenCL Context Sorcery
	std::vector<cl::Platform> platforms;
	std::vector<cl::Device> platformDevices, allDevices, conDev;
	std::string device_name;
	cl::Device DevChoice;
	int nDev;
	cl::Platform::get(&platforms);
	platforms[0].getDevices(CL_DEVICE_TYPE_ALL, &platformDevices);
	

	std::cout << "Please Choose Device:\n\n";
	for (unsigned int i = 0; i < platformDevices.size(); i++)
	{
		device_name = platformDevices[i].getInfo<CL_DEVICE_NAME>();
		std::cout << "Device " << i << ": "
		<< device_name
		<< std::endl;
	}
	//std::cin >> nDev;
	nDev = 0;
	std::vector<cl::Device> ctxDevices = { platformDevices[nDev] };
	cl::Context ctx(ctxDevices[0]);
	cl::CommandQueue queue(ctx, ctxDevices[0]);

	root = "../Outputs";	
	path = root + "/";

	std::ofstream OpenCL_log(path + "OpenCL_log.txt", std::ios::out);
	
		
	// Build Kernels
	cl::Kernel ker_F = kernel_init("F_Hybrid.cl", "Fimp", ctx, ctxDevices, OpenCL_log);
	cl::Kernel ker_T = kernel_init("kinetic.cl", "Tstep", ctx, ctxDevices, OpenCL_log);
	cl::Kernel ker_r = kernel_init("position.cl", "rstep", ctx, ctxDevices, OpenCL_log);
	cl::Kernel ker_S = kernel_init("reduce.cl", "red", ctx, ctxDevices, OpenCL_log);
	cl::Kernel ker_t = kernel_init("translate.cl", "rmove", ctx, ctxDevices, OpenCL_log);
	cl::Kernel ker_t0 = kernel_init("translate_0.cl", "rmove0", ctx, ctxDevices, OpenCL_log);
	cl::Kernel ker_v_0 = kernel_init("velocity.cl", "vstep", ctx, ctxDevices, OpenCL_log);
	cl::Kernel ker_0_0 = kernel_init("zero.cl", "zeroer", ctx, ctxDevices, OpenCL_log);		
	
	cl::Kernel ker_surface = kernel_init("surface_coverage.cl", "surface_coverage", ctx, ctxDevices, OpenCL_log);
	cl::Kernel ker_NN_inputs = kernel_init("NN_inputs.cl", "NN_inputs", ctx, ctxDevices, OpenCL_log);
	cl::Kernel ker_NN_run = kernel_init("NN_accel.cl", "neural_net", ctx, ctxDevices, OpenCL_log);
	cl::Kernel ker_NN_zero = kernel_init("NN_zero.cl", "NN_zero", ctx, ctxDevices, OpenCL_log);
	cl::Kernel ker_NN_accel = kernel_init("NN_accel_add.cl", "NN_accel", ctx, ctxDevices, OpenCL_log);
	
	cl::Kernel ker_joints = kernel_init("net_group.cl", "group_joints", ctx, ctxDevices, OpenCL_log);	
	
	// Assign Buffers
	double zerotemp_4[4] = { 0.0, 0.0, 0.0, 0.0 }; 


	cl::Buffer nbuff(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, sizeof(n0), n0);
	cl::Buffer l2buff(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, ::size_t(4*n_el), l2);
	cl::Buffer l1buff(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, ::size_t(4*n_el), l1);
	cl::Buffer cbuff(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, ::size_t(8*n), q);
	cl::Buffer mbuff(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, ::size_t(8*n), m);
	cl::Buffer radbuff(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, ::size_t(8*n), rad);
	cl::Buffer tbuff(ctx, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, sizeof(stuff), stuff);

	cl::Buffer rfixedbuff(ctx, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, ::size_t(4*n*8), r);	
	cl::Buffer rcontrolledbuff(ctx, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, ::size_t(4*0.5*n*8), r_controlled);
	cl::Buffer vbuff(ctx, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, ::size_t(4*0.5*n*8), v);

	cl::Buffer vincbuff(ctx, CL_MEM_READ_WRITE, ::size_t (8*n_el*4));
	cl::Buffer accelbuff(ctx, CL_MEM_READ_WRITE, ::size_t(4*0.5*n*8));

	cl::Buffer accelsumbuff(ctx, CL_MEM_READ_WRITE, ::size_t(4*0.5*n*8));

	cl::Buffer Vbuff(ctx, CL_MEM_READ_WRITE, ::size_t (8*0.5*n));
	cl::Buffer Vincbuff(ctx, CL_MEM_READ_WRITE, ::size_t (8*n_el));
	cl::Buffer Intbuff(ctx, CL_MEM_READ_WRITE, ::size_t (8*0.5*n));
	cl::Buffer Intincbuff(ctx, CL_MEM_READ_WRITE, ::size_t (8*n_el));
	cl::Buffer Tvbuff(ctx, CL_MEM_READ_WRITE, ::size_t (8*0.5*n));
	
	cl::Buffer coveragebuff(ctx, CL_MEM_READ_WRITE, ::size_t (8*surface_blocks*0.5*n));
	cl::Buffer activationbuff_t1(ctx, CL_MEM_READ_WRITE, ::size_t (8*net_size*0.5*n));
	cl::Buffer activationbuff_t0(ctx, CL_MEM_READ_WRITE, ::size_t (8*net_size*0.5*n));
	cl::Buffer weightsbuff(ctx, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, ::size_t(8*net_size*net_size*n/2), weights);	
	cl::Buffer orientbuff(ctx, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, ::size_t(4*0.5*n*8), initial_orient);	
	cl::Buffer accelNNbuff(ctx, CL_MEM_READ_WRITE, ::size_t(4*0.5*n*8));
	
	// Open output streams
	
	std::ofstream r_tracker(path + "Particle_tracks.dat", std::ios::out);
	std::ofstream Tv_tracker(path + "T_v_tracks.dat", std::ios::out);
	std::ofstream E_tracker(path + "E_int_tracks.dat", std::ios::out);
	std::ofstream V_tracker(path + "V_tracks.dat", std::ios::out);
	std::ofstream v_tracker(path + "v_tracks.dat", std::ios::out);
	std::ofstream coverage_tracker(path + "coverage_tracks.dat", std::ios::out);		

	//Set Kernel Arguments

	ker_F.setArg(0, cbuff);
	ker_F.setArg(1, mbuff);
	ker_F.setArg(2, l1buff);
	ker_F.setArg(3, l2buff);
	ker_F.setArg(4, radbuff);
	ker_F.setArg(5, tbuff);
	ker_F.setArg(6, rfixedbuff);
	ker_F.setArg(7, rcontrolledbuff);	
	ker_F.setArg(8, vbuff);
	ker_F.setArg(9, vincbuff);
	ker_F.setArg(10, Vincbuff);
	ker_F.setArg(11, Intincbuff);
	
	ker_S.setArg(0, vincbuff);
	ker_S.setArg(1, accelbuff);
	ker_S.setArg(2, mbuff);	
	ker_S.setArg(3, radbuff);
	ker_S.setArg(4, nbuff);
	ker_S.setArg(5, Vbuff);
	ker_S.setArg(6, Vincbuff);
	ker_S.setArg(7, Intbuff);
	ker_S.setArg(8, Intincbuff);

	ker_0_0.setArg(0, accelbuff);
	ker_0_0.setArg(1, Vbuff);
	ker_0_0.setArg(2, Intbuff);

	ker_v_0.setArg(0, vbuff);
	ker_v_0.setArg(1, accelbuff);
	ker_v_0.setArg(2, accelNNbuff);

	ker_r.setArg(0, tbuff);
	ker_r.setArg(1, rcontrolledbuff);
	ker_r.setArg(2, vbuff);
	
//	ker_t.setArg(0,rbuff);
//	ker_t0.setArg(0,rbuff);

	ker_T.setArg(0, vbuff);
	ker_T.setArg(1, Tvbuff);
	ker_T.setArg(2, mbuff);
	
	ker_surface.setArg(0, rcontrolledbuff);
	ker_surface.setArg(1, rfixedbuff);
	ker_surface.setArg(2, orientbuff);
	ker_surface.setArg(3, coveragebuff);
	ker_surface.setArg(4, nbuff); 
	ker_surface.setArg(5, radbuff);
	ker_surface.setArg(6, l1buff);
	ker_surface.setArg(7, l2buff);
	ker_surface.setArg(8, tbuff);

	ker_NN_inputs.setArg(0, activationbuff_t0);
	ker_NN_inputs.setArg(1, activationbuff_t1);
	ker_NN_inputs.setArg(2, coveragebuff);
	ker_NN_inputs.setArg(3, tbuff);

	ker_NN_run.setArg(0, weightsbuff);
	ker_NN_run.setArg(1, activationbuff_t0);
	ker_NN_run.setArg(2, activationbuff_t1);
	ker_NN_run.setArg(3, accelNNbuff);
	ker_NN_run.setArg(4, tbuff);
	ker_NN_run.setArg(5, rcontrolledbuff);
	
	ker_NN_accel.setArg(0, accelbuff);
	ker_NN_accel.setArg(1, accelNNbuff);
	
	cl::NDRange offset(0);
	cl::NDRange gsize1(0.5*n);
	cl::NDRange gsize1m(n-1);
	cl::NDRange NN_size(n);
	cl::NDRange unitsize(1);
	cl::NDRange gsize2(n_el);
	cl::NDRange local_size(1);		

	// Initialise simulation
	double t_now = 0;
	double t_last = 0;
	short int prog = 0;
	long counter = 0;
	std::string tempstring;

	queue.enqueueNDRangeKernel(ker_0_0, offset, gsize1, local_size); 	// zero things


	std::cout << "Kernels & Buffers set: simulation started.\n";
	//for (int i=0; i<100; i++){std::cout << "-";}
	std::cout << "\n";
	//clock_t t0 = clock();
	//clock_t t_temp = t0;
	
	time_t t0 = time(NULL);

	for(int init_x=0; init_x<512; init_x ++)
	{			
		queue.enqueueNDRangeKernel(ker_surface, offset, gsize1, local_size); 	// Calculate surface coverage of each particle		
		queue.enqueueNDRangeKernel(ker_NN_inputs, offset, gsize1, local_size); 	// Calculate input neuron activations			
		queue.enqueueNDRangeKernel(ker_NN_run, offset, gsize1, local_size); 	// Evaluate Neural net output			
		
		queue.enqueueNDRangeKernel(ker_v_0, offset, gsize1, local_size); 	// Translational Kick	
		queue.enqueueNDRangeKernel(ker_T, offset, gsize1, local_size); 		// Evaluate Kinetic Energy	
		
		queue.flush();
		queue.finish();		


		if (( t_now == 0 || (t_now - t_last) >= (1.0 / 64.0)*warp) && framecount < n_frames)
		{
			framecount++;
			if (floor(100 * framecount / n_frames) > 4+floor(prog))
			{
				prog = floor(100 * framecount / n_frames); 
				std::cout << prog << "%\n";
			}			
			
			queue.enqueueReadBuffer(rcontrolledbuff, CL_FALSE, ::size_t (0), ::size_t(4*0.5*n*8),r_controlled);
			tempstring = arraytostring(r_controlled,n/2);
			r_tracker << tempstring;

			queue.enqueueReadBuffer(Vbuff, CL_TRUE, ::size_t (0), ::size_t(8*0.5*n), E_temp);
			tempstring = arraytostring(E_temp, n/2);
			V_tracker << tempstring;

			queue.enqueueReadBuffer(Intbuff, CL_TRUE, ::size_t (0), ::size_t(8*0.5*n), E_temp);
			tempstring = arraytostring(E_temp, n/2);
			E_tracker << tempstring;

			queue.enqueueReadBuffer(Tvbuff, CL_TRUE, ::size_t (0), ::size_t(8*0.5*n), E_temp);
			tempstring = arraytostring(E_temp, n/2);
			Tv_tracker << tempstring;		

			queue.enqueueReadBuffer(accelNNbuff, CL_TRUE, ::size_t (0), ::size_t(4*0.5*n*8), v);
			tempstring = arraytostring(v, n/2);
			v_tracker << tempstring;
		
			if (write_neurons == 1)
			{				
				queue.enqueueReadBuffer(activationbuff_t0, CL_TRUE, ::size_t (0), ::size_t(8*net_size*n/2), surf_temp);
				tempstring = arraytostring(surf_temp, n/2);
				coverage_tracker << tempstring; 
			}			

			t_last = t_now;
			
		}				
		
		t_now += stuff[0];		
		
		queue.enqueueNDRangeKernel(ker_0_0, offset, gsize1, local_size); 	// zero things				
		queue.enqueueNDRangeKernel(ker_r, offset, gsize1, local_size); 		// Drift		
		queue.enqueueNDRangeKernel(ker_F, offset, gsize2, local_size); 		// Compute force			
		queue.enqueueNDRangeKernel(ker_S, offset, gsize1, local_size);		// Reduce	
		queue.enqueueNDRangeKernel(ker_v_0, offset, gsize1, local_size); 	// Translational Kick		
		
		//queue.enqueueNDRangeKernel(ker_t, offset, gsize1m, unitsize);		// Make positions relative to particle 1
		//queue.enqueueNDRangeKernel(ker_t0, offset, unitsize, unitsize);	
		queue.flush();
	}
	
	//clock_t t_elap = clock()-t0;
	time_t t_elap = difftime(time(NULL),t0);	
	float est_time = (1.0/512.0)*float(t_elap)*(float(max_time)/stuff[0]);
	int est_h = floor(est_time/3600);
	int est_m = floor((est_time/60)-60*est_h);
	int est_s = floor(est_time-60*est_m-3600*est_h);
	std::cout << "First 512 steps runtime: " << float(t_elap) << "s; Estimated run time: " << est_h << "h" << est_m << "m" << est_s << "s\n";

	while (t_now < max_time)
	{

		queue.enqueueNDRangeKernel(ker_surface, offset, gsize1, local_size); 	// Calculate surface coverage of each particle		
		queue.enqueueNDRangeKernel(ker_NN_inputs, offset, gsize1, local_size); 	// Calculate input neuron activations		
		queue.enqueueNDRangeKernel(ker_NN_run, offset, gsize1, local_size); 	// Evaluate Neural net output

		queue.enqueueNDRangeKernel(ker_v_0, offset, gsize1, local_size); 	// Translational Kick	
		queue.enqueueNDRangeKernel(ker_T, offset, gsize1, local_size); 		// Evaluate Kinetic Energy			
		
		queue.flush();
		queue.finish();		

		if (( t_now == 0 || (t_now - t_last) >= (1.0 / 64.0)*warp) && framecount < n_frames)
		{
			framecount++;
			if (floor(100 * framecount / n_frames) > 4+floor(prog))
			{
				prog = floor(100 * framecount / n_frames); 
				std::cout << prog << "%\n";
			}			
			
			queue.enqueueReadBuffer(rcontrolledbuff, CL_FALSE, ::size_t (0), ::size_t(4*0.5*n*8),r_controlled);
			tempstring = arraytostring(r_controlled,n/2);
			r_tracker << tempstring;

			queue.enqueueReadBuffer(Vbuff, CL_TRUE, ::size_t (0), ::size_t(8*0.5*n), E_temp);
			tempstring = arraytostring(E_temp, n/2);
			V_tracker << tempstring;

			queue.enqueueReadBuffer(Intbuff, CL_TRUE, ::size_t (0), ::size_t(8*0.5*n), E_temp);
			tempstring = arraytostring(E_temp, n/2);
			E_tracker << tempstring;

			queue.enqueueReadBuffer(Tvbuff, CL_TRUE, ::size_t (0), ::size_t(8*0.5*n), E_temp);
			tempstring = arraytostring(E_temp, n/2);
			Tv_tracker << tempstring;		

			queue.enqueueReadBuffer(accelNNbuff, CL_TRUE, ::size_t (0), ::size_t(4*0.5*n*8), v);
			tempstring = arraytostring(v, n/2);
			v_tracker << tempstring;		

			if (write_neurons == 1)
			{				
				queue.enqueueReadBuffer(activationbuff_t0, CL_TRUE, ::size_t (0), ::size_t(8*net_size*n/2), surf_temp);
				tempstring = arraytostring(surf_temp, n/2);
				coverage_tracker << tempstring; 
			}	

			t_last = t_now;
			
		}		
		
		t_now += stuff[0];		
		
		queue.enqueueNDRangeKernel(ker_0_0, offset, gsize1, local_size); 	// zero things			
		queue.enqueueNDRangeKernel(ker_r, offset, gsize1, local_size); 		// Drift
		queue.enqueueNDRangeKernel(ker_F, offset, gsize2, local_size); 		// Compute force
		queue.enqueueNDRangeKernel(ker_S, offset, gsize1, local_size);		// Reduce		
				
		queue.enqueueNDRangeKernel(ker_v_0, offset, gsize1, local_size); 	// Translational Kick		

		//queue.enqueueNDRangeKernel(ker_t, offset, gsize1m, unitsize);		// Make positions relative to particle 1
		//queue.enqueueNDRangeKernel(ker_t0, offset, unitsize, unitsize);	
		queue.flush();
		

	}
  

	std::cout << "\nSimulation complete!\n\n";
	t_elap = difftime(time(NULL),t0);
	std::cout << "Runtime was: " << float(t_elap) << "s\n";
	delete [] r;
	delete [] v;	
	delete [] q;
	delete [] m;
	delete [] rad;	
	delete [] E_temp;
	delete [] l1;
	delete [] l2; 	

	//long hold = 0;
	//while (true)
	//{
		//hold++;
		//hold--;
	//}

	return 0;
}

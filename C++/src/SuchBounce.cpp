#include "../Settings.h"

//Auto-stuff
double stuff[11] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
double t_step = 0;
const int n_el = (0.5)*n*(n - 1);


// Calculated interval between data samples for output	
const int n_frames = (max_time * 64 / warp);


int string2array(std::string str, double arr[4])
{
	std::string::size_type end0;
	std::string::size_type end1;
	arr[0] = std::stod(str,&end0);
	std::string c = str.substr(end0+1);
	arr[1] = std::stod(c,&end1);
	arr[2] = std::stod(c.substr(end1+2));
	return 1;
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


int main() 
{
	auto r = new double[n][4];
	auto v = new double[n][4];
	auto w = new double[n][4];	
	auto q = new double[n];
	auto m = new double[n];
	auto rad = new double[n];
	

	std::ifstream r_in("../Setup/r.vec");
	std::ifstream v_in("../Setup/v.vec");
	std::ifstream w_in("../Setup/w.vec");
	std::ifstream rad_in("../Setup/rad.vec");	
	std::ifstream q_in("../Setup/q.vec");
	std::ifstream m_in("../Setup/m.vec");
	
	for (int i = 0; i < n; i++)
	{
		std::string r_str = "";
		std::string v_str = "";
		std::string w_str = "";
		std::string q_str = "";
		std::string m_str = "";
		std::string rad_str = "";				
		double r_temp[4] = {0.0, 0.0, 0.0, 0.0};
		double v_temp[4] = {0.0, 0.0, 0.0, 0.0};
		double w_temp[4] = {0.0, 0.0, 0.0, 0.0};
		double q_temp = 0.0;
		double rad_temp = 0.0;
		double m_temp = 0.0;		

		std::getline(r_in,r_str);
		std::getline(v_in,v_str);
		std::getline(w_in,w_str);
		std::getline(q_in,q_str);
		std::getline(m_in,m_str);
		std::getline(rad_in,rad_str);
		
		string2array(r_str,r_temp);
		string2array(v_str,v_temp);
		string2array(w_str,w_temp);
		
		q_temp = std::stod(q_str);		
		m_temp = std::stod(m_str);		
		rad_temp = std::stod(rad_str);	
		
		q[i] = q_temp;
		rad[i] = rad_temp;
		m[i] = m_temp;
		
		for (int j = 0; j < 4; j++)
		{		
		r[i][j] = r_temp[j];
		v[i][j] = v_temp[j];
		w[i][j] = w_temp[j];		
		}
	}

		
	stuff[0] = settings[1];
	stuff[1] = settings[2];
	stuff[2] = settings[3];
	//stuff[3] = settings[4];
	stuff[4] = settings[5];
	stuff[5] = settings[6];
	stuff[6] = 6.67384e-11;
	stuff[7] = pow((4 * 3.141592654*8.85419e-12), -1); // electrostatic force constant
	stuff[8] = settings[7];
	stuff[9] = settings[4];
	stuff[10] = settings[1];

	if (n_frames > max_time/stuff[9])
	{	
		std::cout << "Insufficient frames for specified warp; frame intervals will be wierd\r\n";
	}

	int framecount = 0;
	int tempcount = 0;
	auto E_temp = new double[n];
	auto I = new double[n];
	auto l1 = new int[n_el];
	auto l2 = new int[n_el];
	auto l3 = new short[n][n_el];
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
			//std::cout << x << "/" << y << "/" << i << "\n";		
			for (int h=0; h<n; h++)
			{
				if (h==x){l3[x][i] = -1;}	
				if (h==y){l3[y][i] = 1;}							
				if (h!=x & h!=y){l3[h][i] = 0;}
			}
		}
		
	}	
	
	for (int x = 0; x<n; x++)
	{
		int num = 0;
		for (int y = 0; y<n_el; y++)
		{
			//std::cout << l3[x][y];
			num += pow(l3[x][y],2);
		}
		//std::cout << l3[x][n] << "\n\n";
		if (num != n-1) {std::cout << "fizz" << x << "\n";}
		
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
	double zerotemp_4[4] = { 0.0, 0.0, 0.0, 0.0 }; 
	::size_t vecsize = ::size_t(4*n*8);

	cl::Buffer nbuff(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, sizeof(n0), n0);
	cl::Buffer l3buff(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, ::size_t(2*(n)*n_el), l3);
	cl::Buffer l2buff(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, ::size_t(4*n_el), l2);
	cl::Buffer l1buff(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, ::size_t(4*n_el), l1);
	cl::Buffer cbuff(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, ::size_t(8*n), q);
	cl::Buffer mbuff(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, ::size_t(8*n), m);
	cl::Buffer radbuff(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, ::size_t(8*n), rad);
	cl::Buffer Ibuff(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, ::size_t(8*n), I);
	cl::Buffer tbuff(ctx, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, sizeof(stuff), stuff);
	cl::Buffer Ftmp(ctx, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, ::size_t (32), zerotemp_4);

	cl::Buffer rbuff(ctx, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, vecsize, r);
	cl::Buffer vbuff(ctx, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, vecsize, v);
	cl::Buffer wbuff(ctx, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, vecsize, w);

	cl::Buffer vincbuff(ctx, CL_MEM_READ_WRITE, ::size_t (8*n_el*4));
	cl::Buffer wincbuff(ctx, CL_MEM_READ_WRITE, ::size_t (8*n_el*4));
	cl::Buffer accelbuff(ctx, CL_MEM_READ_WRITE, vecsize);
	cl::Buffer alphabuff(ctx, CL_MEM_READ_WRITE, vecsize);

	cl::Buffer Vbuff(ctx, CL_MEM_READ_WRITE, ::size_t (8*n));
	cl::Buffer Vincbuff(ctx, CL_MEM_READ_WRITE, ::size_t (8*n_el));
	cl::Buffer Intbuff(ctx, CL_MEM_READ_WRITE, ::size_t (8*n));
	cl::Buffer Intincbuff(ctx, CL_MEM_READ_WRITE, ::size_t (8*n_el));
	cl::Buffer Tvbuff(ctx, CL_MEM_READ_WRITE, ::size_t (8*n));
	cl::Buffer Twbuff(ctx, CL_MEM_READ_WRITE, ::size_t (8*n));	


	// Open output streams
	std::ofstream r_tracker("../Outputs/Particle_tracks.dat", std::ios::out);
	std::ofstream Tv_tracker("../Outputs/T_v_tracks.dat", std::ios::out);
	std::ofstream Tw_tracker("../Outputs/T_w_tracks.dat", std::ios::out);
	std::ofstream E_tracker("../Outputs/E_int_tracks.dat", std::ios::out);
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
	double v_norm[n] = { 0 };

	double v_max = 0;


	for (int z = 0; z < n; z++)
	{		
		v_norm[z] = sqrt(pow(v[z][0], 2) + pow(v[z][1], 2) + pow(v[z][2], 2));
		if (z > 0){ v_max = std::max(v_norm[z], v_norm[z - 1]); }		
	}
	
	double F1[4] = { 0 };

	queue.enqueueNDRangeKernel(ker_F, offset, gsize2, local_size);
	
	queue.enqueueReadBuffer(Ftmp, CL_TRUE, ::size_t (0), ::size_t (32), &F1);
	
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
	short int prog = 0;
	long counter = 0;
	std::string tempstring;

	queue.enqueueNDRangeKernel(ker_0_0, offset, gsize1, local_size); 	// zero things
	queue.enqueueNDRangeKernel(ker_0_1, offset, gsize1, local_size); 	// zero things

	std::cout << "Kernels & Buffers set: simulation started.\n";
	//for (int i=0; i<100; i++){std::cout << "-";}
	std::cout << "\n";
	
	while (t_now < max_time)
	{
		
		queue.enqueueNDRangeKernel(ker_v_0, offset, gsize1, local_size); 	// Translational Kick

		queue.enqueueNDRangeKernel(ker_v_1, offset, gsize1, local_size);	// Rotational Kick

		queue.enqueueNDRangeKernel(ker_T, offset, gsize1, local_size); 		// Evaluate Kinetic Energy

		if (( t_now == 0 || (t_now - t_last) >= (1.0 / 64.0)*warp) && framecount < n_frames)
		{
			framecount++;
			if (floor(100 * framecount / n_frames) > 4+floor(prog)){prog = floor(100 * framecount / n_frames); std::cout << prog << "%\n";}		
			
			
			queue.enqueueReadBuffer(rbuff, CL_TRUE, ::size_t (0), vecsize, r);
			tempstring = arraytostring(r,n);
			r_tracker << tempstring;

			queue.enqueueReadBuffer(Vbuff, CL_TRUE, ::size_t (0), ::size_t(8*n), E_temp);
			tempstring = arraytostring(E_temp, n);
			V_tracker << tempstring;

			queue.enqueueReadBuffer(Intbuff, CL_TRUE, ::size_t (0), ::size_t(8*n), E_temp);
			tempstring = arraytostring(E_temp, n);
			E_tracker << tempstring;

			queue.enqueueReadBuffer(Tvbuff, CL_TRUE, ::size_t (0), ::size_t(8*n), E_temp);
			tempstring = arraytostring(E_temp, n);
			Tv_tracker << tempstring;
		
			queue.enqueueReadBuffer(Twbuff, CL_TRUE, ::size_t (0), ::size_t(8*n), E_temp);
			tempstring = arraytostring(E_temp, n);
			Tw_tracker << tempstring;

			queue.enqueueReadBuffer(vbuff, CL_TRUE, ::size_t (0), vecsize, v);
			tempstring = arraytostring(v, n);
			v_tracker << tempstring;
		
			queue.enqueueReadBuffer(wbuff, CL_TRUE, ::size_t (0), vecsize, w);
			tempstring = arraytostring(w, n);
			w_tracker << tempstring;
			

			t_last = t_now;
		

		}
		//queue.enqueueReadBuffer(tbuff, CL_TRUE, ::size_t(0), sizeof(stuff), stuff);
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
  

	std::cout << "\nSimulation complete!\n\n";
	delete [] r;
	delete [] v;
	delete [] w;
	delete [] q;
	delete [] m;
	delete [] rad;	
	delete [] E_temp;
	delete [] I;
	delete [] l1;
	delete [] l2; 
	delete [] l3;

	//long hold = 0;
	//while (true)
	//{
		//hold++;
		//hold--;
	//}

	return 0;
}

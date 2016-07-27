
#include "../Settings.h"

//Auto-stuff
double stuff[11] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
double t_step = 0;
const int n_el = (0.5)*n*(n - 1);


// Calculated interval between data samples for output	
const int n_frames = (max_time * 64 / warp);

template <typename T>
std::vector<T> &operator+=(std::vector<T> &A, const std::vector<T> &B)
{
    A.reserve( A.size() + B.size() );                // preallocate memory without erase original data
    A.insert( A.end(), B.begin(), B.end() );         // add B;
    return A;                                        // here A could be named AB
}


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
	try{ program.build(ctxdev, "-cl-finite-math-only"); }
	catch (cl::Error e)
	{
		std::cout << "File " << file << ": "
		<< e.what() << ";" << e.err() << "\n";
		
	}		
	cl::Kernel kernel(program, ker_func.c_str());
	return kernel;
}

cl::Buffer buffer_init(cl::Context ctx, ::size_t size)
{
	cl::Buffer new_buff(ctx, CL_MEM_READ_WRITE, size);
	return new_buff;
}

cl::Buffer buffer_init(cl::Context ctx, ::size_t size, int a)
{
	cl::Buffer new_buff(ctx, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, size, &a);
	return new_buff;
}

cl::Buffer buffer_init(cl::Context ctx, ::size_t size, int* a)
{
	cl::Buffer new_buff(ctx, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, size, a);
	return new_buff;
}

cl::Buffer buffer_init(cl::Context ctx, ::size_t size, double a[11])
{
	cl::Buffer new_buff(ctx, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, size, a);
	return new_buff;
}

cl::Buffer buffer_init(cl::Context ctx, ::size_t size, double a[n][4])
{
	cl::Buffer new_buff(ctx, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, size, a);
	return new_buff;
}

cl::CommandQueue queue_init(cl::Context ctx, cl::Device Dev)
{
	cl::CommandQueue tempqueue(ctx, Dev);
	return tempqueue; 
}


int main() 
{
	auto r = new double[n][4];
	auto v = new double[n][4];
	auto w = new double[n][4];	
	auto q = new double[n];
	auto m = new double[n];
	auto rad = new double[n];
	std::string path;
	std::string root = "../Setup";

	path = root + "/";
	std::ifstream r_in(path + "r.vec");
	std::ifstream v_in(path + "v.vec");
	std::ifstream w_in(path + "w.vec");
	std::ifstream rad_in(path + "rad.vec");	
	std::ifstream q_in(path + "q.vec");
	std::ifstream m_in(path + "m.vec");

	root = "../Outputs";	
	path = root + "/";
	std::ofstream log_out(path + "log.txt", std::ios::out);
	
	
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
	//for (int i = 0; i<n; i++){std::cout << q[i] << "; "; }
	//std::cout <<"\n";

		
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

	if (n_frames > max_time/stuff[9])
	{	
		log_out << long(time(NULL)) << ": Insufficient frames for specified warp; frame intervals will be wierd: ";
		log_out << n_frames << "; " << (max_time/stuff[9]) << "\n";
		log_out.flush();
	}

	int framecount = 0;
	int tempcount = 0;
	auto E_temp = new double[n];
	auto I = new double[n];
	auto l1 = new int[n_el];
	auto l2 = new int[n_el];
	auto l3 = new int[(n/n_block[0])*(n/n_block[0]+1)/2];
	auto l4 = new int[(n/n_block[0])*(n/n_block[0]+1)/2];
	auto l1temp = new int[n_block[2]*n_block[1]];
	auto l2temp = new int[n_block[2]*n_block[1]];
	auto l1_blocks = new int[n_block[2]*n_block[1]];
	auto l2_blocks = new int[n_block[2]*n_block[1]];
		
	int n0[5] = { n_el, n, n , n, n_block[0] };

	for (int x=0; x<n; x++)
	{
		I[x] = (2*m[x]*(pow(rad[x],2))/5);
		
	}
	
	for (int x=1; x<n_block[0]; x++)
	{
		for (int y=0; y<x; y++)	
		{	
			int i = (0.5*x*(x-1)+y);			
			l1temp[i] = x;
			l2temp[i] = y;
			l1_blocks[i] = x;
			l2_blocks[i] = y;			
		}
		
	}
	//for (int x=0; x<n/n_block[0]; x++)
	//{
	//	for (int y=0; y<x+1; y++)	
	//	{	
	//		int i = (0.5*x*(x-1)+y);			
	//		l3[i] = x;
	//		l4[i] = y;			
	//	}
	//	
	//}

	
	//for (int p=0; p<(n_block[2]*n_block[1]); p=p+n_block[2])
	//{
	//	int j = 0;
	//	for (int q=0; q<n_block[2]; q++)
	//	{
	//		int i = 0;
	//		int k = 0;			
	//		while(k == 0)			
	//		{	
	//			if (q != 0)
	//			{		
	//				for (int s=0; s<q; s++)
	//				{
	//					if (l1temp[i] == l1_n_block[0][p+s] || l1temp[i] == l2_n_block[0][p+s] || l2temp[i] == l1_n_block[0][p+s]  || l2temp[i] == l2_n_block[0][p+s]){j=1;}   
	//				}
	//			}		
	//			if (j == 0 && l1temp[i] != -1) {l1_n_block[0][p+q] = l1temp[i]; l2_n_block[0][p+q] = l2temp[i]; l1temp[i] = -1; l2temp[i] = -1; k = 1;}
	//			else{i++;}
	//			j = 0;
	//		}
	//	}
	//}

	int count[2] = { 0 };
	int offsets_0[(n/n_block[0])*((n/n_block[0])+1)/2]; 
	int offsets_1[int (pow(n,2)/pow(n_block[0],2))];
	offsets_0[0] = 0;
	for (int p = 0; p<(n/n_block[0]); p++)
	{
		for (int q = 0; q<p; q++)
		{
			offsets_0[count[1]+1] = offsets_0[count[1]] + n_block[0]*n_block[0];
			l3[count[1]] = p;
			l4[count[1]] = q;
			count[1]++;
        		for (int s = 0; s<n_block[0]; s++)
			{
            			for (int t = 0; t<n_block[0]; t++)
				{
                			l1[count[0]] = p*n_block[0] + t;
                			l2[count[0]] = q*n_block[0] + (s + t - n_block[0]*floor((s+t)/n_block[0]));
                			count[0]++;
				}
			}
		}
		
		offsets_0[count[1]+1] = offsets_0[count[1]] + n_block[2]*n_block[1];		
		l3[count[1]] = p; l4[count[1]] = p;
		count[1]++;
		for (int i=0; i<(n_block[2]*n_block[1]); i++)
		{    		
							
			l1[count[0]] = l1_blocks[i] + n_block[0]*p;
    			l2[count[0]] = l2_blocks[i] + n_block[0]*p;
    			count[0]++;
		}
		for (int u = 0; u<(n/n_block[0]); u++)
		{
			offsets_1[(n/n_block[0])*p+u] = n*p+u;
		}
    		
	}
	
	delete [] l1temp;
	delete [] l2temp; 
	delete [] l1_blocks;
	delete [] l2_blocks;
	

	// OpenCL Context Sorcery
	std::vector<cl::Platform> platforms;
	std::vector<cl::Device> platformDevices, allDevices, conDev;
	std::string device_name;
	cl::Device DevChoice;
	cl::Platform::get(&platforms);
	platforms[0].getDevices(CL_DEVICE_TYPE_ALL, &platformDevices);
	
		
	for (int i = 0; i < platformDevices.size(); i++)
	{
		device_name = platformDevices[i].getInfo<CL_DEVICE_NAME>();
	}
	
	std::vector<cl::Device> ctxDevices = { platformDevices[Devs[0]] };
	
	for (int i = 1; i < nDevs; i++)	
	{							
		ctxDevices += { platformDevices[Devs[i]] };				
	}
	
	 
	cl::Context ctx(ctxDevices);
	std::vector<cl::CommandQueue> queue = { queue_init(ctx, ctxDevices[0]) };
	for (int i = 1; i < nDevs; i++)
	{
		queue += { queue_init(ctx, ctxDevices[i]) };
	}
		
	
		
	// Build Kernels
	std::vector<cl::Kernel> ker_F = { kernel_init("F_Hybrid_mat.cl", "Fimp", ctx, ctxDevices) };
	std::vector<cl::Kernel> ker_Sp = { kernel_init("reduce_pairwise_MD.cl", "red_pair", ctx, ctxDevices) };
	std::vector<cl::Kernel> ker_S_interm = { kernel_init("reduce_MD_interm.cl", "red_copy", ctx, ctxDevices) };
	std::vector<cl::Kernel> ker_zero_inc =  { kernel_init("zero_increments.cl", "zero_incs", ctx, ctxDevices) };


	cl::Kernel ker_T = kernel_init("kinetic.cl", "Tstep", ctx, ctxDevices);
	cl::Kernel ker_r = kernel_init("position.cl", "rstep", ctx, ctxDevices);
	cl::Kernel ker_S = kernel_init("reduce_mat.cl", "red", ctx, ctxDevices);		
	cl::Kernel ker_t = kernel_init("translate.cl", "rmove", ctx, ctxDevices);
	cl::Kernel ker_t0 = kernel_init("translate_0.cl", "rmove0", ctx, ctxDevices);
	cl::Kernel ker_v_0 = kernel_init("velocity.cl", "vstep", ctx, ctxDevices);
	cl::Kernel ker_v_1 = kernel_init("velocity.cl", "vstep", ctx, ctxDevices);
	cl::Kernel ker_0_0 = kernel_init("zero.cl", "zeroer", ctx, ctxDevices);
	cl::Kernel ker_0_1 = kernel_init("zero.cl", "zeroer", ctx, ctxDevices);
	
		
	// Assign Buffers
	double zerotemp_4[4] = { 0.0, 0.0, 0.0, 0.0 };
	double onetemp[4] = { 1.0, 1.0, 1.0, 1.0 }; 
	::size_t vecsize = ::size_t(4*n*8);

	
//	cl::Buffer nbuffx(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, sizeof(n0), n0);
//	cl::Buffer l2buffx(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, ::size_t(4*n_el), l2);
//	cl::Buffer l1buffx(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, ::size_t(4*n_el), l1);
//	cl::Buffer cbuffx(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, ::size_t(8*n), q);
//	cl::Buffer mbuffx(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, ::size_t(8*n), m);
//	cl::Buffer radbuffx(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, ::size_t(8*n), rad);
//	cl::Buffer Ibuffx(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, ::size_t(8*n), I);


//	cl::Buffer tbuffx(ctx, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, sizeof(stuff), stuff);
//	cl::Buffer Ftmpx(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, ::size_t (32), onetemp);

//	cl::Buffer rbuffx(ctx, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, vecsize, r);
//	cl::Buffer vbuffx(ctx, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, vecsize, v);
//	cl::Buffer wbuffx(ctx, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, vecsize, w);


//	std::vector<cl::Buffer> l2buff = { l2buffx };
//	std::vector<cl::Buffer> l1buff { l1buffx };
//	std::vector<cl::Buffer> nbuff { nbuffx };
//	std::vector<cl::Buffer> cbuff = { cbuffx };
//	std::vector<cl::Buffer> mbuff = { mbuffx };
//	std::vector<cl::Buffer> radbuff = { radbuffx };
//	std::vector<cl::Buffer> Ibuff = { Ibuffx };

//	std::vector<cl::Buffer> tbuff = { tbuffx };
//	std::vector<cl::Buffer> Ftmp = { Ftmpx };

//	std::vector<cl::Buffer> rbuff = { rbuffx };
//	std::vector<cl::Buffer> vbuff = { vbuffx };
//	std::vector<cl::Buffer> wbuff = { wbuffx };

	std::vector<cl::Buffer> nbuff = { buffer_init(ctx, sizeof(n0), n0) };

	std::vector<cl::Buffer> l2buff = { buffer_init(ctx, ::size_t(4*n_el), l2) };
	std::vector<cl::Buffer> l1buff = { buffer_init(ctx, ::size_t(4*n_el), l1) };
	std::vector<cl::Buffer> cbuff = { buffer_init(ctx, ::size_t(8*n), q) };
	std::vector<cl::Buffer> mbuff = { buffer_init(ctx, ::size_t(8*n), m) };
	std::vector<cl::Buffer> radbuff = { buffer_init(ctx, ::size_t(8*n), rad) };
	std::vector<cl::Buffer> Ibuff = { buffer_init(ctx, ::size_t(8*n), I) };

	std::vector<cl::Buffer> tbuff = { buffer_init(ctx, sizeof(stuff), stuff) };
	std::vector<cl::Buffer> Ftmp = { buffer_init(ctx, ::size_t (32), onetemp) };

	std::vector<cl::Buffer> rbuff = { buffer_init(ctx, vecsize, r) };
	std::vector<cl::Buffer> vbuff = { buffer_init(ctx, vecsize, v) };
	std::vector<cl::Buffer> wbuff = { buffer_init(ctx, vecsize, w) };
	
	for (int i = 1; i < nDevs; i++)
	{
		rbuff += { buffer_init(ctx, vecsize, r) };		
		vbuff += { buffer_init(ctx, vecsize, v) };		
		wbuff += { buffer_init(ctx, vecsize, w) };

		nbuff += { buffer_init(ctx, sizeof(n0), n0) };
		l2buff += { buffer_init(ctx, ::size_t(4*n_el), l2) };
		l1buff += { buffer_init(ctx, ::size_t(4*n_el), l1) };
		cbuff += { buffer_init(ctx, ::size_t(8*n), q) };
		mbuff += { buffer_init(ctx, ::size_t(8*n), m) };
		radbuff += { buffer_init(ctx, ::size_t(8*n), rad) };
		Ibuff += { buffer_init(ctx, ::size_t(8*n), I) };

		tbuff += { buffer_init(ctx, sizeof(stuff), stuff) };
		Ftmp += { buffer_init(ctx, ::size_t (32), onetemp) };	
		
		ker_Sp += { kernel_init("reduce_pairwise_MD.cl", "red_pair", ctx, ctxDevices) };
		ker_S_interm += { kernel_init("reduce_MD_interm.cl", "red_copy", ctx, ctxDevices) };
		ker_F += { kernel_init("F_Hybrid_mat.cl", "Fimp", ctx, ctxDevices) };	
		ker_zero_inc +=  { kernel_init("zero_increments.cl", "zero_incs", ctx, ctxDevices) };

	}

	
	std::vector<cl::Buffer> vincbuff = { buffer_init(ctx,::size_t (8*n_block[0]*n_block[0]*4)) };
	std::vector<cl::Buffer> wincbuff = { buffer_init(ctx,::size_t (8*n_block[0]*n_block[0]*4)) };
	std::vector<cl::Buffer> offset_buff_0 = { buffer_init(ctx,::size_t (4), 0) };
	std::vector<cl::Buffer> offset_buff_1 = { buffer_init(ctx,::size_t (4), 0) };
	std::vector<cl::Buffer> Vincbuff = { buffer_init(ctx,::size_t (8*n_block[0]*n_block[0])) };
	std::vector<cl::Buffer> Intincbuff = { buffer_init(ctx,::size_t (8*n_block[0]*n_block[0])) };
	log_out << long(time(NULL)) << ": Attempting to split " << (pow(n,2)/pow(n_block[0],2)) << " ways...\n";	
	for (int i = 1; i<(pow(n,2)/pow(n_block[0],2)); i++)
	{
		vincbuff += { buffer_init(ctx,::size_t (8*n_block[0]*n_block[0]*4)) };
		wincbuff += { buffer_init(ctx,::size_t (8*n_block[0]*n_block[0]*4)) };
		Vincbuff += { buffer_init(ctx,::size_t (8*n_block[0]*n_block[0])) };
		Intincbuff += { buffer_init(ctx,::size_t (8*n_block[0]*n_block[0])) };		
	}
	
	for (int i = 1; i<0.5*(n/n_block[0])*((n/n_block[0])+1); i++)
	{
		offset_buff_0 += { buffer_init(ctx, ::size_t (4), offsets_0[i]) };
	}
	
	for (int i = 1; i<pow(n,2)/pow(n_block[0],2); i++)
	{
		offset_buff_1 += { buffer_init(ctx, ::size_t (4), offsets_1[i]) };
	}	
	
	log_out << long(time(NULL)) << ": Split particles into " << vincbuff.size() << " blocks\n";
	log_out.flush();

	
	cl::Buffer accelbuff(ctx, CL_MEM_READ_WRITE, vecsize);
	cl::Buffer alphabuff(ctx, CL_MEM_READ_WRITE, vecsize);

	cl::Buffer accelsumbuff(ctx, CL_MEM_READ_WRITE, ::size_t (8*n*n/n_block[0]*4));
	cl::Buffer alphasumbuff(ctx, CL_MEM_READ_WRITE, ::size_t (8*n*n/n_block[0]*4));
	cl::Buffer Vsumbuff(ctx, CL_MEM_READ_WRITE, ::size_t (8*n*n/n_block[0]));
	cl::Buffer Intsumbuff(ctx, CL_MEM_READ_WRITE, ::size_t (8*n*n/n_block[0]));

	cl::Buffer Vbuff(ctx, CL_MEM_READ_WRITE, ::size_t (8*n));
	cl::Buffer Intbuff(ctx, CL_MEM_READ_WRITE, ::size_t (8*n));
	cl::Buffer Tvbuff(ctx, CL_MEM_READ_WRITE, ::size_t (8*n));
	cl::Buffer Twbuff(ctx, CL_MEM_READ_WRITE, ::size_t (8*n));	

	
	// Open output streams
	
	std::ofstream r_tracker(path + "Particle_tracks.dat", std::ios::out);
	std::ofstream Tv_tracker(path + "T_v_tracks.dat", std::ios::out);
	std::ofstream Tw_tracker(path + "T_w_tracks.dat", std::ios::out);
	std::ofstream E_tracker(path + "E_int_tracks.dat", std::ios::out);
	std::ofstream V_tracker(path + "V_tracks.dat", std::ios::out);
	std::ofstream v_tracker(path + "v_tracks.dat", std::ios::out);
	std::ofstream w_tracker(path + "w_tracks.dat", std::ios::out);
	
	

	//Set Kernel Arguments
	for (int i = 0; i < nDevs ; i++) 
	{
		ker_F[i].setArg(0, cbuff[i]);
		ker_F[i].setArg(1, mbuff[i]);
		ker_F[i].setArg(2, Ibuff[i]);
		ker_F[i].setArg(3, l1buff[i]);
		ker_F[i].setArg(4, l2buff[i]);
		ker_F[i].setArg(5, radbuff[i]);
		ker_F[i].setArg(6, tbuff[i]);
		ker_F[i].setArg(7, rbuff[i]);
		ker_F[i].setArg(8, vbuff[i]);
		ker_F[i].setArg(9, wbuff[i]);
		int a = l3[i];
		int b = l4[i];		
		ker_F[i].setArg(10, vincbuff[a*(n/n_block[0])+b]);
		ker_F[i].setArg(11, wincbuff[a*(n/n_block[0])+b]);
		ker_F[i].setArg(14, Vincbuff[a*(n/n_block[0])+b]);
		ker_F[i].setArg(15, Intincbuff[a*(n/n_block[0])+b]);
		ker_F[i].setArg(12, vincbuff[b*(n/n_block[0])+a]);
		ker_F[i].setArg(13, wincbuff[b*(n/n_block[0])+a]);
		ker_F[i].setArg(16, Vincbuff[b*(n/n_block[0])+a]);
		ker_F[i].setArg(17, Intincbuff[b*(n/n_block[0])+a]);			
		ker_F[i].setArg(20, offset_buff_0[i]);
		ker_F[i].setArg(18, Ftmp[i]);
		ker_F[i].setArg(19, nbuff[i]);
		
		ker_Sp[i].setArg(0, vincbuff[i]);
		ker_Sp[i].setArg(1, wincbuff[i]);	
		ker_Sp[i].setArg(2, nbuff[i]);	
		ker_Sp[i].setArg(3, Vincbuff[i]);
		ker_Sp[i].setArg(4, Intincbuff[i]);

		ker_S_interm[i].setArg(2, accelsumbuff);
		ker_S_interm[i].setArg(3, alphasumbuff);
		ker_S_interm[i].setArg(4, nbuff[i]);
		ker_S_interm[i].setArg(5, Vsumbuff);
		ker_S_interm[i].setArg(7, Intsumbuff);
			
	}

	ker_S.setArg(0, accelsumbuff);
	ker_S.setArg(1, alphasumbuff);
	ker_S.setArg(9, Vsumbuff);
	ker_S.setArg(11, Intsumbuff);
	ker_S.setArg(2, accelbuff);
	ker_S.setArg(3, alphabuff);
	ker_S.setArg(4, mbuff[0]);
	ker_S.setArg(5, Ibuff[0]);
	ker_S.setArg(6, radbuff[0]);
	ker_S.setArg(7, nbuff[0]);
	ker_S.setArg(8, Vbuff);	
	ker_S.setArg(10, Intbuff);


	ker_0_0.setArg(0, accelbuff);
	ker_0_0.setArg(1, Vbuff);
	ker_0_1.setArg(0, alphabuff);
	ker_0_1.setArg(1, Intbuff);

	ker_v_0.setArg(0, vbuff[0]);
	ker_v_0.setArg(1, accelbuff);
	ker_v_1.setArg(0, wbuff[0]);
	ker_v_1.setArg(1, alphabuff);

	ker_r.setArg(0, tbuff[0]);
	ker_r.setArg(1, rbuff[0]);
	ker_r.setArg(2, vbuff[0]);
	
	ker_t.setArg(0,rbuff[0]);
	ker_t0.setArg(0,rbuff[0]);

	ker_T.setArg(0, vbuff[0]);
	ker_T.setArg(1, wbuff[0]);
	ker_T.setArg(2, Tvbuff);
	ker_T.setArg(3, Twbuff);
	ker_T.setArg(4, mbuff[0]);
	ker_T.setArg(5, Ibuff[0]);

	cl::NDRange offset(0);
	cl::NDRange gsize1(n);
	cl::NDRange gsize1m(n-1);
	cl::NDRange unitsize(1);
	std::vector<cl::NDRange> gsize2 = { n_el, ::size_t(n_block[2]*n_block[1]), ::size_t(n_block[0]*n_block[0]) };
	cl::NDRange local_size(workgroup_size);
	log_out << long(time(NULL)) << ": Kernels & Buffers set...\n";
	
	ker_v_0.setArg(2, Ftmp[0]);
	ker_v_1.setArg(2, Ftmp[0]);
	
	// Initialise simulation
	double t_now = 0;
	double t_last = 0;
	short int prog = 0;
	std::string tempstring;

	queue[0].enqueueNDRangeKernel(ker_0_0, offset, gsize1, local_size); 	// zero things
	queue[0].enqueueNDRangeKernel(ker_0_1, offset, gsize1, local_size); 	// zero things
	
	for (int i = 0; i < 0.5*(n/n_block[0])*(n/n_block[0]+1); i++)
	{
		int a = l3[i];
		int b = l4[i];
		int ind = i - nDevs*floor(i/nDevs);			
		queue[ind].flush();
		ker_zero_inc[ind].setArg(0, vincbuff[a*(n/n_block[0])+b]);
		ker_zero_inc[ind].setArg(1, wincbuff[a*(n/n_block[0])+b]);
		ker_zero_inc[ind].setArg(2, Vincbuff[a*(n/n_block[0])+b]);
		ker_zero_inc[ind].setArg(3, Intincbuff[a*(n/n_block[0])+b]);
		queue[ind].enqueueNDRangeKernel(ker_zero_inc[ind], offset, gsize2[2], local_size);
		queue[ind].flush();
		ker_zero_inc[ind].setArg(0, vincbuff[b*(n/n_block[0])+a]);
		ker_zero_inc[ind].setArg(1, wincbuff[b*(n/n_block[0])+a]);
		ker_zero_inc[ind].setArg(2, Vincbuff[b*(n/n_block[0])+a]);
		ker_zero_inc[ind].setArg(3, Intincbuff[b*(n/n_block[0])+a]);
		queue[ind].enqueueNDRangeKernel(ker_zero_inc[ind], offset, gsize2[2], local_size);
				
	}
	
	
	tempstring = arraytostring(r,n);
	r_tracker << tempstring;

	tempstring = arraytostring(v, n);
	int line_length = tempstring.length();
	v_tracker << tempstring;
	
	log_out << long(time(NULL)) << ": Space required for data: ~" << line_length*n_frames*4.0/(pow(1024.0,3)) << "GiB\n";

	log_out << long(time(NULL)) << ": Simulation started!\n";
	log_out.flush();	
	log_out << "\n";	
	
	time_t t0 = time(NULL);

	for(int init_x=0; init_x<t_test; init_x ++)
	{
		//std::cout << "Start\n";	std::cout.flush();
		queue[0].enqueueNDRangeKernel(ker_v_0, offset, gsize1, local_size); 	// Translational Kick

		queue[0].enqueueNDRangeKernel(ker_v_1, offset, gsize1, local_size);	// Rotational Kick
	
		queue[0].enqueueNDRangeKernel(ker_T, offset, gsize1, local_size); 		// Evaluate Kinetic Energy
		queue[0].finish();						
		//std::cout << "Reading...\n";	std::cout.flush();
		if (( t_now == 0 || (t_now - t_last) >= (1.0 / 64.0)*warp) && framecount < n_frames)
		{
			framecount++;
			if (floor(100 * framecount / n_frames) > 4+floor(prog))
			{
				prog = floor(100 * framecount / n_frames); 
				log_out << long(time(NULL)) << ": " << prog << "%; dt = " << stuff[0] << "s (" << stuff[10] << "s)\n";

				log_out.flush();
			}		
			
			tempstring = arraytostring(r,n);
			r_tracker << tempstring;

			tempstring = arraytostring(v, n);
			v_tracker << tempstring;

			tempstring = arraytostring(w, n);
			w_tracker << tempstring;

			queue[0].enqueueReadBuffer(Vbuff, CL_TRUE, ::size_t (0), ::size_t(8*n), E_temp);
			tempstring = arraytostring(E_temp, n);
			V_tracker << tempstring;

			queue[0].enqueueReadBuffer(Intbuff, CL_TRUE, ::size_t (0), ::size_t(8*n), E_temp);
			tempstring = arraytostring(E_temp, n);
			E_tracker << tempstring;

			queue[0].enqueueReadBuffer(Tvbuff, CL_TRUE, ::size_t (0), ::size_t(8*n), E_temp);
			tempstring = arraytostring(E_temp, n);
			Tv_tracker << tempstring;
		
			queue[0].enqueueReadBuffer(Twbuff, CL_TRUE, ::size_t (0), ::size_t(8*n), E_temp);
			tempstring = arraytostring(E_temp, n);
			Tw_tracker << tempstring;

			t_last = t_now;
			
		}

		//std::cout << "drifting...\n";	std::cout.flush();
		t_now += stuff[0];
				
		queue[0].enqueueNDRangeKernel(ker_0_0, offset, gsize1, local_size); 	// zero things
		queue[0].enqueueNDRangeKernel(ker_0_1, offset, gsize1, local_size); 	// zero things
		
	
		queue[0].enqueueNDRangeKernel(ker_r, offset, gsize1, local_size); 		// Drift		
		
		//std::cout << "updating....\n";	std::cout.flush();
		//! UPDATE variables between devices here
		queue[0].enqueueReadBuffer(rbuff[0], CL_TRUE, ::size_t (0), vecsize, r);
		queue[0].enqueueReadBuffer(vbuff[0], CL_TRUE, ::size_t (0), vecsize, v);
		queue[0].enqueueReadBuffer(wbuff[0], CL_TRUE, ::size_t (0), vecsize, w);
		
		for (int i = 1; i < nDevs; i++)
		{
			queue[i].enqueueWriteBuffer(rbuff[i], CL_TRUE, ::size_t (0), vecsize, r);
			queue[i].enqueueWriteBuffer(vbuff[i], CL_TRUE, ::size_t (0), vecsize, v);
			queue[i].enqueueWriteBuffer(wbuff[i], CL_TRUE, ::size_t (0), vecsize, w);
		}
		
		
		
		//!
		//std::cout << "calculating....\n";	std::cout.flush();
		for (int i = 0; i < 0.5*(n/n_block[0])*(n/n_block[0]+1); i++)
		{
			int a = l3[i];
			int b = l4[i];
			int ind = i - nDevs*floor(i/nDevs);			
			queue[ind].flush();
			//std::cout << offsets_0[i] << "\n";
			ker_F[ind].setArg(10, vincbuff[a*(n/n_block[0])+b]);
			ker_F[ind].setArg(11, wincbuff[a*(n/n_block[0])+b]);
			ker_F[ind].setArg(14, Vincbuff[a*(n/n_block[0])+b]);
			ker_F[ind].setArg(15, Intincbuff[a*(n/n_block[0])+b]);
			ker_F[ind].setArg(12, vincbuff[b*(n/n_block[0])+a]);
			ker_F[ind].setArg(13, wincbuff[b*(n/n_block[0])+a]);
			ker_F[ind].setArg(16, Vincbuff[b*(n/n_block[0])+a]);
			ker_F[ind].setArg(17, Intincbuff[b*(n/n_block[0])+a]);			
			ker_F[ind].setArg(20, offset_buff_0[i]);
			
			if (a == b) {queue[ind].enqueueNDRangeKernel(ker_F[ind], offset, gsize2[1], local_size); } 		// Compute force
			else { queue[ind].enqueueNDRangeKernel(ker_F[ind], offset, gsize2[2], local_size); } 
				
		}
		
		n0[3] = n_block[0];
		n0[2] = n_block[0];
		n0[1] = n_block[0];
		
		for (int i = 0; i < nDevs; i++)	{queue[i].enqueueWriteBuffer(nbuff[i], CL_TRUE, ::size_t (0), sizeof(n0), n0);}
		//std::cout << "reducing....\n";	std::cout.flush();
		for (int a = 0; a < (n/n_block[0]); a++)
		{
			for (int b = 0; b < (n/n_block[0]); b++)
			{		
				int ind_job = 0;				
				if (a >= b) {ind_job = (0.5*a*(a+1)+b);}
				else {ind_job = (0.5*b*(b+1)+a);}
				
				int ind_q = ind_job - nDevs*floor(ind_job/nDevs);				
				
				n0[2] = n0[1];
				queue[ind_q].flush();						
				ker_Sp[ind_q].setArg(0, vincbuff[a*(n/n_block[0])+b]);
				ker_Sp[ind_q].setArg(1, wincbuff[a*(n/n_block[0])+b]);
				ker_Sp[ind_q].setArg(3, Vincbuff[a*(n/n_block[0])+b]);
				ker_Sp[ind_q].setArg(4, Intincbuff[a*(n/n_block[0])+b]);
				while (n0[2] > 1)
				{			
					cl::NDRange gsizeRed(0.5*n0[1]*n0[2]);
					queue[ind_q].enqueueNDRangeKernel(ker_Sp[ind_q], offset, gsizeRed, local_size);
					n0[2] = 0.5*n0[2];
				}				
							
			}				
		}
				
		n0[1] = n;
		n0[2] = n/n_block[0];
		n0[3] = n;
		for (int i = 0; i < nDevs; i++)	{queue[i].enqueueWriteBuffer(nbuff[i], CL_TRUE, ::size_t (0), sizeof(n0), n0);}
		
		for (int i = 0; i < 0.5*(n/n_block[0])*(n/n_block[0]+1); i++) // Copy & collate blocks
		{	

			int a = l3[i];
			int b = l4[i];	
			int ind = i - nDevs*floor(i/nDevs);
			cl::NDRange gsizeRed(n_block[0]);
	
			if (a != b)
			{
			
				queue[ind].flush();
				ker_S_interm[ind].setArg(0, vincbuff[a*(n/n_block[0])+b]);
				ker_S_interm[ind].setArg(1, wincbuff[a*(n/n_block[0])+b]);
				ker_S_interm[ind].setArg(6, Vincbuff[a*(n/n_block[0])+b]);
				ker_S_interm[ind].setArg(8, Intincbuff[a*(n/n_block[0])+b]);
				ker_S_interm[ind].setArg(9, offset_buff_1[a*(n/n_block[0])+b]);			
						
				queue[ind].enqueueNDRangeKernel(ker_S_interm[ind], offset, gsizeRed, local_size);
			
				queue[ind].flush();
				ker_S_interm[ind].setArg(0, vincbuff[b*(n/n_block[0])+a]);
				ker_S_interm[ind].setArg(1, wincbuff[b*(n/n_block[0])+a]);
				ker_S_interm[ind].setArg(6, Vincbuff[b*(n/n_block[0])+a]);
				ker_S_interm[ind].setArg(8, Intincbuff[b*(n/n_block[0])+a]);
				ker_S_interm[ind].setArg(9, offset_buff_1[b*(n/n_block[0])+a]);			
					
				queue[ind].enqueueNDRangeKernel(ker_S_interm[ind], offset, gsizeRed, local_size);
			}
			else
			{
				queue[ind].flush();
				ker_S_interm[ind].setArg(0, vincbuff[a*(n/n_block[0])+b]);
				ker_S_interm[ind].setArg(1, wincbuff[a*(n/n_block[0])+b]);
				ker_S_interm[ind].setArg(6, Vincbuff[a*(n/n_block[0])+b]);
				ker_S_interm[ind].setArg(8, Intincbuff[a*(n/n_block[0])+b]);
				ker_S_interm[ind].setArg(9, offset_buff_1[a*(n/n_block[0])+b]);			
						
				queue[ind].enqueueNDRangeKernel(ker_S_interm[ind], offset, gsizeRed, local_size);			
			}	
		}
		//std::cout << "summing....\n";	std::cout.flush();
		ker_Sp[0].setArg(0, accelsumbuff);
		ker_Sp[0].setArg(1, alphasumbuff);
		ker_Sp[0].setArg(3, Vsumbuff);
		ker_Sp[0].setArg(4, Intsumbuff);		
		n0[1] = n/n_block[0];
		
		for (int i = 0; i < nDevs; i++)	{queue[i].enqueueWriteBuffer(nbuff[i], CL_TRUE, ::size_t (0), sizeof(n0), n0);}		
	
		while(n0[2] > 1)
		{			
			cl::NDRange gsizeRed(0.5*n*n0[2]);		
			queue[0].enqueueNDRangeKernel(ker_Sp[0], offset, gsizeRed, local_size);
			n0[2] = 0.5*n0[2];			
		}
	
		queue[0].enqueueNDRangeKernel(ker_S, offset, gsize1, local_size);

		queue[0].enqueueNDRangeKernel(ker_v_0, offset, gsize1, local_size); 	// Translational Kick
		queue[0].enqueueNDRangeKernel(ker_v_1, offset, gsize1, local_size); 	// Rotational Kick

		queue[0].enqueueNDRangeKernel(ker_t, offset, gsize1m, unitsize);		// Make positions relative to particle 1
		queue[0].enqueueNDRangeKernel(ker_t0, offset, unitsize, unitsize);	
		queue[0].enqueueReadBuffer(rbuff[0], CL_TRUE, ::size_t (0), vecsize, r);		

		queue[0].finish();
		
	}
	
	time_t t_elap = difftime(time(NULL),t0);	
	float est_time = (1.0/t_test)*float(t_elap)*(float(max_time)/stuff[0]);
	int est_h = floor(est_time/3600);
	int est_m = floor((est_time/60)-60*est_h);
	int est_s = floor(est_time-60*est_m-3600*est_h);
	log_out << long(time(NULL)) << ": First " << t_test << " steps runtime: " << float(t_elap) << "s; Estimated run time: " << est_h << "h" << est_m << "m" << est_s << "s\n";
	log_out.flush();

	while (t_now < max_time)
	{
		queue[0].enqueueNDRangeKernel(ker_v_0, offset, gsize1, local_size); 	// Translational Kick

		queue[0].enqueueNDRangeKernel(ker_v_1, offset, gsize1, local_size);	// Rotational Kick
	
		queue[0].enqueueNDRangeKernel(ker_T, offset, gsize1, local_size); 		// Evaluate Kinetic Energy
		queue[0].finish();						
	
		if (( t_now == 0 || (t_now - t_last) >= (1.0 / 64.0)*warp) && framecount < n_frames)
		{
			framecount++;
			if (floor(100 * framecount / n_frames) > 4+floor(prog))
			{
				prog = floor(100 * framecount / n_frames); 
				log_out << long(time(NULL)) << ": " << prog << "%; dt = " << stuff[0] << "s (" << stuff[10] << "s)\n";

				log_out.flush();
			}		
			
			tempstring = arraytostring(r,n);
			r_tracker << tempstring;

			tempstring = arraytostring(v, n);
			v_tracker << tempstring;

			tempstring = arraytostring(w, n);
			w_tracker << tempstring;

			queue[0].enqueueReadBuffer(Vbuff, CL_TRUE, ::size_t (0), ::size_t(8*n), E_temp);
			tempstring = arraytostring(E_temp, n);
			V_tracker << tempstring;

			queue[0].enqueueReadBuffer(Intbuff, CL_TRUE, ::size_t (0), ::size_t(8*n), E_temp);
			tempstring = arraytostring(E_temp, n);
			E_tracker << tempstring;

			queue[0].enqueueReadBuffer(Tvbuff, CL_TRUE, ::size_t (0), ::size_t(8*n), E_temp);
			tempstring = arraytostring(E_temp, n);
			Tv_tracker << tempstring;
		
			queue[0].enqueueReadBuffer(Twbuff, CL_TRUE, ::size_t (0), ::size_t(8*n), E_temp);
			tempstring = arraytostring(E_temp, n);
			Tw_tracker << tempstring;

			t_last = t_now;
			
		}

		
		t_now += stuff[0];
				
		queue[0].enqueueNDRangeKernel(ker_0_0, offset, gsize1, local_size); 	// zero things
		queue[0].enqueueNDRangeKernel(ker_0_1, offset, gsize1, local_size); 	// zero things
		
	
		queue[0].enqueueNDRangeKernel(ker_r, offset, gsize1, local_size); 		// Drift		
		
		//! UPDATE variables between devices here
		queue[0].enqueueReadBuffer(rbuff[0], CL_TRUE, ::size_t (0), vecsize, r);
		queue[0].enqueueReadBuffer(vbuff[0], CL_TRUE, ::size_t (0), vecsize, v);
		queue[0].enqueueReadBuffer(wbuff[0], CL_TRUE, ::size_t (0), vecsize, w);
		
		for (int i = 1; i < nDevs; i++)
		{
			queue[i].enqueueWriteBuffer(rbuff[i], CL_TRUE, ::size_t (0), vecsize, r);
			queue[i].enqueueWriteBuffer(vbuff[i], CL_TRUE, ::size_t (0), vecsize, v);
			queue[i].enqueueWriteBuffer(wbuff[i], CL_TRUE, ::size_t (0), vecsize, w);
		}
		//!

		for (int i = 0; i < 0.5*(n/n_block[0])*(n/n_block[0]+1); i++)
		{
			int a = l3[i];
			int b = l4[i];
			int ind = i - nDevs*floor(i/nDevs);			
			queue[ind].flush();
			//std::cout << offsets_0[i] << "\n";
			ker_F[ind].setArg(10, vincbuff[a*(n/n_block[0])+b]);
			ker_F[ind].setArg(11, wincbuff[a*(n/n_block[0])+b]);
			ker_F[ind].setArg(14, Vincbuff[a*(n/n_block[0])+b]);
			ker_F[ind].setArg(15, Intincbuff[a*(n/n_block[0])+b]);
			ker_F[ind].setArg(12, vincbuff[b*(n/n_block[0])+a]);
			ker_F[ind].setArg(13, wincbuff[b*(n/n_block[0])+a]);
			ker_F[ind].setArg(16, Vincbuff[b*(n/n_block[0])+a]);
			ker_F[ind].setArg(17, Intincbuff[b*(n/n_block[0])+a]);			
			ker_F[ind].setArg(20, offset_buff_0[i]);
			
			if (a == b) {queue[ind].enqueueNDRangeKernel(ker_F[ind], offset, gsize2[1], local_size); } 		// Compute force
			else { queue[ind].enqueueNDRangeKernel(ker_F[ind], offset, gsize2[2], local_size); } 
				
		}
	
		n0[3] = n_block[0];
		n0[2] = n_block[0];
		n0[1] = n_block[0];

		for (int i = 0; i < nDevs; i++)	{queue[i].enqueueWriteBuffer(nbuff[i], CL_TRUE, ::size_t (0), sizeof(n0), n0);}
		
		for (int a = 0; a < (n/n_block[0]); a++)
		{
			for (int b = 0; b < (n/n_block[0]); b++)
			{		
				int ind_job = 0;				
				if (a >= b) {ind_job = (0.5*a*(a+1)+b);}
				else {ind_job = (0.5*b*(b+1)+a);}
				
				int ind_q = ind_job - nDevs*floor(ind_job/nDevs);				
				
				n0[2] = n0[1];
				queue[ind_q].flush();						
				ker_Sp[ind_q].setArg(0, vincbuff[a*(n/n_block[0])+b]);
				ker_Sp[ind_q].setArg(1, wincbuff[a*(n/n_block[0])+b]);
				ker_Sp[ind_q].setArg(3, Vincbuff[a*(n/n_block[0])+b]);
				ker_Sp[ind_q].setArg(4, Intincbuff[a*(n/n_block[0])+b]);
				while (n0[2] > 1)
				{			
					cl::NDRange gsizeRed(0.5*n0[1]*n0[2]);
					queue[ind_q].enqueueNDRangeKernel(ker_Sp[ind_q], offset, gsizeRed, local_size);
					n0[2] = 0.5*n0[2];
				}				
							
			}				
		}
				
		n0[1] = n;
		n0[2] = n/n_block[0];
		n0[3] = n;
		for (int i = 0; i < nDevs; i++)	{queue[i].enqueueWriteBuffer(nbuff[i], CL_TRUE, ::size_t (0), sizeof(n0), n0);}
		
		for (int i = 0; i < 0.5*(n/n_block[0])*(n/n_block[0]+1); i++) // Copy & collate blocks
		{	

			int a = l3[i];
			int b = l4[i];	
			int ind = i - nDevs*floor(i/nDevs);
			cl::NDRange gsizeRed(n_block[0]);
	
			if (a != b)
			{
			
				queue[ind].flush();
				ker_S_interm[ind].setArg(0, vincbuff[a*(n/n_block[0])+b]);
				ker_S_interm[ind].setArg(1, wincbuff[a*(n/n_block[0])+b]);
				ker_S_interm[ind].setArg(6, Vincbuff[a*(n/n_block[0])+b]);
				ker_S_interm[ind].setArg(8, Intincbuff[a*(n/n_block[0])+b]);
				ker_S_interm[ind].setArg(9, offset_buff_1[a*(n/n_block[0])+b]);			
						
				queue[ind].enqueueNDRangeKernel(ker_S_interm[ind], offset, gsizeRed, local_size);
			
				queue[ind].flush();
				ker_S_interm[ind].setArg(0, vincbuff[b*(n/n_block[0])+a]);
				ker_S_interm[ind].setArg(1, wincbuff[b*(n/n_block[0])+a]);
				ker_S_interm[ind].setArg(6, Vincbuff[b*(n/n_block[0])+a]);
				ker_S_interm[ind].setArg(8, Intincbuff[b*(n/n_block[0])+a]);
				ker_S_interm[ind].setArg(9, offset_buff_1[b*(n/n_block[0])+a]);			
					
				queue[ind].enqueueNDRangeKernel(ker_S_interm[ind], offset, gsizeRed, local_size);
			}
			else
			{
				queue[ind].flush();
				ker_S_interm[ind].setArg(0, vincbuff[a*(n/n_block[0])+b]);
				ker_S_interm[ind].setArg(1, wincbuff[a*(n/n_block[0])+b]);
				ker_S_interm[ind].setArg(6, Vincbuff[a*(n/n_block[0])+b]);
				ker_S_interm[ind].setArg(8, Intincbuff[a*(n/n_block[0])+b]);
				ker_S_interm[ind].setArg(9, offset_buff_1[a*(n/n_block[0])+b]);			
						
				queue[ind].enqueueNDRangeKernel(ker_S_interm[ind], offset, gsizeRed, local_size);			
			}	
		}

		ker_Sp[0].setArg(0, accelsumbuff);
		ker_Sp[0].setArg(1, alphasumbuff);
		ker_Sp[0].setArg(3, Vsumbuff);
		ker_Sp[0].setArg(4, Intsumbuff);
		ker_S.setArg(0, accelsumbuff);
		ker_S.setArg(1, alphasumbuff);
		ker_S.setArg(9, Vsumbuff);
		ker_S.setArg(11, Intsumbuff);
		n0[1] = n/n_block[0];
		
		for (int i = 0; i < nDevs; i++)	{queue[i].enqueueWriteBuffer(nbuff[i], CL_TRUE, ::size_t (0), sizeof(n0), n0);}		
	
		while(n0[2] > 1)
		{			
			cl::NDRange gsizeRed(0.5*n*n0[2]);		
			queue[0].enqueueNDRangeKernel(ker_Sp[0], offset, gsizeRed, local_size);
			n0[2] = 0.5*n0[2];			
		}
	
		queue[0].enqueueNDRangeKernel(ker_S, offset, gsize1, local_size);

		queue[0].enqueueNDRangeKernel(ker_v_0, offset, gsize1, local_size); 	// Translational Kick
		queue[0].enqueueNDRangeKernel(ker_v_1, offset, gsize1, local_size); 	// Rotational Kick

		queue[0].enqueueNDRangeKernel(ker_t, offset, gsize1m, unitsize);		// Make positions relative to particle 1
		queue[0].enqueueNDRangeKernel(ker_t0, offset, unitsize, unitsize);	
		queue[0].enqueueReadBuffer(rbuff[0], CL_TRUE, ::size_t (0), vecsize, r);
		queue[0].finish();
		
	}
  	

	log_out << long(time(NULL)) << ": Simulation complete!\n\n";
	t_elap = difftime(time(NULL),t0);
	log_out << long(time(NULL)) << ": Runtime was: " << float(t_elap) << "s\n";
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
	delete [] l4;
	delete [] l3;
	
	//long hold = 0;
	//while (true)
	//{
		//hold++;
		//hold--;
	//}
	return 0;
}


for (int a = 0; a < (n/n_block[0]); a++)
{
	for (int b = 0; b < (n/n_block[0]); b++)
	{	
		int ind_job = 0;				
		if (a >= b) {ind_job = (0.5*a*(a+1)+b);}
		else {ind_job = (0.5*b*(b+1)+a);}
		
		int ind_q = ind_job - nDevs*floor(ind_job/nDevs);
	
		queue[ind_q].enqueueReadBuffer(vincbuff[a*(n/n_block[0])+b], CL_TRUE, ::size_t (0), ::size_t (8*n_block[0]*n_block[0]*4), incvectmp);
		queue[ind_q].enqueueReadBuffer(Vincbuff[a*(n/n_block[0])+b], CL_TRUE, ::size_t (0), ::size_t (8*n_block[0]*n_block[0]), incscaltmp);
		
		for (int i = 0; i < n_block[0]; i++)
		{	
			for (int j = 0; j < 4; j++){ vincset[4*a*n+i*(4*n/n_block[0])+b*4+j]  = incvectmp[i*n_block[0]*4+j];}
			Vincset[a*n+i*(n/n_block[0])+b]	= incscaltmp[i*n_block[0]];
		}
		
		queue[ind_q].enqueueReadBuffer(wincbuff[a*(n/n_block[0])+b], CL_TRUE, ::size_t (0), ::size_t (8*n_block[0]*n_block[0]*4), incvectmp);		
		queue[ind_q].enqueueReadBuffer(Intincbuff[a*(n/n_block[0])+b], CL_TRUE, ::size_t (0), ::size_t (8*n_block[0]*n_block[0]), incscaltmp);
	
		for (int i = 0; i < n_block[0]; i++)
		{	
			for (int j = 0; j < 4; j++){ wincset[4*a*n+i*(4*n/n_block[0])+b*4+j]  = incvectmp[i*n_block[0]*4+j];}
			Intincset[a*n+i*(n/n_block[0])+b] = incscaltmp[i*n_block[0]];				
		}
		queue[ind_q].enqueueWriteBuffer(vincbuff[a*(n/n_block[0])+b], CL_TRUE, ::size_t (0), ::size_t(8*n_block[0]*n_block[0]*4), incvec0);
		queue[ind_q].enqueueWriteBuffer(Vincbuff[a*(n/n_block[0])+b], CL_TRUE, ::size_t (0), ::size_t (8*n_block[0]*n_block[0]), incscal0);
		queue[ind_q].enqueueWriteBuffer(wincbuff[a*(n/n_block[0])+b], CL_TRUE, ::size_t (0), ::size_t (8*n_block[0]*n_block[0]*4), incvec0);
		queue[ind_q].enqueueWriteBuffer(Intincbuff[a*(n/n_block[0])+b], CL_TRUE, ::size_t (0), ::size_t (8*n_block[0]*n_block[0]), incscal0);
	}
}
queue[0].enqueueWriteBuffer(accelsumbuff, CL_TRUE, ::size_t (0), ::size_t (8*n*n/n_block[0]*4), vincset);
queue[0].enqueueWriteBuffer(alphasumbuff, CL_TRUE,  ::size_t (0),::size_t (8*n*n/n_block[0]*4), wincset);
queue[0].enqueueWriteBuffer(Vsumbuff, CL_TRUE, ::size_t (0), ::size_t (8*n*n/n_block[0]), Vincset);
queue[0].enqueueWriteBuffer(Intsumbuff, CL_TRUE, ::size_t (0), ::size_t (8*n*n/n_block[0]), Intincset);		

//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
for (int i = 0; i < 0.5*(n / n_block[0])*(n / n_block[0] + 1); i++)
		{
			int a = l3[i];
			int b = l4[i];

			int ind = i - nDevs*floor(i / nDevs);			

			queue[ind].enqueueReadBuffer(vincbuff[a*(n / n_block[0]) + b], CL_TRUE, ::size_t(0), ::size_t(8 * n_block[0] * n_block[0] * 4), incvectmp);
			queue[ind].enqueueReadBuffer(Vincbuff[a*(n / n_block[0]) + b], CL_TRUE, ::size_t(0), ::size_t(8 * n_block[0] * n_block[0]), incscaltmp);

			for (int i = 0; i < n_block[0]; i++)
			{
				for (int j = 0; j < 4; j++) { vincset[4 * a*n + i*(4 * n / n_block[0]) + b * 4 + j] = incvectmp[i*n_block[0] * 4 + j]; }
				Vincset[a*n + i*(n / n_block[0]) + b] = incscaltmp[i*n_block[0]];
			}

			queue[ind].enqueueReadBuffer(wincbuff[a*(n / n_block[0]) + b], CL_TRUE, ::size_t(0), ::size_t(8 * n_block[0] * n_block[0] * 4), incvectmp);
			queue[ind].enqueueReadBuffer(Intincbuff[a*(n / n_block[0]) + b], CL_TRUE, ::size_t(0), ::size_t(8 * n_block[0] * n_block[0]), incscaltmp);

			for (int i = 0; i < n_block[0]; i++)
			{
				for (int j = 0; j < 4; j++) { wincset[4 * a*n + i*(4 * n / n_block[0]) + b * 4 + j] = incvectmp[i*n_block[0] * 4 + j]; }
				Intincset[a*n + i*(n / n_block[0]) + b] = incscaltmp[i*n_block[0]];
			}
			queue[ind].enqueueWriteBuffer(vincbuff[a*(n / n_block[0]) + b], CL_TRUE, ::size_t(0), ::size_t(8 * n_block[0] * n_block[0] * 4), incvec0);
			queue[ind].enqueueWriteBuffer(Vincbuff[a*(n / n_block[0]) + b], CL_TRUE, ::size_t(0), ::size_t(8 * n_block[0] * n_block[0]), incscal0);
			queue[ind].enqueueWriteBuffer(wincbuff[a*(n / n_block[0]) + b], CL_TRUE, ::size_t(0), ::size_t(8 * n_block[0] * n_block[0] * 4), incvec0);
			queue[ind].enqueueWriteBuffer(Intincbuff[a*(n / n_block[0]) + b], CL_TRUE, ::size_t(0), ::size_t(8 * n_block[0] * n_block[0]), incscal0);
			if (a != b)
			{
				queue[ind].enqueueReadBuffer(vincbuff[b*(n / n_block[0]) + a], CL_TRUE, ::size_t(0), ::size_t(8 * n_block[0] * n_block[0] * 4), incvectmp);
				queue[ind].enqueueReadBuffer(Vincbuff[b*(n / n_block[0]) + a], CL_TRUE, ::size_t(0), ::size_t(8 * n_block[0] * n_block[0]), incscaltmp);

				for (int i = 0; i < n_block[0]; i++)
				{
					for (int j = 0; j < 4; j++) { vincset[4 * b*n + i*(4 * n / n_block[0]) + a * 4 + j] = incvectmp[i*n_block[0] * 4 + j]; }
					Vincset[b*n + i*(n / n_block[0]) + a] = incscaltmp[i*n_block[0]];
				}

				queue[ind].enqueueReadBuffer(wincbuff[b*(n / n_block[0]) + a], CL_TRUE, ::size_t(0), ::size_t(8 * n_block[0] * n_block[0] * 4), incvectmp);
				queue[ind].enqueueReadBuffer(Intincbuff[b*(n / n_block[0]) + a], CL_TRUE, ::size_t(0), ::size_t(8 * n_block[0] * n_block[0]), incscaltmp);

				for (int i = 0; i < n_block[0]; i++)
				{
					for (int j = 0; j < 4; j++) { wincset[4 * b*n + i*(4 * n / n_block[0]) + a * 4 + j] = incvectmp[i*n_block[0] * 4 + j]; }
					Intincset[b*n + i*(n / n_block[0]) + a] = incscaltmp[i*n_block[0]];
				}
				queue[ind].enqueueWriteBuffer(vincbuff[b*(n / n_block[0]) + a], CL_TRUE, ::size_t(0), ::size_t(8 * n_block[0] * n_block[0] * 4), incvec0);
				queue[ind].enqueueWriteBuffer(Vincbuff[b*(n / n_block[0]) + a], CL_TRUE, ::size_t(0), ::size_t(8 * n_block[0] * n_block[0]), incscal0);
				queue[ind].enqueueWriteBuffer(wincbuff[b*(n / n_block[0]) + a], CL_TRUE, ::size_t(0), ::size_t(8 * n_block[0] * n_block[0] * 4), incvec0);
				queue[ind].enqueueWriteBuffer(Intincbuff[b*(n / n_block[0]) + a], CL_TRUE, ::size_t(0), ::size_t(8 * n_block[0] * n_block[0]), incscal0);

			}
		}
//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// Pairwise Sum (same order as F calcs)
//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
for (int i = 0; i < 0.5*(n/n_block[0])*(n/n_block[0]+1); i++) 														// Perform pairwise sum of all interaction quantities for each interaction block
		{																																		
			int a = l3[i];
			int b = l4[i];

			int ind = i - nDevs*floor(i/nDevs);			
			queue[ind].flush();
			//queue[ind].finish();
			n0[2] = n0[1];
			
			ker_Sp[ind].setArg(0, vincbuff[a*(n/n_block[0])+b]);
			ker_Sp[ind].setArg(1, wincbuff[a*(n/n_block[0])+b]);
			ker_Sp[ind].setArg(3, Vincbuff[a*(n/n_block[0])+b]);
			ker_Sp[ind].setArg(4, Intincbuff[a*(n/n_block[0])+b]);
			while (n0[2] > 1)
			{			
				cl::NDRange gsizeRed(0.5*n0[1]*n0[2]);
				queue[ind].enqueueNDRangeKernel(ker_Sp[ind], offset, gsizeRed, local_size);
				n0[2] = 0.5*n0[2];
			}

			if (a != b)																													
			{
				queue[ind].flush();
				//queue[ind].finish();
				n0[2] = n0[1];
			
				ker_Sp[ind].setArg(0, vincbuff[b*(n/n_block[0])+a]);
				ker_Sp[ind].setArg(1, wincbuff[b*(n/n_block[0])+a]);
				ker_Sp[ind].setArg(3, Vincbuff[b*(n/n_block[0])+a]);
				ker_Sp[ind].setArg(4, Intincbuff[b*(n/n_block[0])+a]);
				while (n0[2] > 1)
				{			
					cl::NDRange gsizeRed(0.5*n0[1]*n0[2]);
					queue[ind].enqueueNDRangeKernel(ker_Sp[ind], offset, gsizeRed, local_size);
					n0[2] = 0.5*n0[2];
				}						
			}					
		}

//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// Pairwise Sum (not same order as F calcs)
//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------		
	
		for (int a = 0; a < (n / n_block[0]); a++)
		{
			for (int b = 0; b < (n / n_block[0]); b++)
			{
				int ind_job = 0;
				if (a >= b) { ind_job = (0.5*a*(a + 1) + b); }
				else { ind_job = (0.5*b*(b + 1) + a); }
				int ind_q = ind_job - nDevs*floor(ind_job / nDevs);
				queue[ind_q].flush();
				ker_Sp[ind_q].setArg(0, vincbuff[a*(n / n_block[0]) + b]);
				ker_Sp[ind_q].setArg(1, wincbuff[a*(n / n_block[0]) + b]);
				ker_Sp[ind_q].setArg(3, Vincbuff[a*(n / n_block[0]) + b]);
				ker_Sp[ind_q].setArg(4, Intincbuff[a*(n / n_block[0]) + b]);
				while (n0[2] > 1)
				{
					cl::NDRange gsizeRed(0.5*n0[1] * n0[2]);
					queue[ind_q].enqueueNDRangeKernel(ker_Sp[ind_q], offset, gsizeRed, local_size);
					n0[2] = 0.5*n0[2];
				}
			}
		}

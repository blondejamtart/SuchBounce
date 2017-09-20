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
	

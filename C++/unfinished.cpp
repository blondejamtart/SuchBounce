	while (t_now < max_time)	
	{
		//cl.call(queue, ker_v, n, nothing, vpbuff, extbuff); // external kick
		cl.call(queue, ker_v, n, nothing, vpbuff, accelbuff, Fbuff); // translational kick
		cl.call(queue, ker_v, n, nothing, wpbuff, alphabuff); // rotatational kick	
	
		cl.call(queue, ker_kin, n, nothing, vpbuff, wpbuff, Tvbuff, Twbuff, mbuff, Ibuff); // Kinetic energies
		
		if (t_now == 0 || t_now - t_last >= (1/64)*warp && framecount < n_frames)
		{	
			framecount++;
			r_tracker[:,:,framecount] = cl.read(queue, rpbuff);
			Tv_tracker[:,framecount] = cl.read(queue, Tvbuff);
			Tw_tracker[:,framecount] = cl.read(queue, Twbuff);
			V_tracker[:,framecount] = cl.read(queue, Vbuff);	
			Int_tracker[:,framecount] = cl.read(queue, Intbuff);
			t_last = t_now;
		
		}	
		t_now += cl.read(queue,tbuff)[1]; 

		cl.call(queue, ker_scale, 1, nothing, tbuff, Fbuff);

		cl.call(queue, ker_0, n, nothing, accelbuff, Vbuff); // zero things
		cl.call(queue, ker_0, n, nothing, alphabuff, Intbuff);
	
		cl.call(queue, ker_r, n, nothing, tbuff, rpbuff, vpbuff); // Drift
		
		cl.call(queue, ker_F, n_el, nothing, cbuff, mbuff, Ibuff, l1buff, l2buff, l4buff, radbuff, tbuff, rpbuff, vpbuff, wpbuff, vincbuff, wincbuff, Vincbuff, Intincbuff, Fbuff); 	// Compute force
		cl.call(queue, ker_S, n, nothing, vincbuff, wincbuff, accelbuff, alphabuff, l3buff, mbuff, Ibuff, radbuff, nbuff, Vbuff, Vincbuff, Intbuff, Intincbuff);	// Contract array
		//cl.call(queue, ker_ext,	n, nothing, extbuff, vpbuff, mbuff, rpbuff, Intbuff, Vbuff, tbuff); # Apply external/boundary forces
	
		//cl.call(queue, ker_v, n, nothing, vpbuff, extbuff); // external kick
		cl.call(queue, ker_v, n, nothing, vpbuff, accelbuff, Fbuff); // translational kick
		cl.call(queue, ker_v, n, nothing, wpbuff, alphabuff); // rotatational kick	
	
 		//cl.call(queue, ker_T, n-1, nothing, rpbuff); // Make positions relative to particle 1
		//cl.call(queue, ker_T0, 1, nothing, rpbuff);

	}

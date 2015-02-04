	cl::NDRange offset(0);
	cl::NDRange gsize1(n);
	cl::NDRange gsize2(n_el);
	cl::NDRange local_size(1);
	
	while (t_now < max_time)	
	{
		queue.enqueueNDRangeKernel(ker_v_0,offset,gsize1,local_size); 	// Translational Kick
		queue.enqueueNDRangeKernel(ker_v_1,offset,gsize1,local_size);	// Rotational Kick
		queue.enqueueNDRangeKernel(ker_kin,offset,gsize1,local_size); 	// Evaluate Kinetic Energy
		
		if (t_now == 0 || t_now - t_last >= (1/64)*warp && framecount < n_frames)
		{	
			framecount++;
			queue.enqueueReadBuffer(rbuff, CL_TRUE, sizeof(r), r);	
			t_last = t_now;
		
		}
		//queue.enqueueReadBuffer(tbuff, CL_TRUE, offset, sizeof(stuff), stuff);
		t_now +=  stuff[0]; 

		//queue.enqueueNDRangeKernel(ker_scale,offset,gsize1,local_size); // Set new time step		
		
		queue.enqueueNDRangeKernel(ker_0_1,offset,gsize1,local_size); 	// zero things
		queue.enqueueNDRangeKernel(ker_0_2,offset,gsize1,local_size); 	// zero things
	
		ueue.enqueueNDRangeKernel(ker_r,offset,gsize1,local_size); 		// Drift
		
		queue.enqueueNDRangeKernel(ker_F,offset,gsize2,local_size); 	// Compute force
		queue.enqueueNDRangeKernel(ker_S,offset,gsize1,local_size);		// Reduce
		
		
		queue.enqueueNDRangeKernel(ker_v0,offset,gsize1,local_size); 	// Translational Kick
		queue.enqueueNDRangeKernel(ker_v1,offset,gsize1,local_size); 	// Rotational Kick

 		//cl.call(queue, ker_T, n-1, nothing, rpbuff); 					// Make positions relative to particle 1
		//cl.call(queue, ker_T0, 1, nothing, rpbuff);

	}


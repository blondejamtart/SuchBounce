
__kernel void Scale(__global double *stuff,
					__global double *F_track)

		{
			double dt = stuff[0];			
			stuff[10] = stuff[10]*(F_track[0]/F_track[1])*(F_track[2]/F_track[3]);
			dt += stuff[0]*step(2*stuff[0],stuff[10])-step(stuff[10],0.5*stuff[0])*0.5*stuff[0];			
			stuff[0] = fmin(dt,stuff[9]);			
			F_track[0] = F_track[1];
			F_track[1] = 0;
			F_track[2] = F_track[3];
			F_track[3] = 0;
			
		}

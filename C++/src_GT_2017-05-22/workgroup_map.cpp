	

	for (int p=0; p<(0.5*128*127); p=p+64)
	{
		for (int q=0; q<64; q++)
		{
			int i = 0;
			int k = 0;			
			while(k == 0)			
			{	
				int j = 0		
				for (int s=0; s<q; s++)
				{
					if (l1temp[i] == l1[p+s] || l1temp[i] == l2_128[p+s] || l2temp[i] == l1_128[p+s]  || l2temp[i] == l2_128[p+s]){j=1;}   
				}		
				if (j == 0 && l1temp[i] != -1) {l1_128[p+q] = l1temp[i]; l2_128[p+q] = l2temp[i]; l1temp[i] = -1; l2temp[i] = -1; k = 1;}
				else{i++;}
			}
		}
	}

	int count = 1;
	for (int p = 0; p<(n/128); p++)
	{
		for (int i=0; i<(0.5*128*17); i++)
		{    		
			l1[count] = l1_128[i] + 128*p;
    			l2[count] = l2_128[i] + 128*p;
    			count++;
		}
    		for (int q = 0; q<p; q++)
		{
        		for (int s = 0; s<128; s++)
			{
            			for (int t = 0; t<128; t++)
				{
                			l1[count] = p*128 + s;
                			l2[count] = q*128 + t;
                			count++;
				}
			}
		}
	}

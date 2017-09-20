int net_group_find(int joined[n*n])

{
int groups[n*n] = { 0 };
int counted = 0, to_do_count = 0, next_item = 0;

while(counted < n)
{    
	int to_do[n*n], temp_group[n];
	int i = 0;
	    	
	while(to_do[0] == 0)
	{	
		if (grouped[i] == 0){ to_do[0] = i; }
		i++;
	}
    	temp_group[0] = to_do[0];
	to_do_count = 0;
	next_item = 0;
	int groupcount = 0;
    	while(to_do_count > next_item)
	{
        	
    	    	int j = to_do[0];
    	    	grouped[j-1] = 1;
    	    	counted++;
    	 	to_do[next_item] = 0;    	    	
		next_item++;
		
		for (int i = 0; i < n; i++)
		{
			if(joined[i+b*n] == 1)
			{	
				to_do_count++;
	    	    		to_do[to_do_count] = i;
				if grouped[i] == 0;
				{
					groupcount++;
    	            			temp_group[groupcount] = i;
    	            			grouped[i] = 1;                
    	            		}
				
			}	
		}    
    	    
	}

	for(int k = 0; k < n; k++)
	{
		 groups[k+n*block] = temp_group[k];
	}
    	block++;
}
return groups 
}

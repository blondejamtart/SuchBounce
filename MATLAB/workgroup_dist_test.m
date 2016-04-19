n = 128;
n_el = 0.5*n*(n-1);
l1_128 = zeros(1,n_el);
l2_128 = zeros(1,n_el);
l2temp = zeros(1,n_el);
l1temp = zeros(1,n_el);

for x=1:n-1    
    for y=0:x-1
        
        i = (0.5*x*(x-1)+y);
        l1temp(i+1) = x;
        l2temp(i+1) = y;
        
    end
end
h = waitbar(0,'Arranging...');

for p=64*(0:(n_el-1)/64)    
    j=0;
    waitbar(p/n_el)
    
    for q=1:63        
        i = 1;
        k = 0;
        while(k == 0)
            
            for s=1:q-1                
                if (l1temp(i) == l1_128(p+s) || l1temp(i) == l2_128(p+s) || l2temp(i) == l1_128(p+s)  || l2temp(i) == l2_128(p+s))
                    j=1;
                end
            end
            if (j == 0 && l1temp(i) ~= -1) 
                l1_128(p+q) = l1temp(i); 
                l2_128(p+q) = l2temp(i); 
                l1temp(i) = -1; 
                l2temp(i) = -1; 
                k = 1;
            else
                i=i+1;               
            end
            j = 0;
        end        
    end
end
close(h)           

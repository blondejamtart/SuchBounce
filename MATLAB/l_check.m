j = 0;
a = zeros(1,n_el/64);
b = 0;
for p=64*(0:(n_el-1)/64)    
   for i = 1:63
       for ii = 1:i-1
           if (l1(1,p+i) == l1(1,p+ii) || l1(1,p+i) == l2(1,p+ii) || l2(1,p+i) == l1(1,p+ii) || l2(1,p+i) == l2(1,p+ii))
               j = j+1;
               a(p) = 1;               
           end
           b = b+1;
       end
   end
end

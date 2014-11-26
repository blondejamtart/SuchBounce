clear V
clear F
clear Fn
for i = 1:5000
[V(i),F(i)]=london(1.8e-5+i*1e-5/1250,rad);
end
for i = 1:4999
Fn(i) = (V(i+1) - V(i))*1250/1e-5;
end
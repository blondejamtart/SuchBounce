m = 1.25;
rad1 = 0.05;
v_0 = sqrt(6.374e-11*m/rad1)/2;
w = 1.5*v_0/rad1;
for i = 1:512
v_temp = cross((reshape(r(512,:),3,1)),w*[1 0 0]);
v_temp = cross((reshape(r(i,:),3,1)),w*[1 0 0]);
v(1,i,:) = reshape(v_temp,1,1,3);
end
filewrite('v.vec',v,'Julia')
filewrite('r.vec',r,'Julia')
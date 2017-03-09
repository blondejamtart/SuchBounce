function [v,r] = spinup(r,m,rad,n,theta)
v_0 = sqrt(6.67384e-11*m(n)/rad(n))/2;
v = zeros(1,n,3);
w = v_0/rad(n);
r_off = 0.5*(r(1,n,:) + r(1,n-1,:));
for i = 1:n
    r(1,i,:) = r(1,i,:) - r_off;   
    v_temp = cross((reshape(r(1,i,:),3,1)),w*[0 0 1]);
    v(1,i,:) = reshape(v_temp,1,1,3);
end
%theta = 0; %2*pi*rand();
for j = 1:n    
    r(1,j,:) = reshape(reshape(r(1,j,:),1,3)*[cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1],1,1,3);
    v(1,j,:) = reshape(reshape(v(1,j,:),1,3)*[cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1],1,1,3);    
end

for i = 1:n
    rn(i) = norm(reshape(r(1,i,2:3),1,2));
    vn(i) = norm(reshape(v(1,i,2:3),1,2));
end
end

%filewrite('v.vec',v,'init')
%filewrite('r.vec',r,'init')
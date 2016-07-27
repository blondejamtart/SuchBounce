r0(1,:) = [+0.0000000000000e+00, +0.0000000000000e+00, +0.0000000000000e+00];
r0(2,:) = [-4.5291659289836e-05, +1.7415950428445e+00, +9.8365124710872e-01];
r0(1,:) = r0(1,:) - 0.5*r0(2,:);
r0(2,:) = r0(2,:) - 0.5*r0(2,:);
r0(1,1) = 0;
r0(2,1) = 0;

v0(1,:) = [+1.3392418799071e-09, +1.4794692615129e+03, -2.0122497257799e+02];
v0(2,:) = [+3.3111820258936e-08, +1.4794696532626e+03, -2.0122566873434e+02];
a = 0.5*(v0(1,:)-v0(2,:));

l = 32768;
n = 2;

q = [0 0 0];
m = [1e4 1e4 5.972e27];
w = [0 0 0; 0 0 0; 0 0 0];
rad = [1 1 6.376e6];

for i = 0:15
    root = ['../omega_sens/Setup_' num2str(i)];
    r_s = fileread([root '/Outputs/Particle_tracks.dat'],l,1,n);
    v_s = fileread([root '/Outputs/v_tracks.dat'],l,1,n);
    
    r(1,1:2,:) = reshape(r0(1:2,:),1,2,3);
    r(1,3,:) = r_s(l,2,:);
    
    
    x = -thetaoff(i+1);
    r(1,1,:) = reshape([0, reshape(([cos(x), -sin(x); sin(x), cos(x)]*reshape(r(1,1,2:3),2,1)),1,2)],1,1,3);
    r(1,2,:) = reshape([0, reshape(([cos(x), -sin(x); sin(x), cos(x)]*reshape(r(1,2,2:3),2,1)),1,2)],1,1,3);
    v_temp(1,1,:) = reshape([0, reshape(([cos(x), -sin(x); sin(x), cos(x)]*reshape(a(2:3),2,1)),1,2)],1,1,3);
    v_temp(1,2,:) = -reshape([0, reshape(([cos(x), -sin(x); sin(x), cos(x)]*reshape(a(2:3),2,1)),1,2)],1,1,3);
    
    
    v(1,1:2,:) = v_temp(1,1:2,:)-repmat(v_s(l,1,:),1,2,1);
    v(1,3,:) = reshape([0 0 0],1,1,3);
    
    root = ['../omega_sens/binary/Setup_' num2str(i)];
    filewrite([root '/Setup/r.vec'],r,'init')
    filewrite([root '/Setup/v.vec'],v,'init')
    
end



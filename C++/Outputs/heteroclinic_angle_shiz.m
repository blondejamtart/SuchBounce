n = 2;
n_v = 20;
l = 16384;

v = zeros(1,n,3);
w = zeros(1,n,3);
theta1 = zeros(l,n_v);
phi1 = zeros(l,n_v);

for j = 1:n_v
    v(1,2,2) = 1.5e-7*0.0625*j;
    w(1,2,3) = 1.5e-5*0.0625*j;
    filewrite('../Setup/w.vec',w,'init')
    filewrite('../Setup/v.vec',v,'init')
    cd('../src_mag')
    !./a.out
    cd('../Outputs')
    tempset = fileread('Particle_tracks.dat',l,1,n);
    tempmu = fileread('mu_tracks.dat',l,1,n);
    mu = zeros(l,3);
    r = zeros(l,3);    
    for i = 1:l        
        ang(i,1)=atan2(tempmu(i,1,1),tempmu(i,1,2));
        ang(i,2)=atan2(tempmu(i,2,1),tempmu(i,2,2));
        r(i,:) = [cos(ang(i,1)) -sin(ang(i,1)) 0; sin(ang(i,1)) cos(ang(i,1)) 0; 0 0 1]*reshape(tempset(i,2,:)-tempset(i,1,:),1,3)';
        mu0(i,:) = [cos(ang(i,1)) -sin(ang(i,1)) 0; sin(ang(i,1)) cos(ang(i,1)) 0; 0 0 1]*reshape(tempmu(i,1,:),1,3)';
        mu(i,:) = [cos(ang(i,1)) -sin(ang(i,1)) 0; sin(ang(i,1)) cos(ang(i,1)) 0; 0 0 1]*reshape(tempmu(i,2,:),1,3)';
        theta1(i,j) = acos(dot(mu0(i,:),mu(i,:)));
        phi1(i,j) = acos(dot(mu0(i,:),r(i,:)/norm(r(i,:))));
    end
end
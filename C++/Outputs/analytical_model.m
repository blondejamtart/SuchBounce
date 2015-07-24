r = fileread('Particle_tracks.dat');
v = fileread('v_tracks.dat');
for i = 1:ii
    r(i,1,:) = r(i,1,:) - r(i,3,:);
    r(i,2,:) = r(i,2,:) - r(i,3,:);
    r(i,3,:) = r(i,3,:) - r(i,3,:);
end    
    
for i = 1: ii
    r_0(i,:) = (reshape(r(i,1,:)+r(i,2,:),1,3))/2;
    R(i) =  norm(r_0(i,:) - reshape(r(i,3,:),1,3));
    v_rel(i,:) = (reshape(v(i,1,:)-v(i,2,:),1,3))/2;  
    v_orb(i) =  norm(reshape(v(i,1,:)+v(i,2,:),1,3))/2;
    rho_vec(i,:) = (reshape(r(i,1,:),1,3)-r_0(i,:));
    rho(i) = norm(rho_vec(i,:));
    cos_theta(i) = dot(r_0(i,:),rho_vec(i,:))/(R(i)*rho(i));
    v_norm(i) = dot(v_rel(i,:),rho_vec(i,:));
    v_tan(i) =  norm(v_rel(i,:)-v_norm(i)*rho_vec(i,:));
end

[~,t0] = min(R);
w0 = v_orb(t0)/R(t0);

for i = 1:ii
    w(i) = w0*R(t0)^2/(R(i)^2);
    a_minus(i) = w(i)^2*rho(2) + 6.67384e-11*5.972e24*(cos_theta(i)/R(i)^2 - (R(i)*cos_theta(i)+rho(i))/(R(i)^2+2*R(i)*rho(i)*cos_theta(i)+rho(i)^2)^(3/2));
    a_plus(i) = -6.67384e-11*1e4/(4*rho(i)^2);
end
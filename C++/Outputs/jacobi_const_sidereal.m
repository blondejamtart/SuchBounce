r_ec = r;
for i = 1:3
    r_ec(:,i,:) = r(:,i,:) - r(:,3,:);
end

m_sun = 1.98855e30;
r_sun = 149598023000;
ang_vel = 2*pi/(365.25*3600*24);

r_hc = zeros(l,4,3);
r_bc = zeros(l,4,3);
theta_step = ang_vel*t_step;
C = zeros(l,3);

for i = 1:l
    for j = 1:3
        r_tmp = reshape(r_ec(i,j,:),1,3);    
        r_tmp = r_tmp + m_sun/(m_sun+m(256))*r_sun*[cos(i*theta_step), -sin(i*theta_step), 0];
        r_hc(i,j,:) = reshape(r_tmp,1,1,3);
    end
    r_hc(i,4,:) = reshape(-m(256)/(m_sun+m(256))*r_sun*[cos(i*theta_step), -sin(i*theta_step), 0],1,1,3);
end

for j = 1:4
    r_bc(:,j,:) = r_hc(:,j,:) - (m(256)*r_hc(:,3,:)+m_sun*r_hc(:,4,:))/(m(256)+m_sun);
end

for i = 2:l-1
    for j = 1:3
        xdot = ((r_bc(i+1,j,1)-r_bc(i-1,j,1))/(2*t_step));
        ydot = ((r_bc(i+1,j,2)-r_bc(i-1,j,2))/(2*t_step));
        zdot = ((r_bc(i+1,j,3)-r_bc(i-1,j,3))/(2*t_step));
        C(i,j) = 2*ang_vel*(r_bc(i,j,1)*ydot-r_bc(i,j,2)*xdot)+...
            2*G*(m(256)/norm(reshape(r_ec(i,j,:),1,3)) + m_sun/norm(reshape(r_hc(i,j,:),1,3))) - ...
            (xdot^2+ydot^2+zdot^2);            
    end    
end
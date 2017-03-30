r_ec = zeros(l,4,3);
r_hc = zeros(l,4,3);
r_bc = zeros(l,4,3);
C = zeros(l,2);
R = zeros(l,1);
theta = zeros(l,1);


for i = 1:4
    r_ec(:,i,:) = r(:,i,:) - r(:,3,:);
    r_hc(:,i,:) = r(:,i,:) - r(:,4,:);
end
for i = 1:l
    R(i) = norm(reshape(r_ec(i,4,:),1,3));
    theta(i) = -atan(r_hc(i,3,2)/r_hc(i,3,1));
end
ang_vel = theta(l)/(t_step*l);

for j = 1:4
    r_bc(:,j,:) = r(:,j,:) - (m(256)*r(:,3,:)+m_sun*r(:,4,:))/(m(256)+m_sun);
end

for i = 2:l-1
    for j = 1:2
        xdot = ((r_bc(i+1,j,1)-r_bc(i-1,j,1))/(2*t_step));
        ydot = ((r_bc(i+1,j,2)-r_bc(i-1,j,2))/(2*t_step));
        zdot = ((r_bc(i+1,j,3)-r_bc(i-1,j,3))/(2*t_step));
        C(i,j) = 2*ang_vel*(-r_bc(i,j,1)*ydot+r_bc(i,j,2)*xdot)+...
            2*G*(m(256)/norm(reshape(r_ec(i,j,:),1,3)) + m_sun/norm(reshape(r_hc(i,j,:),1,3))) - ...
            (xdot^2+ydot^2+zdot^2);
    end
end
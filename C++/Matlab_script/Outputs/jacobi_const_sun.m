r_ec = zeros(l,3,3);
r_hc = zeros(l,3,3);
r_bc = zeros(l,3,3);
C = zeros(l,1);
R = zeros(l,1);
theta = zeros(l,1);


for i = 1:3
    r_ec(:,i,:) = r(:,i,:) - r(:,2,:);
    r_hc(:,i,:) = r(:,i,:) - r(:,3,:);
end
for i = 1:l
    R(i) = norm(reshape(r_ec(i,3,:),1,3));
    theta(i) = -atan(r_hc(i,2,2)/r_hc(i,2,1));
end
ang_vel = theta(l)/(t_step*l);

for j = 1:3
    r_bc(:,j,:) = r(:,j,:) - (m(2)*r(:,2,:)+m(3)*r(:,3,:))/(m(2)+m(3));
end

for i = 2:l-1
    
        xdot = ((r_bc(i+1,1,1)-r_bc(i-1,1,1))/(2*t_step));
        ydot = ((r_bc(i+1,1,2)-r_bc(i-1,1,2))/(2*t_step));
        zdot = ((r_bc(i+1,1,3)-r_bc(i-1,1,3))/(2*t_step));
        C(i) = 2*ang_vel*(-r_bc(i,1,1)*ydot+r_bc(i,j,2)*xdot)+...
            2*G*(m(2)/norm(reshape(r_ec(i,1,:),1,3)) + m(3)/norm(reshape(r_hc(i,1,:),1,3))) - ...
            (xdot^2+ydot^2+zdot^2);
   
end
mu = m(3)/(m(2)+m(3));
r_ec_norm = r_ec/R(1);
r_bc_norm = r_bc/R(1);
r_hc_norm = r_hc/R(1);
t_step_norm = t_step*2*pi/(3600*24*365.25); 
for i = 2:l-1
    
        xdot = ((r_bc_norm(i+1,1,1)-r_bc_norm(i-1,1,1))/(2*t_step_norm));
        ydot = ((r_bc_norm(i+1,1,2)-r_bc_norm(i-1,1,2))/(2*t_step_norm));
        zdot = ((r_bc_norm(i+1,1,3)-r_bc_norm(i-1,1,3))/(2*t_step_norm));
        C_norm(i) = (r_bc_norm(i,1,1)^2+r_bc_norm(i,1,2)^2)+...
            2*((1-mu)/norm(reshape(r_ec_norm(i,1,:),1,3)) + mu/norm(reshape(r_hc_norm(i,1,:),1,3))) - ...
            (xdot^2+ydot^2+zdot^2);   
end
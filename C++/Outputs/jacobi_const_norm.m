function C_norm = jacobi_const_norm(r,m,t_step,earth,sun)

l = size(r,1);

r_ec = zeros(l,4,3);
r_hc = zeros(l,4,3);
r_bc = zeros(l,4,3);
C_norm = zeros(l,1);
R = zeros(l,1);
theta = zeros(l,1);

if sun ~= -1
    m_sun = m(sun);
    for i = 1:4
        r_ec(:,i,:) = r(:,i,:) - r(:,earth,:);
        r_hc(:,i,:) = r(:,i,:) - r(:,sun,:);
    end
    
    for i = 1:l
        R(i) = norm(reshape(r_ec(i,sun,:),1,3));
        theta(i) = pi-atan(r_hc(i,earth,2)/r_hc(i,earth,1));
    end
    
    for i = 1:l
        for j = 1:4
            r_tmp = reshape(r_ec(i,j,:),1,3);
            r_tmp = r_tmp*[cos(theta(i)),sin(theta(i)), 0 ; -sin(theta(i)), cos(theta(i)), 0; 0, 0, 1];
            r_tmp = r_tmp + m(sun)/(m(sun)+m(earth))*R(i)*[1, 0, 0];
            r_bc(i,j,:) = reshape(r_tmp,1,1,3);
        end
    end
else
    per = 365.256363004*24*3600;
    ang_vel = 2*pi/per;
    G = 6.67384e-11;
    m_sun = 1.98855e30;
    
    for i = 1:2
        r_ec(:,i,:) = r(:,i,:) - r(:,earth,:);        
    end    
    
    for i = 1:l
        R(i) = (G*m_sun/(ang_vel^2))^(1/3);
        theta(i) = (2*pi*t_step*i)/per;
    end
    
    for i = 1:l
        for j = 1:3
            r_tmp = reshape(r_ec(i,j,:),1,3);
            r_tmp = r_tmp*[cos(theta(i)),sin(theta(i)), 0 ; -sin(theta(i)), cos(theta(i)), 0; 0, 0, 1];
            r_tmp = r_tmp + m_sun/(m_sun+m(earth))*R(i)*[1, 0, 0];
            r_bc(i,j,:) = reshape(r_tmp,1,1,3);
            r_hc(i,j,:) = r_ec(i,j,:) -  R(i)*reshape([cos(theta(i)),-sin(theta(i)),0],1,1,3);
        end
    end
end


mu = m_sun/(m(earth)+m_sun);
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
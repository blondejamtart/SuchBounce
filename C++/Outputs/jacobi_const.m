r_ec = r;
for i = 1:3
    r_ec(:,i,:) = r(:,i,:) - r(:,3,:);
end
r_hc = zeros(l,3,3);
r_bc = zeros(l,3,3);
theta_step = ang_vel*t_step;
C = zeros(l,2);
U_E = zeros(l,2);
U_sol = zeros(l,2);
for i = 1:l    
    for j = 1:3
        r_tmp = reshape(r_ec(i,j,:),1,3);        
        r_tmp = r_tmp*[cos(i*theta_step),sin(i*theta_step), 0 ; -sin(i*theta_step), cos(i*theta_step), 0; 0, 0, 1];
        r_tmp = r_tmp + m_sun/(m_sun+m(256))*r_sun*[1, 0, 0];
        r_bc(i,j,:) = reshape(r_tmp,1,1,3);
        r_hc(i,j,:) = r_ec(i,j,:) -  r_sun*reshape([cos(i*theta_step),-sin(i*theta_step),0],1,1,3);
    end
end



for i = 2:l-1
    for j = 1:2
        C(i,j) = ang_vel^2*(r_bc(i,j,1)^2+r_bc(i,j,2)^2)+...
            2*G*(m(256)/norm(reshape(r_ec(i,j,:),1,3)) + m_sun/norm(reshape(r_hc(i,j,:),1,3))) - ...
            (((r_bc(i+1,j,1)-r_bc(i-1,j,1))/(2*t_step))^2 + ((r_bc(i+1,j,2)-r_bc(i-1,j,2))/(2*t_step))^2 + ((r_bc(i+1,j,3)-r_bc(i-1,j,3))/(2*t_step))^2);
        U_E(i,j) = m(256)/norm(reshape(r_ec(i,j,:),1,3));
        U_sol(i,j) = m_sun/norm(reshape(r_hc(i,j,:),1,3));        
    end    
end
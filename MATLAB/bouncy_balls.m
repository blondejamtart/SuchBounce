clear all
clc

%% Initial positions
r(1,:) = [0 0 0];
r(2,:) = [0 -0.199 0];
r(3,:) = [0 0.199 0];
r(4,:) = [-1 0.199 0];
%% Initial velocities
v(1,:) = [0 0 0];
v(2,:) = [0 0 0];
v(3,:) = [0 0 0];
v(4,:) = [1 0 0];
%% Initial angular velocities
w(1,:) = [0 0 0];
w(2,:) = [0 0 0];
w(3,:) = [0 0 0];
w(4,:) = [0 0 0];
%% Charges
q(1) = 1e-3;
q(2) = -1e-3;
q(3) = 1e-3;
q(4) = 0;
%% Radii
rad(1) = 0.1;
rad(2) = 0.1;
rad(3) = 0.1;
rad(4) = 0.1;
%% Masses
m = [1 1 1 1];
%% Sim settings
delta_t = 0.00001;
F_tol = 0.01;
v_tol = 0.01;
grad_correct = 0;
k = (4*pi*8.85419e-12)^-1;
G = 6.67384e-11;
epsilon = 0;
r_m = 0.3;
max_step = 25e3;
mu = 0.1;
diss = 1;
%% Render options
warp = 0.05;
do_translate = 0;
do_render = 1;
frame = 1;

%% Simulation!

F_total = Inf;
t_step = 0;

for i = 1 :size(r,1)
    I(i) = (2*m(i)*(rad(i)^2)/5);
% I(i)=inf;
end

h = waitbar(0,'Simulating...');

while (t_step < max_step)
    
    waitbar(t_step/max_step)
    
    t_step = t_step + 1;
    F = zeros(size(r));
    F_norm = zeros(size(r,1),1);
    
    
    for i = 1:size(r,1)
        for ii = 1:size(r,1)
            if ii < i
                R(:,i,ii) = r(ii,:) - r(i,:);
                R(:,ii,i) = -R(:,i,ii);
                d = norm(R(:,i,ii));
                F_part(:,i,ii) = (-q(i)*q(ii)*k/d^2 + m(i)*m(ii)*G/d^2 + epsilon*(r_m^12/d^13 - 2*r_m^6/d^7))*R(:,i,ii)*(1-heaviside(rad(i) + rad(ii) - d))/d;
                
                dir_length = norm((v(ii,:) - v(i,:))' - dot((v(ii,:) - v(i,:))',R(:,i,ii)/d)*R(:,i,ii)/d);
                if dir_length ~= 0
                    fric_dir = ((v(ii,:) - v(i,:))' - dot((v(ii,:) - v(i,:))',R(:,i,ii)/d)*R(:,i,ii)/d)/dir_length;
                else
                    fric_dir = [0 0 0]';
                end
                
                v_rel = (fric_dir'*dot(v(ii,:)',fric_dir) + cross(w(ii,:),R(:,ii,i))/d*rad(ii)) - (fric_dir'*dot(v(i,:)',fric_dir) + cross(w(i,:),R(:,i,ii))/d*rad(i));
                
                if grad_correct
                    F_part_grad(:,i,ii) = (2*q(i)*q(ii)*k/d^3 - 2*m(i)*m(ii)*G/d^3 - epsilon*(-13*r_m^12/d^14 + 14*r_m^6/d^8))*...
                        R(:,i,ii)*(1-heaviside(rad(i) + rad(ii) - d))/d*dot(v_rel,R(:,i,ii)/d);
                else
                    F_part_grad(:,i,ii) = 0;
                end   
              
                j_f_part(:,i,ii) = v_rel/(rad(i)^2/I(i) + rad(ii)^2/I(ii) - 1/m(i) - 1/m(ii));
                j_part(:,i,ii) = -(1+diss)*R(:,i,ii)*heaviside(rad(i) + rad(ii) - d)*dot((v(ii,:)-v(i,:)),R(:,i,ii))/(d^2*(m(i)^-1 + m(ii)^-1)); 
                
                j_f_part(:,ii,i) = -j_f_part(:,i,ii);
                j_part(:,ii,i) = -j_part(:,i,ii);
                F_part(:,ii,i) = -F_part(:,i,ii);
                F_part_grad(:,ii,i) = -F_part_grad(:,i,ii);
                
            end
        end
    end
    
    F = sum(F_part,3);
    F_grad = sum(F_part_grad,3);
    j = sum(j_part,3);
    for i = 1:size(r,1)
        v(i,:) = v(i,:) + F(:,i)'/m(i)*delta_t + F_grad(:,i)'/m(i)*delta_t^2  - j(:,i)'/m(i);
        for ii = 1:size(r,1)
            d = norm(R(:,i,ii));
%             if (heaviside(rad(i) + rad(ii) - d) && i ~= ii)
%                 w(i,:) = w(i,:) - cross(j_f_part(:,i,ii)/I(i),R(:,i,ii)*rad(i)/d)';
%                 v(i,:) = v(i,:) - j_f_part(:,i,ii)'/m(i);               
%             end
        end
        r(i,:) = r(i,:) + v(i,:)*delta_t;
        r_tracker(t_step,i,:) = r(i,:);
    end
    
    t(t_step) = t_step * delta_t;
    
    F_total = sum(F_norm);
    
end

close(h)

if do_translate
    for i=1:size(r_tracker,1)
        for j=1:size(r_tracker,3)
            r_tracker(i,:,j) = r_tracker(i,:,j) - r_tracker(i,frame,j);
        end
    end
end

if do_render
    sim_render
end
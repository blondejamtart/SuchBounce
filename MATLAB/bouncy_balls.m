clear all
clc

%% Initial positions
% r(3,:) = [10 0 0];
r(1,:) = [-1 0 0];
r(2,:) = [1 0 0];

%% Initial velocities
% v(3,:) = [0 10 0];
v(1,:) = [0 15 0];
v(2,:) = [0 -15 0];
%% Initial angular velocities
w(1,:) = [0 0 0];
w(2,:) = [0 0 0];
% w(3,:) = [0 0 0];
%% Charges
q(1) = 1e-3;
q(2) = -1e-3;
% q(3) = 1e-3;
%% Radii
rad(1) = 0.1;
rad(2) = 0.1;
% rad(3) = 0.1;
%% Masses
m = [1 1];
%% Sim settings
delta_t = 0.00005;
F_tol = 0.01;
v_tol = 0.01;
k = (4*pi*8.85419e-12)^-1;
G = 6.67384e-11;
epsilon = 0;
r_m = 0.3;
max_step = 3e4;
mu = 0.1;
disp = 0.99;
%% Render options
warp = 0.01;
do_translate = 0;
do_render = 1;
frame = 1;

%% Simulation!

F_total = Inf;
t_step = 0;


h = waitbar(0,'Simulating...');

while (t_step < max_step)
    
    waitbar(t_step/max_step)
    
    t_step = t_step + 1;
    F = zeros(size(r));
    F_norm = zeros(size(r,1),1);
    
    
    for i = 1:size(r,1)
        for ii = 1:size(r,1)
            if ii < i
                R(:,i,ii) = r(i,:) - r(ii,:);
                d = norm(R(:,i,ii));
                F_part(:,i,ii) = (q(i)*q(ii)*k/d^2 - m(i)*m(ii)*G/d^2 + epsilon*(r_m^12/d^13 - 2*r_m^6/d^7))*R(:,i,ii)*(1-heaviside(rad(i) + rad(ii) - d))/d;
                j_part(:,i,ii) = -(1+disp)*R(:,i,ii)*heaviside(rad(i) + rad(ii) - d)*dot((v(ii,:)-v(i,:)),R(:,i,ii))/(d^2*(m(i)^-1 + m(ii)^-1));
                v_rel = (v(ii,:) + cross(w(ii,:),(R(:,i,ii)/d*rad(ii)))) - (v(i,:) + cross(w(i,:),(R(:,i,ii)/d*rad(i))));
                fric_dir = (v_rel' - dot(v_rel',R(:,i,ii)/d)*R(:,i,ii)/d)/norm(v_rel' - dot(v_rel',R(:,i,ii)/d)*R(:,i,ii)/d);
                fric_part(:,i,ii) = -(heaviside(rad(i) + rad(ii) - d))*m(i)*dot(v_rel,fric_dir)*fric_dir;
                fric_part(:,ii,i) = -fric_part(:,i,ii);
                j_part(:,ii,i) = -j_part(:,i,ii);
                F_part(:,ii,i) = -F_part(:,i,ii);
                R(:,ii,i) = -R(:,i,ii);
            end
        end
    end

    F = sum(F_part,3);
    j = sum(j_part,3);
    
    for i = 1:size(r,1)
        v(i,:) = v(i,:) + F(:,i)'/m(i)*delta_t  - j(:,i)'/m(i);
        for ii = 1:size(r,1)
             d = norm(R(:,i,ii));
            if (heaviside(rad(i) + rad(ii) - d))
                w(i,:) = w(i,:) + cross(fric_part(:,i,ii),R(:,i,ii)*rad(i)/d)'*5/(2*m(i)*rad(i)^2);
            end
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
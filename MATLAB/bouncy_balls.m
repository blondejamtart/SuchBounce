clear all
clc

%% Initial positions
r(1,:) = [0 0 0];
r(2,:) = r(1,:) + [3.829545e8 0 0];
r(3,:) = r(1,:) + [1.914773e8 -3.316483e8 0];
%% Initial velocities
v(1,:) = [0 0 0];
v(2,:) = v(1,:) + [0 1.02e3 0]; 
v(3,:) = v(1,:) + [883.3459 510 0];
%% Initial angular velocities
w = [0 0 0; 0 0 0; 0 0 0];
%% Charges
q(1) = 0;
q(2) = 0;
q(3) = 0;
%% Radii
rad(1) = 6371e3;
rad(2) = 1737e3;
rad(3) = 1;
%% Masses
m = [5.97e24 7.35e22 10];
%% Settings
do_translate = 0;
do_render = 0;
frame = 1;
delta_t = 60;
F_tol = 0.01;
v_tol = 0.01;
k = (4*pi*8.85419e-12)^-1;
G = 6.67384e-11;
max_step = 80640;
warp = 720;


%% Dynamics iterations

F_total = Inf;
t_step = 0;


h = waitbar(0,'Simulating...');

while (t_step < max_step)
    
    waitbar(t_step/max_step)
    
    t_step = t_step + 1;
    F = zeros(size(r));
    F_norm = zeros(size(r,1),1);
    
    
    for i = 1:size(r,1)
        F_delta = zeros(size(r,1),3);
        j_delta = zeros(size(r,1),3);
        r_temp = r(i,:);
        for ii = 1:size(r,1)
            if ii ~= i
                R = r_temp - r(ii,:);
                F_delta(ii,:) = (q(i)*q(ii)*k/dot(R,R) - m(i)*m(ii)*G/dot(R,R))*R*(1-heaviside(rad(i) + rad(ii) - norm(R)))/norm(R);
                j_delta(ii,:) = -2*R*heaviside(rad(i) + rad(ii) - norm(R))*dot((v(ii,:)-v(i,:)),R)/(norm(R)^2*(m(i)^-1 + m(ii)^-1));
            end
        end
        
        F(i,:) = sum(F_delta,1);
        j(i,:) = sum(j_delta,1);
        F_norm(i) = norm(F(i,:));
    end
    
    for i = 1:size(r,1)
        
        v(i,:) = v(i,:) + F(i,:)*delta_t/m(i) - j(i,:)/m(i);
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
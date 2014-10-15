clear all
clc

%% Initial positions
r(1,:) = [0.5 0 0];
r(2,:) = [-0.5 0 0];

%% Initial velocities
v(1,:) = [0 0 0];
v(2,:) = [1 0 0];

%% Initial angular velocities
w = [0 0 0; 0 0 0; 0 0 0];
%% Charges
q(1) = 0;
q(2) = 0;

%% Radii
rad(1) = 0.05;
rad(2) = 0.05;

%% Masses
m = [1 1];

%% Settings
do_translate = 0;
frame = 1;
delta_t = 0.0001;
F_tol = 0.01;
v_tol = 0.01;
k = (4*pi*8.85419e-12)^-1;
G = 6.67384e-11;
max_step = 20480;
warp = 1;


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

frameset = zeros(1920,1080,ceil(max_step*delta_t*30/warp));
r_scaled = zeros(size(r_tracker,1),size(r_tracker,2),2);


xmin = min(min(r_tracker(:,:,1))) - 2*max(rad);
ymin = min(min(r_tracker(:,:,2))) - 2*max(rad);
xmax = max(max(r_tracker(:,:,1))) + 2*max(rad);
ymax = max(max(r_tracker(:,:,2))) + 2*max(rad);
scale = max(1920/(xmax-xmin),1080/(ymax-ymin));

r_scaled(:,:,1) = int16((r_tracker(:,:,1) - xmin)*scale);
r_scaled(:,:,2) = int16((r_tracker(:,:,2) - ymin)*scale);

circ = vision.ShapeInserter;
circ.Fill = true;
circ.Shape = 'Circles';
circ.Antialiasing = true;

for t = 1:size(frameset,3)
    t_ind = min(ceil(delta_t*30/warp)*t,size(r_tracker,1));
   balls = zeros(size(r,1),3);
    for i = 1:size(r,1)
      balls(i,:) = [r_scaled(t_ind,i,1),r_scaled(t_ind,i,2),rad(i)];
    end
    
   frameset(:,:,t) = step(circ,frameset(:,:,t),balls);
   
end

% plot(r_tracker(:,2,1),r_tracker(:,2,2),r_tracker(:,3,1),r_tracker(:,3,2))
plot(t,r_tracker(:,1,1),t,r_tracker(:,2,1))
% plot(r_tracker(:,2,1),r_tracker(:,2,2),0.1*cos((1:65)/30*pi),0.1*sin((1:65)/30*pi))
clear all

%% Initial Positions
r = rand([5,3])*0.4;
%% Initial velocities
v = 0.5*(rand([5,3])-0.5)*1e-5;
%% Initial angular velocities
w = [0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0];
%% Charges
q =(rand([5,1])-0.5)*1e-10;
%% Radii
rad(1) = 0.01;
rad(2) = 0.01;
rad(3) = 0.01;
rad(4) = 0.01;
rad(5) = 0.01;
%% Masses
m = [1 1 1 1 1];
%% Settings
delta_t = 0.025;
grad_correct = 1;
k = (4*pi*8.85419e-12)^-1;
G = 6.67384e-11;
epsilon = 1e-6;
r_m = 0.3;
max_step = 1e3;
mu = 0.1;
diss = 0.995;
%% Render options
warp = 5;
do_translate = 0;
do_render = 1;
frame = 1;

%% Simulation!

F_total = Inf;
t_step = 0;

E_start = [0 0];
for i = 1 :size(r,1)
    I(i) = (2*m(i)*(rad(i)^2)/5);
    
    E_start = E_start + 0.5*(dot(v(i,:),v(i,:))*m(i)*[1 0] + dot(w(i,:),w(i,:))*I(i)*[0 1]);
    for ii = 1:size(r,1)
        mass(i,ii) = m(i)*m(ii)*(1 - (i == ii));
        charge(i,ii) = q(i)*q(ii)*(1 - (i == ii));
    end
end


h = waitbar(0,'Simulating...');

while (t_step < max_step)
    
    waitbar(t_step/max_step)
    
    t_step = t_step + 1;
    F = zeros(size(r));
       
    
    for i = 1:size(r,1)
        
        for ii = 1:(i-1)
            
            R(:,i,ii) = r(ii,:) - r(i,:);
            R(:,ii,i) = -R(:,i,ii);
            d = norm(R(:,i,ii));
            
            F_part(:,i,ii) = (-charge(i,ii)*k/d^2 + mass(i,ii)*G/d^2 + epsilon*(r_m^12/d^13 - 2*r_m^6/d^7))*R(:,i,ii)*(1-heaviside(rad(i) + rad(ii) - d))/d;
            
            dir_length = norm((v(ii,:) - v(i,:))' - dot((v(ii,:) - v(i,:))',R(:,i,ii)/d)*R(:,i,ii)/d);
            if dir_length ~= 0
                fric_dir = ((v(ii,:) - v(i,:))' - dot((v(ii,:) - v(i,:))',R(:,i,ii)/d)*R(:,i,ii)/d)/dir_length;
            else
                fric_dir = [0 0 0]';
            end
            
            v_rel = fric_dir'*dir_length + cross(w(ii,:),R(:,ii,i)*rad(ii)/d) - cross(w(i,:),R(:,i,ii)*rad(i)/d);
            
            if grad_correct
                F_part_grad(:,i,ii) = (2*charge(i,ii)*k/d^3 - 2*mass(i,ii)*G/d^3 - epsilon*(-13*r_m^12/d^14 + 14*r_m^6/d^8))*...
                    R(:,i,ii)*(1-heaviside(rad(i) + rad(ii) - d))/d*dot((v(ii,:) - v(i,:)),R(:,i,ii)/d);
            else
                F_part_grad(:,i,ii) = 0;
            end
            
            j_f_part(:,i,ii) = -v_rel/(rad(ii)^2/I(ii) + rad(i)^2/I(i) + 1/m(i) + 1/m(ii));
            j_part(:,i,ii) = -(1+diss)*R(:,i,ii)*heaviside(rad(i) + rad(ii) - d)*dot((v(ii,:)-v(i,:)),R(:,i,ii))/(d^2*(m(i)^-1 + m(ii)^-1));
            
            j_f_part(:,ii,i) = -j_f_part(:,i,ii);
            j_part(:,ii,i) = -j_part(:,i,ii);
            F_part(:,ii,i) = -F_part(:,i,ii);
            F_part_grad(:,ii,i) = -F_part_grad(:,i,ii);
            
        end
        
    end
    
    F = sum(F_part,3);
    F_grad = sum(F_part_grad,3);
    j = sum(j_part,3);
    for i = 1:size(r,1)
        v(i,:) = v(i,:) + F(:,i)'/m(i)*delta_t + F_grad(:,i)'/m(i)*delta_t^2  - j(:,i)'/m(i);
        for ii = 1:size(r,1)
            d = norm(R(:,i,ii));
            if (heaviside(rad(i) + rad(ii) - d) && i ~= ii)
                w(i,:) = w(i,:) - cross(R(:,i,ii),j_f_part(:,i,ii))'*rad(i)/(d*I(i));
                v(i,:) = v(i,:) - j_f_part(:,i,ii)'/m(i);
            end
        end
        r(i,:) = r(i,:) + v(i,:)*delta_t;
        r_tracker(t_step,i,:) = r(i,:);
    end
    
    t(t_step) = t_step * delta_t;
    
end

E_end = [0 0];
for i = 1:size(r,1)
    E_end = E_end + 0.5*(dot(v(i,:),v(i,:))*m(i)*[1 0] + dot(w(i,:),w(i,:))*I(i)*[0 1]);
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
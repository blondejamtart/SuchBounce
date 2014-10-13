clear all
clc

%% Initial positions
r(1,:) = [1 0 0];
r(2,:) = [-1 0 0];
%% Initial velocities
v = [0 0 0; 0 0 0];
%% Charges
q(1) = 1;
q(2) = 1;
%% Radii
rad(1) = 0.1;
rad(2) = 0.1;
%% Masses
m = [0.01 0.01];

%% Settings
delta_t = 0.01;
F_tol = 0.01;
v_tol = 0.01;
k = 1e10;
G = 0;


%% Dynamics iterations

F_total = Inf;
v_total = Inf;

while (F_total > F_tol || v_total > v_tol) 
    
    F = zeros(size(r));
    F_norm = zeros(size(r,1),1);
    v_norm = zeros(size(r,1),1);
    
    for i = 1:size(r,1)
        
        r_temp = r(i,:);
        parfor ii = 1:size(r,1)
            if ii ~= i
                R = r_temp - r(ii,:);
                F_delta(ii,:) = (q(i)*q(ii)*k/dot(R,R) + m(i)*m(ii)*G/dot(R,R))*R/norm(R);
%                     (1 - heavisisde((rad(i) + rad(ii)) - norm(R)))/norm(R);
            end
        end
        
        F(i,:) = sum(F_delta,1);        
        F_norm(i) = norm(F(i,:));        
        r(i,:) = r(i,:) + v(i,:)*delta_t;
        v(i,:) = v(i,:) + F(i,:)*delta_t/m(i) - dot(v(i,:),v(i,:));
        v_norm(i) = norm(v(i,:));
    end
    
    F_total = sum(F_norm);
    v_total = sum(v_norm);
    
end
i = 1;
root = ['../Output_Data/rotation_dependence/pi/Setup_fine_' num2str(i) '/Outputs/']; %/Setup_'
multiWaitbar('Total',0);
[Tv,l] = fileread([root 'T_v_tracks.dat']);
n = size(Tv,2);
multiWaitbar('Total',0.25);
[Tw,~]=fileread([root 'T_w_tracks.dat'],l,0,n);
multiWaitbar('Total',0.5);
[V,~]=fileread([root 'V_tracks.dat'],l,0,n);
multiWaitbar('Total',0.75);
[E,~]=fileread([root 'E_int_tracks.dat'],l,0,n);
multiWaitbar('Total',1);
multiWaitbar('Total','Close');
ii=size(V,1);
% Tv(:,512) = zeros(size(Tv,1),1);
% Tw(:,512) = zeros(size(Tv,1),1);
% V(:,512) = zeros(size(Tv,1),1);
% E(:,512) = zeros(size(Tv,1),1);
T0(:,i+3) = sum(E,2)+sum(V,2)+sum(Tv,2)+sum(Tw,2);
for ii = 1:size(T0,1)
    T0(ii,i) = T0(ii,i) - T0(1,i);
end

T_parts(:,:,i) = 2*E + 2*V + Tv - (6.67384e-11*1e4*1e4/0.4);
T0(:,i) = (T_parts(:,1,i)+T_parts(:,2,i));
r = fileread([root 'Particle_tracks.dat'],l,1,n);
for z = 1:size(T0,1)
    r(z,1,:) = r(z,1,:) - r(z,3,:);
    r(z,2,:) = r(z,2,:) - r(z,3,:);
    r(z,3,:) = r(z,3,:) - r(z,3,:);
end
for z = 1:size(T0,1)
    multiWaitbar('Calculating:',z/size(T0,1));
    r_0(z,:) = (reshape(r(z,1,:)+r(z,2,:),1,3))/2;
    R(z) =  norm(r_0(z,:) - reshape(r(z,3,:),1,3));
    rho_vec(z,:) = (reshape(r(z,1,:),1,3)-r_0(z,:));
    rho(z) = norm(rho_vec(z,:));
    cos_theta(z,i) = dot(r_0(z,:),rho_vec(z,:))/(R(z)*rho(z));
end

for i = 2:4
    root = ['../Output_Data/rotation_dependence/pi/Setup_fine_' num2str(i) '/Outputs/'];
    multiWaitbar('Total',0);
    [Tv,~] = fileread([root 'T_v_tracks.dat'],l,0,n);
    multiWaitbar('Total',0.25);
    [Tw,~]=fileread([root 'T_w_tracks.dat'],l,0,n);
    multiWaitbar('Total',0.5);
    [V,~]=fileread([root 'V_tracks.dat'],l,0,n);
    multiWaitbar('Total',0.75);
    [E,~]=fileread([root 'E_int_tracks.dat'],l,0,n);
    multiWaitbar('Total',1);
    multiWaitbar('Total','Close');
    ii=size(V,1);
    % Tv(:,512) = zeros(size(Tv,1),1);
    % Tw(:,512) = zeros(size(Tv,1),1);
    % V(:,512) = zeros(size(Tv,1),1);
    % E(:,512) = zeros(size(Tv,1),1);
    T0(:,i) = sum(E,2)+sum(V,2)+sum(Tv,2)+sum(Tw,2);
    for ii = 1:size(T0,1)
        T0(ii,i) = T0(ii,i) - T0(1,i);
    end
    T_parts(:,:,i) = 2*E + 2*V + Tv - (6.67384e-11*1e4*1e4/0.4);
    T0(:,i) = (T_parts(:,1,i)+T_parts(:,2,i));
    
    r = fileread([root 'Particle_tracks.dat'],l,1,n);
    for z = 1:size(T0,1)
        r(z,1,:) = r(z,1,:) - r(z,3,:);
        r(z,2,:) = r(z,2,:) - r(z,3,:);
        r(z,3,:) = r(z,3,:) - r(z,3,:);
    end
    
    for z = 1:size(T0,1)
        r_0(z,:) = (reshape(r(z,1,:)+r(z,2,:),1,3))/2;
        R(z) =  norm(r_0(z,:) - reshape(r(z,3,:),1,3));
        rho_vec(z,:) = (reshape(r(z,1,:),1,3)-r_0(z,:));
        rho(z) = norm(rho_vec(z,:));
        cos_theta(z,i) = dot(r_0(z,:),rho_vec(z,:))/(R(z)*rho(z));
        
    end
    
end

i = 2;
root = ['../Output_Data/rotation_dependence/pi_by_2/a/Setup_fine_' num2str(i) '/Outputs/']; %/Setup_'
multiWaitbar('Total',0);
[Tv,l] = fileread([root 'T_v_tracks.dat']);
n = size(Tv,2);
multiWaitbar('Total',0.25);
[Tw,~]=fileread([root 'T_w_tracks.dat'],l,0,n);
multiWaitbar('Total',0.5);
[V,~]=fileread([root 'V_tracks.dat'],l,0,n);
multiWaitbar('Total',0.75);
[E,~]=fileread([root 'E_int_tracks.dat'],l,0,n);
multiWaitbar('Total',1);
multiWaitbar('Total','Close');
ii=size(V,1);
% Tv(:,512) = zeros(size(Tv,1),1);
% Tw(:,512) = zeros(size(Tv,1),1);
% V(:,512) = zeros(size(Tv,1),1);
% E(:,512) = zeros(size(Tv,1),1);
T0(:,i+3) = sum(E,2)+sum(V,2)+sum(Tv,2)+sum(Tw,2);
for ii = 1:size(T0,1)
    T0(ii,i+3) = T0(ii,i+3) - T0(1,i+3);
end

T_parts(:,:,i+3) = 2*E + 2*V + Tv - (6.67384e-11*1e4*1e4/0.4);
T0(:,i+3) = (T_parts(:,1,i+3)+T_parts(:,2,i+3));
r = fileread([root 'Particle_tracks.dat'],l,1,n);
for z = 1:size(T0,1)
    r(z,1,:) = r(z,1,:) - r(z,3,:);
    r(z,2,:) = r(z,2,:) - r(z,3,:);
    r(z,3,:) = r(z,3,:) - r(z,3,:);
end

for z = 1:size(T0,1)
    r_0(z,:) = (reshape(r(z,1,:)+r(z,2,:),1,3))/2;
    R(z) =  norm(r_0(z,:) - reshape(r(z,3,:),1,3));
    rho_vec(z,:) = (reshape(r(z,1,:),1,3)-r_0(z,:));
    rho(z) = norm(rho_vec(z,:));
    cos_theta(z,i+3) = dot(r_0(z,:),rho_vec(z,:))/(R(z)*rho(z));
end

for i = 3:5
    root = ['../Output_Data/rotation_dependence/pi_by_2/a/Setup_fine_' num2str(i) '/Outputs/'];
    multiWaitbar('Total',0);
    [Tv,~] = fileread([root 'T_v_tracks.dat'],l,0,n);
    multiWaitbar('Total',0.25);
    [Tw,~]=fileread([root 'T_w_tracks.dat'],l,0,n);
    multiWaitbar('Total',0.5);
    [V,~]=fileread([root 'V_tracks.dat'],l,0,n);
    multiWaitbar('Total',0.75);
    [E,~]=fileread([root 'E_int_tracks.dat'],l,0,n);
    multiWaitbar('Total',1);
    multiWaitbar('Total','Close');
    ii=size(V,1);
    % Tv(:,512) = zeros(size(Tv,1),1);
    % Tw(:,512) = zeros(size(Tv,1),1);
    % V(:,512) = zeros(size(Tv,1),1);
    % E(:,512) = zeros(size(Tv,1),1);
    T0(:,i+3) = sum(E,2)+sum(V,2)+sum(Tv,2)+sum(Tw,2);
    for ii = 1:size(T0,1)
        T0(ii,i+3) = T0(ii,i+3) - T0(1,i+3);
    end
    T_parts(:,:,i+3) = 2*E + 2*V + Tv - (6.67384e-11*1e4*1e4/0.4);
    T0(:,i+3) = (T_parts(:,1,i+3)+T_parts(:,2,i+3));
    
    r = fileread([root 'Particle_tracks.dat'],l,1,n);
    for z = 1:size(T0,1)
        r(z,1,:) = r(z,1,:) - r(z,3,:);
        r(z,2,:) = r(z,2,:) - r(z,3,:);
        r(z,3,:) = r(z,3,:) - r(z,3,:);
    end
    
    for z = 1:size(T0,1)
        r_0(z,:) = (reshape(r(z,1,:)+r(z,2,:),1,3))/2;
        R(z) =  norm(r_0(z,:) - reshape(r(z,3,:),1,3));
        rho_vec(z,:) = (reshape(r(z,1,:),1,3)-r_0(z,:));
        rho(z) = norm(rho_vec(z,:));
        cos_theta(z,i+3) = dot(r_0(z,:),rho_vec(z,:))/(R(z)*rho(z));
        
    end
    
end

i = 2;
root = ['../Output_Data/rotation_dependence/pi_by_2/b/Setup_fine_' num2str(i) '/Outputs/']; %/Setup_'
multiWaitbar('Total',0);
[Tv,l] = fileread([root 'T_v_tracks.dat']);
n = size(Tv,2);
multiWaitbar('Total',0.25);
[Tw,~]=fileread([root 'T_w_tracks.dat'],l,0,n);
multiWaitbar('Total',0.5);
[V,~]=fileread([root 'V_tracks.dat'],l,0,n);
multiWaitbar('Total',0.75);
[E,~]=fileread([root 'E_int_tracks.dat'],l,0,n);
multiWaitbar('Total',1);
multiWaitbar('Total','Close');
ii=size(V,1);
% Tv(:,512) = zeros(size(Tv,1),1);
% Tw(:,512) = zeros(size(Tv,1),1);
% V(:,512) = zeros(size(Tv,1),1);
% E(:,512) = zeros(size(Tv,1),1);
T0(:,i+7) = sum(E,2)+sum(V,2)+sum(Tv,2)+sum(Tw,2);
for ii = 1:size(T0,1)
    T0(ii,i+7) = T0(ii,i+7) - T0(1,i+7);
end

T_parts(:,:,i+7) = 2*E + 2*V + Tv - (6.67384e-11*1e4*1e4/0.4);
T0(:,i+7) = (T_parts(:,1,i+7)+T_parts(:,2,i+7));
r = fileread([root 'Particle_tracks.dat'],l,1,n);
for z = 1:size(T0,1)
    r(z,1,:) = r(z,1,:) - r(z,3,:);
    r(z,2,:) = r(z,2,:) - r(z,3,:);
    r(z,3,:) = r(z,3,:) - r(z,3,:);
end

for z = 1:size(T0,1)
    r_0(z,:) = (reshape(r(z,1,:)+r(z,2,:),1,3))/2;
    R(z) =  norm(r_0(z,:) - reshape(r(z,3,:),1,3));
    rho_vec(z,:) = (reshape(r(z,1,:),1,3)-r_0(z,:));
    rho(z) = norm(rho_vec(z,:));
    cos_theta(z,i+7) = dot(r_0(z,:),rho_vec(z,:))/(R(z)*rho(z));
end

for i = 3:5
    root = ['../Output_Data/rotation_dependence/pi_by_2/b/Setup_fine_' num2str(i) '/Outputs/'];
    multiWaitbar('Total',0);
    [Tv,~] = fileread([root 'T_v_tracks.dat'],l,0,n);
    multiWaitbar('Total',0.25);
    [Tw,~]=fileread([root 'T_w_tracks.dat'],l,0,n);
    multiWaitbar('Total',0.5);
    [V,~]=fileread([root 'V_tracks.dat'],l,0,n);
    multiWaitbar('Total',0.75);
    [E,~]=fileread([root 'E_int_tracks.dat'],l,0,n);
    multiWaitbar('Total',1);
    multiWaitbar('Total','Close');
    ii=size(V,1);
    % Tv(:,512) = zeros(size(Tv,1),1);
    % Tw(:,512) = zeros(size(Tv,1),1);
    % V(:,512) = zeros(size(Tv,1),1);
    % E(:,512) = zeros(size(Tv,1),1);
    T0(:,i+7) = sum(E,2)+sum(V,2)+sum(Tv,2)+sum(Tw,2);
    for ii = 1:size(T0,1)
        T0(ii,i+7) = T0(ii,i+7) - T0(1,i+7);
    end
    T_parts(:,:,i+7) = 2*E + 2*V + Tv - (6.67384e-11*1e4*1e4/0.4);
    T0(:,i+7) = (T_parts(:,1,i+7)+T_parts(:,2,i+7));
    
    r = fileread([root 'Particle_tracks.dat'],l,1,n);
    for z = 1:size(T0,1)
        r(z,1,:) = r(z,1,:) - r(z,3,:);
        r(z,2,:) = r(z,2,:) - r(z,3,:);
        r(z,3,:) = r(z,3,:) - r(z,3,:);
    end
    
    for z = 1:size(T0,1)
        r_0(z,:) = (reshape(r(z,1,:)+r(z,2,:),1,3))/2;
        R(z) =  norm(r_0(z,:) - reshape(r(z,3,:),1,3));
        rho_vec(z,:) = (reshape(r(z,1,:),1,3)-r_0(z,:));
        rho(z) = norm(rho_vec(z,:));
        cos_theta(z,i+7) = dot(r_0(z,:),rho_vec(z,:))/(R(z)*rho(z));
    end
    
end
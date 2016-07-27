i = 1;
root = [ '../R_sens/binary/Setup_' num2str(i-1) '/Outputs/'];%/Setup_'
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
T0(:,i) = sum(E,2)+sum(V,2)+sum(Tv,2)+sum(Tw,2);
for ii = 1:size(T0,1)
    T0(ii,i) = T0(ii,i) - T0(1,i);
end

T_parts(:,:,i) = 2*E + 2*V + Tv - (6.67384e-11*1e4*1e4/0.4);
T0(:,i) = (T_parts(:,1,i)+T_parts(:,2,i));

for i = 2:16
    root = [ '../R_sens/binary/Setup_' num2str(i-1) '/Outputs/'];
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
        
end
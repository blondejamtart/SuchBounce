i = 1;
root = [ '../theta_sens/a/Setup_' num2str(i-1) '/Outputs/'];%/Setup_'
multiWaitbar('Total',0);
[Tv,l] = fileread([root 'T_v_tracks.dat']);

[V(:,:,i),~]=fileread([root 'V_tracks.dat'],l,0,n);

multiWaitbar('Total',i/30);
n = size(Tv,2);

multiWaitbar('Total',i/30);

ii=size(Tv,1);


for i = 2:6
    root = [ '../theta_sens/a/Setup_' num2str(i-1) '/Outputs/'];
    
    [Tv(:,:,i),~] = fileread([root 'T_v_tracks.dat'],l,0,n);
    [V(:,:,i),~]=fileread([root 'V_tracks.dat'],l,0,n);
    
    multiWaitbar('Total',i/30);
    
    
end

for i = 7:12
    root = [ '../theta_sens/b/Setup_' num2str(i-7) '/Outputs/'];
    
    [Tv(:,:,i),~] = fileread([root 'T_v_tracks.dat'],l,0,n);
    [V(:,:,i),~]=fileread([root 'V_tracks.dat'],l,0,n);
    
    multiWaitbar('Total',i/30);
    
    
end

for i = 13:18
    root = [ '../theta_sens/c/Setup_' num2str(i-13) '/Outputs/'];
    
    [Tv(:,:,i),~] = fileread([root 'T_v_tracks.dat'],l,0,n);
    [V(:,:,i),~]=fileread([root 'V_tracks.dat'],l,0,n);
    
    multiWaitbar('Total',i/30);
    
    
    
end

for i = 19:24
    root = [ '../theta_sens/d/Setup_' num2str(i-19) '/Outputs/'];
    
    [Tv(:,:,i),~] = fileread([root 'T_v_tracks.dat'],l,0,n);
    [V(:,:,i),~]=fileread([root 'V_tracks.dat'],l,0,n);
    
    multiWaitbar('Total',i/30);
    
    
    
    
end
for i = 25:30
    root = [ '../theta_sens/e/Setup_' num2str(i-25) '/Outputs/'];
    
    [Tv(:,:,i),~] = fileread([root 'T_v_tracks.dat'],l,0,n);
    [V(:,:,i),~]=fileread([root 'V_tracks.dat'],l,0,n);
    
    multiWaitbar('Total',i/30);
    
    
    
end
multiWaitbar('Total','Close');
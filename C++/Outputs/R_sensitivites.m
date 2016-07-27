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

T0 = sum(E,2)+sum(V,2)+sum(Tv,2)+sum(Tw,2);
l = size(V,1);
r = fileread([root 'Particle_tracks.dat'],l,1,n);
v = fileread([root 'v_tracks.dat'],l,1,n);
ii=l;
for z = 1:ii
    r(z,1,:) = r(z,1,:) - r(z,3,:);
    r(z,2,:) = r(z,2,:) - r(z,3,:);
    r(z,3,:) = r(z,3,:) - r(z,3,:);
end

for z = 1:ii
    multiWaitbar('Calculating:',z/ii);
    r_0(z,:,i) = (reshape(r(z,1,:)+r(z,2,:),1,3))/2;
    R(z,i) =  norm(r_0(z,:,i) - reshape(r(z,3,:),1,3));
    v_rel(z,:,i) = (reshape(v(z,1,:)-v(z,2,:),1,3))/2;
    v_orb(z,i) =  norm(reshape(v(z,1,:)+v(z,2,:),1,3))/2;
    rho_vec(z,:,i) = (reshape(r(z,1,:),1,3)-r_0(z,:,i));
    rho(z,i) = norm(rho_vec(z,:,i));
    cos_theta(z,i) = dot(r_0(z,:,i),rho_vec(z,:,i))/(R(z,i)*rho(z,i));
    v_norm(z,i) = dot(v_rel(z,:,i),rho_vec(z,:,i));
    v_tan(z,i) =  norm(v_rel(z,:,i)-v_norm(i)*rho_vec(z,:,i));
end

for i = 2:16
    root = [ '../R_sens/binary/Setup_' num2str(i-1) '/Outputs/'];
    
    r = fileread([root 'Particle_tracks.dat'],l,1,n);
    v = fileread([root 'v_tracks.dat'],l,1,n);
    for z = 1:size(T0,1)
        r(z,1,:) = r(z,1,:) - r(z,3,:);
        r(z,2,:) = r(z,2,:) - r(z,3,:);
        r(z,3,:) = r(z,3,:) - r(z,3,:);
    end
    
 for z = 1:ii
    multiWaitbar('Calculating:',z/ii);
    r_0(z,:,i) = (reshape(r(z,1,:)+r(z,2,:),1,3))/2;
    R(z,i) =  norm(r_0(z,:,i) - reshape(r(z,3,:),1,3));
    v_rel(z,:,i) = (reshape(v(z,1,:)-v(z,2,:),1,3))/2;
    v_orb(z,i) =  norm(reshape(v(z,1,:)+v(z,2,:),1,3))/2;
    rho_vec(z,:,i) = (reshape(r(z,1,:),1,3)-r_0(z,:,i));
    rho(z,i) = norm(rho_vec(z,:,i));
    cos_theta(z,i) = dot(r_0(z,:,i),rho_vec(z,:,i))/(R(z,i)*rho(z,i));
    v_norm(z,i) = dot(v_rel(z,:,i),rho_vec(z,:,i));
    v_tan(z,i) =  norm(v_rel(z,:,i)-v_norm(i)*rho_vec(z,:,i));
end
    
end

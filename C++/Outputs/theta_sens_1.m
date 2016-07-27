i = 1;
n = 3;
l = 65536;
ii = l;
root = [ '../theta_sens/a/Setup_' num2str(i-1) '/Outputs/'];%/Setup_'

r = fileread([root 'Particle_tracks.dat'],l,1,n);
v = fileread([root 'v_tracks.dat'],l,1,n);
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

for i = 2:6
    root = [ '../theta_sens/a/Setup_' num2str(i-1) '/Outputs/'];
    
    r = fileread([root 'Particle_tracks.dat'],l,1,n);
    v = fileread([root 'v_tracks.dat'],l,1,n);
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
    
end

for i = 7:12
    root = [ '../theta_sens/b/Setup_' num2str(i-7) '/Outputs/'];
    
    r = fileread([root 'Particle_tracks.dat'],l,1,n);
    v = fileread([root 'v_tracks.dat'],l,1,n);
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
end

for i = 13:18
    root = [ '../theta_sens/c/Setup_' num2str(i-13) '/Outputs/'];
    
    r = fileread([root 'Particle_tracks.dat'],l,1,n);
    v = fileread([root 'v_tracks.dat'],l,1,n);
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
end

for i = 19:24
    root = [ '../theta_sens/d/Setup_' num2str(i-19) '/Outputs/'];
    
    
    r = fileread([root 'Particle_tracks.dat'],l,1,n);
    v = fileread([root 'v_tracks.dat'],l,1,n);
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
    
end
for i = 25:30
    root = [ '../theta_sens/e/Setup_' num2str(i-25) '/Outputs/'];
    
    r = fileread([root 'Particle_tracks.dat'],l,1,n);
    v = fileread([root 'v_tracks.dat'],l,1,n);
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
    
    
end

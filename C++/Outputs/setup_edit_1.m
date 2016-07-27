
l = 65536;
n = 3;

q = [0 0 0];
m = [1e4 1e4 5.972e27];
w = [0 0 0; 0 0 0; 0 0 0];
rad = [1 1 6.376e6];

for i = 0:15
    root = ['../omega_sens/binary/Setup_' num2str(i)];
    r = fileread([root '/Outputs/Particle_tracks.dat'],l,1,n);
    v = fileread([root '/Outputs/v_tracks.dat'],l,1,n);
    
 
    
    
    x = -thetaoff(i+1);
    r(1,1,:) = reshape([0, reshape(([cos(x), -sin(x); sin(x), cos(x)]*reshape(r(1,1,2:3),2,1)),1,2)],1,1,3);
    r(1,2,:) = reshape([0, reshape(([cos(x), -sin(x); sin(x), cos(x)]*reshape(r(1,2,2:3),2,1)),1,2)],1,1,3);
    v(1,1,:) = reshape([0, reshape(([cos(x), -sin(x); sin(x), cos(x)]*reshape(v(1,1,2:3),2,1)),1,2)],1,1,3);
    v(1,2,:) = reshape([0, reshape(([cos(x), -sin(x); sin(x), cos(x)]*reshape(v(1,2,2:3),2,1)),1,2)],1,1,3);
    
   
    
    root = ['../omega_sens/binary/Setup_' num2str(i)];
    filewrite([root '/Setup/r.vec'],r,'init')
    filewrite([root '/Setup/v.vec'],v,'init')
    
end



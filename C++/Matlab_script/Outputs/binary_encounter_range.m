
%R_encounter = 2e5;
%binary_orbit_find

%for n = 64:32:64
n = 256;
theta = 0.75*pi;
for R_encounter = 6.371e6:6.371e6:3*6.371e6    
    
    [r_offset, v_offset, settings, settings_length] = binary_orbit_find(R_encounter,0.0);
    r_temp = zeros(1,n,3);
    v_temp = zeros(1,n,3);
    w_temp = zeros(1,n,3);
    settings{17} = ['const int n = ' num2str(n) ';'];
    settings{18} = ['const double settings[14] = {pow(2,10), pow(2.0,-10), pow(2.0,-10),'...
       ' 1e-00, 2.0e-14, 0, 0.5, 0.4, 1.0e-00, pow(2.0,2), 2.0e-18, 1.0e-03, 8.0e+04, 3.0e-02};'];
   settings{26} = 'const int workgroup_size = 64; // set around 32-64 for GPU, 1 for CPU'; 
   settings{29} = ['int block_size = ' num2str(n) '; // Size of blocks for partitioning of particle interaction calculations '];
    
    settingsfile = fopen('../Settings.h','w');
    
    for j = 1:settings_length
        fprintf(settingsfile,'%s\n',settings{j});
    end
    fclose(settingsfile);
    cd('../src')
    !g++ -std=c++11 SuchBounce_mat.cpp -lOpenCL
    cd('../Outputs')
    for i = 1:1
        root = ['../../binary_' num2str(n) '_' num2str(R_encounter) '/'];
%         root = ['/media/falcon/Tesla_Data/binary_' num2str(n) '_' num2str(R_encounter) '/'];
        eval(['mkdir ' root])
        eval(['mkdir ' root '/Setup'])
        filewrite([root '/Setup/q.vec'],zeros(1,n),'init')
        filewrite([root '/Setup/m.vec'],[1e-2*ones(1,n-2) 1e4*(sqrt(n/1024))^3 1e4*(sqrt(n/1024))^3],'init')
        filewrite([root '/Setup/rad.vec'],[1e-2*ones(1,n-2) sqrt(n/1024) sqrt(n/1024)],'init')
        %r = random_seed(n,[(1e-2+5e-7)*ones(1,n-2) sqrt(n/1024)+5e-7 sqrt(n/1024)+5e-7]);
        
        filewrite([root '/Setup/r.vec'],r,'init')
        filewrite([root '/Setup/v.vec'],zeros(1,n,3),'init')
        filewrite([root '/Setup/w.vec'],zeros(1,n,3),'init')
        
        filewrite(['../Setup/' 'q.vec'],zeros(1,n),'init')
        filewrite(['../Setup/' 'm.vec'],[1e-2*ones(1,n-2) 1e4*(sqrt(n/1024))^3 1e4*(sqrt(n/1024))^3],'init')
        filewrite(['../Setup/' 'rad.vec'],[1e-2*ones(1,n-2) sqrt(n/1024) sqrt(n/1024)],'init')
        filewrite(['../Setup/' 'r.vec'],r,'init')
        filewrite(['../Setup/' 'v.vec'],zeros(1,n,3),'init')
        filewrite(['../Setup/' 'w.vec'],zeros(1,n,3),'init')
        cnt = 0;
        while cnt < 12
            cd('../src')
            !./a.out
            cd('../Outputs')
            Tv_temp = fileread('T_v_tracks.dat');
            [~,t_temp] = max(sum(Tv_temp,2));
            [tempset,~] = fileread('Particle_tracks.dat',t_temp,1,n);
            filewrite('../Setup/r.vec',tempset(floor(0.9*t_temp),:,:),'init');
            cnt = cnt + 1;
        end
        
        eval(['!cp ../Outputs/r_final.dat '  root])
        eval(['!cp ../Outputs/v_final.dat '  root])
        eval(['!cp ../Outputs/T_v_tracks.dat '  root])
        r_temp0 = fileread('../Outputs/r_final.dat');
        [v_temp0,r_temp0,wtemp0] = spinup(r_temp0,[1e-2*ones(1,n-2) 1e4*(sqrt(n/1024))^3 1e4*(sqrt(n/1024))^3],[1e-2*ones(1,n-2) sqrt(n/1024) sqrt(n/1024)],n,theta);
        v_temp0 = v_temp0 - repmat(v_offset(1,1,:),[1 n 1]);
        v_temp0(:,1,:) = [];
        v_temp(i,1:n-1,:) = v_temp0;
        v_temp(i,n,:) = [0 0 0];
        r_temp0(:,1,:) = [];        
        r_temp0(1,n,:) = r_offset(1,2,:);
        r_temp(i,:,:) = r_temp0;
        w_temp(i,:,:) = wtemp0;
    end
    
    settings{17} = ['const int n = ' num2str(n) ';'];
    settings{18} = ['const double settings[14] = {pow(2,18), pow(2.0,1), pow(2.0,-5), '...
        '1.0e-02, 2.5e-15, 0, 0.5, 0.4, 5.0e-03, pow(2.0,8), 0.0e-18, 1.0e-03, 0.0e+04, 0.0e-02};'];
    settingsfile = fopen('../Settings.h','w');
    for j = 1:settings_length
        fprintf(settingsfile,'%s\n',settings{j});
    end
    fclose(settingsfile);
    cd('../src')
    !g++ -std=c++11 SuchBounce_mat.cpp -lOpenCL
    cd('../Outputs')
    for i = 1:1
        root = ['../../binary_' num2str(n) '_' num2str(R_encounter) '/'];
%         root = ['/media/falcon/Tesla_Data/binary_' num2str(n) '_' num2str(R_encounter) '/'];
        filewrite([root 'q.vec'],zeros(1,n),'init')
        filewrite([root 'm.vec'],[1e-2*ones(1,n-3) 1e4*(sqrt(n/1024))^3 1e4*(sqrt(n/1024))^3 5.972e24],'init')
        filewrite([root 'rad.vec'],[1e-2*ones(1,n-3) sqrt(n/1024) sqrt(n/1024) 6.371e6],'init')
        filewrite([root 'r.vec'],r_temp(i,:,:),'init')
        filewrite([root 'v.vec'],v_temp(i,:,:),'init')
        filewrite([root 'w.vec'],w_temp(i,:,:),'init')
        
        filewrite(['../Setup/' 'q.vec'],zeros(1,n),'init')
        filewrite(['../Setup/' 'm.vec'],[1e-2*ones(1,n-3) 1e4*(sqrt(n/1024))^3 1e4*(sqrt(n/1024))^3 5.972e24],'init')
        filewrite(['../Setup/' 'rad.vec'],[1e-2*ones(1,n-3) sqrt(n/1024) sqrt(n/1024) 6.371e6],'init')
        filewrite(['../Setup/' 'r.vec'],r_temp(i,:,:),'init')
        filewrite(['../Setup/' 'v.vec'],v_temp(i,:,:),'init')
        filewrite(['../Setup/' 'w.vec'],w_temp(i,:,:),'init')
        cd('../src')
        !./a.out
        cd('../Outputs')
        eval(['!cp -r ../Outputs '  root])
    end
end


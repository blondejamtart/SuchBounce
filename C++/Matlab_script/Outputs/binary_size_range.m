R_encounter = 2e5;
binary_orbit_find

for n = 64:32:64
%for R_encounter = 2e5:5e4:4e5:
% binary_orbit_find
% n = 128;
  
    r_temp = zeros(1,n,3);
    v_temp = zeros(1,n,3);
    settings{17} = ['const int n = ' num2str(n) ';'];
    settings{18} = ['const double settings[14] = {pow(2,12), pow(2.0,-4), pow(2.0,-4),'...
       '5.0e-02, 2.5e-15, 0, 0.5, 0.4, 5.0e-03, pow(2.0,8), 2.0e-18, 1.0e-03, 8.0e+04, 3.0e-02};'];
   settings{26} = 'const int workgroup_size = 1; // set around 32-64 for GPU, 1 for CPU'; 
   settings{29} = ['int block_size = ' num2str(32) '; // Size of blocks for partitioning of particle interaction calculations '];
    
    settingsfile = fopen('../Settings.h','w');
    
    for j = 1:settings_length
        fprintf(settingsfile,'%s\n',settings{j});
    end
    fclose(settingsfile);
    cd('../src')
    !g++ -std=c++11 SuchBounce_mat.cpp -lOpenCL
    cd('../Outputs')
    for i = 1:1
        root = ['/media/falcon/Tesla_Data/binary_' num2str(n) '_' num2str(i) '/'];
        eval(['mkdir ' root])
        eval(['mkdir ' root '/Setup'])
        filewrite([root '/Setup/q.vec'],zeros(1,n),'init')
        filewrite([root '/Setup/m.vec'],[1e-2*ones(1,n-2) 1e4*(sqrt(n/1024))^3 1e4*(sqrt(n/1024))^3],'init')
        filewrite([root '/Setup/rad.vec'],[1e-2*ones(1,n-2) sqrt(n/1024) sqrt(n/1024)],'init')
        r = random_seed(n,[1e-2*ones(1,n-2) sqrt(n/1024) sqrt(n/1024)]);
        
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
        while cnt < 3
            cd('../src')
            !./a.out
            cd('../Outputs')
            Tv_temp = fileread('T_v_tracks.dat');
            [~,t_temp] = max(sum(Tv_temp,2));
            [tempset,~] = fileread('Particle_tracks.dat',t_temp,1,n);
            filewrite('../Setup/r.vec',tempset(floor(0.95*t_temp),:,:),'init');
            cnt = cnt + 1;
        end
        
        eval(['!cp ../Outputs/r_final.dat '  root])
        eval(['!cp ../Outputs/v_final.dat '  root])
        eval(['!cp ../Outputs/T_v_tracks.dat '  root])
        r_temp0 = fileread('../Outputs/r_final.dat');
        [v_temp0,r_temp0] = spinup(r_temp0,[1e-2*ones(1,n-2) 1e4*(sqrt(n/1024))^3 1e4*(sqrt(n/1024))^3],[1e-2*ones(1,n-2) sqrt(n/1024) sqrt(n/1024)],n);
        v_temp0 = v_temp0 - repmat(v_offset(1,1,:),[1 n 1]);
        v_temp0(:,1,:) = [];
        v_temp(i,1:n-1,:) = v_temp0;
        v_temp(i,n,:) = [0 0 0];
        r_temp0(:,1,:) = [];        
        r_temp0(1,n,:) = r_offset(1,2,:);
        r_temp(i,:,:) = r_temp0;
    end
    
    settings{17} = ['const int n = ' num2str(n) ';'];
    settings{18} = ['const double settings[14] = {pow(2,14), pow(2.0,1), pow(2.0,-5),'...
        '0.0e-02, 2.5e-15, 0, 0.0, 0.0, 5.0e-03, pow(2.0,8), 0.0e-18, 1.0e-03, 0.0e+04, 0.0e-02};'];
    settingsfile = fopen('../Settings.h','w');
    for j = 1:settings_length
        fprintf(settingsfile,'%s\n',settings{j});
    end
    fclose(settingsfile);
    cd('../src')
    !g++ -std=c++11 SuchBounce_mat.cpp -lOpenCL
    cd('../Outputs')
    for i = 1:1
        root = ['/media/falcon/Tesla_Data/binary_' num2str(n) '_' num2str(i) '/'];
        
        filewrite([root 'q.vec'],zeros(1,n),'init')
        filewrite([root 'm.vec'],[1e-2*ones(1,n-3) 1e4*(sqrt(n/1024))^3 1e4*(sqrt(n/1024))^3 5.972e24],'init')
        filewrite([root 'rad.vec'],[1e-2*ones(1,n-3) sqrt(n/1024) sqrt(n/1024) 6.371e6],'init')
        filewrite([root 'r.vec'],r_temp(i,:,:),'init')
        filewrite([root 'v.vec'],v_temp(i,:,:),'init')
        filewrite([root 'w.vec'],zeros(1,n,3),'init')
        
        filewrite(['../Setup/' 'q.vec'],zeros(1,n),'init')
        filewrite(['../Setup/' 'm.vec'],[1e-2*ones(1,n-3) 1e4*(sqrt(n/1024))^3 1e4*(sqrt(n/1024))^3 5.972e24],'init')
        filewrite(['../Setup/' 'rad.vec'],[1e-2*ones(1,n-3) sqrt(n/1024) sqrt(n/1024) 6.371e6],'init')
        filewrite(['../Setup/' 'r.vec'],r_temp(i,:,:),'init')
        filewrite(['../Setup/' 'v.vec'],v_temp(i,:,:),'init')
        filewrite(['../Setup/' 'w.vec'],zeros(1,n,3),'init')
        cd('../src')
        !./a.out
        cd('../Outputs')
        eval(['!cp -r ../Outputs '  root])
    end
end
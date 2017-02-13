
for n = 256:64:512
    r_temp = zeros(1,n,3);
    v_temp = zeros(1,n,3);
    settings{17} = ['const int n = ' num2str(n) ';'];
    settings{18} = ['const double settings[14] = {pow(2,12) , pow(2.0,-4), pow(2.0,-4),' settings{18}(67:length(settings{18}))];
    settingsfile = fopen('../Settings.h','w');
    for j = 1:settings_length
        fprintf(settingsfile,'%s\n',settings{i});
    end
    fclose(settingsfile);
    cd('../src_mag')
    !g++ -std=c++11 SuchBounce_mat.cpp -lOpenCL
    cd('../')
    for i = 1:16
        root = ['binary_' num2str(n) '_' num2str(i) '/'];
        eval(['mkdir ' root])
        eval(['mkdir ' root '/Setup'])
        filewrite([root 'q.vec'],zeros(1,n),'init')
        filewrite([root 'm.vec'],[1e-2*ones(1,n-2) 1e4*(sqrt(n/1024))^3 1e4*(sqrt(n/1024))^3],'init')
        filewrite([root 'rad.vec'],[1e-2*ones(1,n-2) sqrt(n/1024) sqrt(n/1024)],'init')
        r = random_seed(n,[1e-2*ones(1,n-3) sqrt(n/1024) sqrt(n/1024)]);
        
        filewrite([root 'r.vec'],r,'init')
        filewrite([root 'v.vec'],zeros(1,n,3),'init')
        filewrite([root 'w.vec'],zeros(1,n,3),'init')
        
        filewrite(['Setup/' 'q.vec'],zeros(1,n),'init')
        filewrite(['Setup/' 'm.vec'],[1e-2*ones(1,n-2) 1e4*(sqrt(n/1024))^3 1e4*(sqrt(n/1024))^3],'init')
        filewrite(['Setup/' 'rad.vec'],[1e-2*ones(1,n-2) sqrt(n/1024) sqrt(n/1024)],'init')
        filewrite(['Setup/' 'r.vec'],r,'init')
        filewrite(['Setup/' 'v.vec'],zeros(1,n,3),'init')
        filewrite(['Setup/' 'w.vec'],zeros(1,n,3),'init')
        cd('../src_mag')
        !./a.out
        eval(['!cp ../Outputs/r_final.dat '  root])
        eval(['!cp ../Outputs/v_final.dat '  root])
        eval(['!cp ../Outputs/T_v_tracks.dat '  root])
        r_temp(i,:,:) = fileread('../Outputs/r_final.dat');       
        [v_temp(i,:,:),r_temp(i,:,:)] = spinup(r_temp(i,:,:),[1e-2*ones(1,n-2) 1e4*(sqrt(n/1024))^3 1e4*(sqrt(n/1024))^3],[1e-2*ones(1,n-2) sqrt(n/1024) sqrt(n/1024)]);
        v_temp(i,:,:) = v_temp(i,:,:) - v_offset(1,1,:);
        r_temp(i,1,:) = [];
        r_temp(i,n,:) = r_offset(1,2,:);
    end
    
    settings{17} = ['const int n = ' num2str(n) ';'];
    settings{18} = ['const double settings[14] = {pow(2,18) , pow(2.0,0), pow(2.0,-4),' settings{18}(67:length(settings{18}))];
    settingsfile = fopen('../Settings.h','w');
    for j = 1:settings_length
        fprintf(settingsfile,'%s\n',settings{i});
    end
    fclose(settingsfile);
    cd('../src_mag')
    !g++ -std=c++11 SuchBounce_mat.cpp -lOpenCL
    cd('../')
    for i = 1:16
        root = ['binary_' num2str(n) '_' num2str(i) '/'];
        
        filewrite([root 'q.vec'],zeros(1,n),'init')
        filewrite([root 'm.vec'],[1e-2*ones(1,n-3) 1e4*(sqrt(n/1024))^3 1e4*(sqrt(n/1024))^3 5.972e24],'init')
        filewrite([root 'rad.vec'],[1e-2*ones(1,n-3) sqrt(n/1024) sqrt(n/1024) 6.371e6],'init')
        filewrite([root 'r.vec'],r_temp(i,:,:),'init')
        filewrite([root 'v.vec'],v_temp(i,:,:),'init')
        filewrite([root 'w.vec'],zeros(1,n,3),'init')
        
        filewrite(['Setup/' 'q.vec'],zeros(1,n),'init')
        filewrite(['Setup/' 'm.vec'],[1e-2*ones(1,n-3) 1e4*(sqrt(n/1024))^3 1e4*(sqrt(n/1024))^3],'init')
        filewrite(['Setup/' 'rad.vec'],[1e-2*ones(1,n-3) sqrt(n/1024) sqrt(n/1024)],'init')
        filewrite(['Setup/' 'r.vec'],r,'init')
        filewrite(['Setup/' 'v.vec'],v_temp(i,:,:),'init')
        filewrite(['Setup/' 'w.vec'],zeros(1,n,3),'init')
        cd
        !./a.out
        eval(['!cp -r ../Outputs '  root])
    end
end
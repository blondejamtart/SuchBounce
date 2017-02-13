settings_length = 0;
settings{1} = [];



settingsfile = fopen('../Settings.h','r');
tempstr = fgetl(settingsfile);
while any([tempstr ~= -1, strcmp(tempstr,'')])
    settings_length = settings_length + 1;
    settings{settings_length} = [tempstr ''];    
    tempstr = fgetl(settingsfile);
end
if strcmp(settings{settings_length},'')
    settings_length = settings_length - 1;
end
fclose(settingsfile);
original = settings;

root = '../Setup/';
filewrite([root 'q.vec'],zeros(1,2),'init')
filewrite([root 'm.vec'],[1e3, 5.972e24],'init')
filewrite([root 'rad.vec'],[1, 6.371e6],'init')
filewrite([root 'w.vec'],zeros(1,2,3),'init')
r = reshape([0,0,0; 0,6.371e6+R_encounter,0],1,2,3);
vel = sqrt(2*6.67384e-11*5.972e24/(6.371e6+R_encounter));
v = reshape([vel,0,0; 0,0,0],1,2,3);

filewrite([root 'r.vec'],r,'init')
filewrite([root 'v.vec'],v,'init')


settings{17} = ['const int n = ' num2str(2) ';'];
settings{18} = ['const double settings[14] = {pow(2,17), pow(2.0,-8), pow(2.0,-0), '...
    '1.0e-08, 2.5e-15, 0, 0.2, 0.1, 5.0e-03, pow(2.0,8), 1.0e-20, 1.0e-03, 1.0e-04, 1.0e-02};'];
settings{26} = 'const int workgroup_size = 1; // set around 32-64 for GPU, 1 for CPU'; 
settings{29} = ['int block_size = ' num2str(2) '; // Size of blocks for partitioning of particle interaction calculations '];
settings{31} = 'int t_test = pow(2.0,14); // Number of integraiton steps to run for time estimation'; 
settingsout = fopen('../Settings.h','w');
for j = 1:settings_length
    fprintf(settingsout,'%s\n',settings{j});
end
fclose(settingsout);
cd('../src');
!g++ -std=c++11 SuchBounce.cpp -lOpenCL
!./a.out

cd('../Outputs');
r_offset = fileread('r_final.dat',1,1,2);
v_offset = fileread('v_final.dat',1,1,2);

% 
filewrite([root 'r.vec'],r_offset,'init')
filewrite([root 'v.vec'],-v_offset,'init')


% settings{17} = ['const int n = ' num2str(2) ';'];
% settings{18} = ['const double settings[14] = {pow(2,18), pow(2.0,2), pow(2.0,2), '...
%     '0.0e-02, 2.5e-15, 0, 0.0, 0.0, 5.0e-03, pow(2.0,8), 0.0e-18, 1.0e-03, 0.0e+04, 0.0e-02};'];
% settings{29} = ['int block_size = ' num2str(2) '; // Size of blocks for partitioning of particle interaction calculations '];
% settingsout = fopen('../Settings.h','w');
% for j = 1:settings_length
%     fprintf(settingsout,'%s\n',settings{j});
% end
% fclose(settingsout);
% cd('../src');
% !g++ -std=c++11 SuchBounce.cpp -lOpenCL
% !./a.out
% cd('../Outputs');
% [E,l]=fileread('E_int_tracks.dat');




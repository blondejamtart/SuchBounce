i = 1;
settingsfile = fopen('../Settings.h','r');
tempstr = fgetl(settingsfile);
while any([tempstr ~= -1, strcmp(tempstr,'')])
    settings{i} = tempstr;
    i = i + 1;
    tempstr = fgetl(settingsfile);
end
fclose(settingsfile);
original = settings;

filewrite([root 'q.vec'],zeros(1,2),'init')
filewrite([root 'm.vec'],[1e3, 5.972e24],'init')
filewrite([root 'rad.vec'],[1, 6.731e6],'init')
filewrite([root 'w.vec'],zeros(1,2,3),'init')
r = reshape([0,0,0; 0,6.731e6+R,0],1,2,3);
vel = sqrt(2*6.67384e-11*5.972e24/(6.731e6+R));
v = reshape([vel,0,0; 0,0,0],1,2,3);

filewrite([root 'r.vec'],r,'init')
filewrite([root 'v.vec'],v,'init')


settings{17} = ['const int n = ' num2str(2) ';'];
settings{18} = ['const double settings[14] = {pow(2,17) , pow(2.0,-0), pow(2.0,-0),' settings{18}(67:length(settings{18}))];

settingsfile = fopen('../Settings.h','w');
for j = 1:i
    fprintf(settingsfile,'%s\n',settings{i});
end
fclose(settingsfile);
!g++ -std=c++11 SuchBounce_mat.cpp -lOpenCL
!./a.out
r_offset = fileread('r_final.dat',1,1,2);
v_offset = fileread('v_final.dat',1,1,2);


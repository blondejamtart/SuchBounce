R_encounter = 7*6.371e6:-(6.371e6):6.371e6;
n = 256;
for i = 1:length(R_encounter)
    %cd(['/media/Data/Bryan/binary_' num2str(n) '_' num2str(R_encounter(i)) '/Outputs'])
    cd(['/media/falcon/Tesla_Data/theta_zero/binary_' num2str(n) '_' num2str(R_encounter(i)) '/Outputs'])
    r_en{5}(i,:,:) = fileread('r_final.dat',1,1,n);
end
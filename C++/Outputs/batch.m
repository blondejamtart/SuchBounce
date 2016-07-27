R_sensitivites
for i = 2:ii-1
for z = 1:16
    a_norm(i-1,z)=(v_norm(i+1,z)-v_norm(i-1,z))/(16);
end
end
save('R_analysis.mat','v_norm','r_0','v_rel','v_orb','v_tan','rho','cos_theta','a_norm','R')
clear all
sensitivites
for i = 2:ii-1
for z = 1:16
a_norm(i-1,z)=(v_norm(i+1,z)-v_norm(i-1,z))/(16);
end
end
save('w_analysis.mat','v_norm','r_0','v_rel','v_orb','v_tan','rho','cos_theta','a_norm','R')
theta_sens_1
for i = 2:ii-1
for z = 1:30
a_norm(i-1,z)=(v_norm(i+1,z)-v_norm(i-1,z))/(16);
end
end
save('theta_analysis.mat','v_norm','r_0','v_rel','v_orb','v_tan','rho','cos_theta','a_norm','R')
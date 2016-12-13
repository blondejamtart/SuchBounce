function r = rotate_block(r,ind,r0)
dir_1 = reshape(r(1,ind,:) - mean(r(1,:,:),2),1,3);
dir_0 = reshape(r0(1,ind,:) - mean(r0(1,:,:),2),1,3);
[theta_0,phi_0,~] = cart2sph(dir_0(1),dir_0(2),dir_0(3));
[theta_1,phi_1,~] = cart2sph(dir_1(1),dir_1(2),dir_1(3));
offset_theta = theta_1 - theta_0;
offset_phi = phi_1 - phi_0;
for i = 1:size(r,2) 
    r_temp = [0 0 0];
    r_temp_1 = r(1,i,:) - mean(r(1,:,:),2);
    [r_temp(2), r_temp(3),r_temp(1)] = cart2sph(r_temp_1(1,1,1),r_temp_1(1,1,2),r_temp_1(1,1,3));
    r_temp(2) = r_temp(2) - offset_theta;
    r_temp(3) = r_temp(3) - offset_phi;   
    [r(1,i,1),r(1,i,2),r(1,i,3)] = sph2cart(r_temp(2),r_temp(3),r_temp(1));
end
end

for i = 1:128
    %mu_i = permute(mu(128*i,1:128,:), [2 3 1]);
    H2(i) = mag_energy_NEW(x,r,n,1,r_norm,norm_r);
    H1(i) = mag_energy(x,r,n,1);
    multiWaitbar('Progress:',i/128);
end
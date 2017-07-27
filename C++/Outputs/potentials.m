function [V_vdw, V_G, F_vdw, F_G] = potentials(norm_r,rad,m)
A = 4.5e-20;%3e-14;
k = 5e-1;
cut_off = (rad(1) + rad(2)) + 5.0e-10;%*min(rad);
hard_rad = (rad(1) + rad(2)) + 1.5e-10;%*min(rad);
F_G = m(1)*m(2)*6.734e-11/(norm_r^2);
V_G = -m(1)*m(2)*6.734e-11/norm_r;
fplus = (norm_r^2-(rad(1)+rad(2))^2)^-1;
fminus = (norm_r^2-(rad(2)-rad(1))^2)^-1;
fpe = (cut_off^2-(rad(1)+rad(2))^2)^-1;
fme = (cut_off^2-(rad(2)-rad(1))^2)^-1;
if norm_r > cut_off
    V_vdw = -(1/6)*A*(2*rad(1)*rad(2)*(fplus+fminus)-log(fplus)+log(fminus));
    F_vdw = -(1/3)*A*norm_r*(fplus-fminus-2*rad(1)*rad(2)*(fplus^2+fminus^2));
else
    V_vdw = -((1/6)*A*(cut_off*(fpe-fme-2*rad(1)*rad(2)*(fpe^2+fme^2))*((norm_r-hard_rad)^2)/(cut_off-hard_rad) +...
        (2*rad(1)*rad(2)*(fpe+fme)-log(fpe)+log(fme)) - cut_off*(fpe-fme-2*rad(1)*rad(2)*(fpe^2+fme^2))*(cut_off-hard_rad)));  
    F_vdw = -(1/3)*A*cut_off*(fpe-fme-2*rad(1)*rad(2)*(fpe^2+fme^2))*(norm_r-hard_rad)/(cut_off-hard_rad);
end
if norm_r < sum(rad)
    %V_vdw = V_vdw + 0.25*m(1)*m(2)/(m(1)+m(2))*k*(sum(rad)-norm_r)^2;
end
end
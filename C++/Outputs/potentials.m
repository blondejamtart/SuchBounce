function [V_vdw, V_G] = potentials(norm_r,rad,m)
A = 2.5e-15;
k = 5e-1;
cut_off = (rad(1) + rad(2)) + 1e-5*min(rad);
hard_rad = (rad(1) + rad(2)) - 1e-5*min(rad);
V_G = -m(1)*m(2)*6.734e-11/norm_r;
fplus = (norm_r^2-(rad(1)+rad(2))^2)^-1;
fminus = (norm_r^2-(rad(2)-rad(1))^2)^-1;
fpe = (cut_off^2-(rad(1)+rad(2))^2)^-1;
fme = (cut_off^2-(rad(2)-rad(1))^2)^-1;
if norm_r > cut_off
    V_vdw = -(1/6)*A*(2*rad(1)*rad(2)*(fplus+fminus)-log(fplus)+log(fminus));
else
    V_vdw = -((1/6)*A*(cut_off*(fpe-fme-2*rad(1)*rad(2)*(fpe^2+fme^2))*((norm_r-hard_rad)^2)/(cut_off-hard_rad) +...
        (2*rad(1)*rad(2)*(fpe+fme)-log(fpe)+log(fme)) - cut_off*(fpe-fme-2*rad(1)*rad(2)*(fpe^2+fme^2))*(cut_off-hard_rad)));    
end
if norm_r < sum(rad)
    V_vdw = V_vdw + 0.25*m(1)*m(2)/(m(1)+m(2))*k*(sum(rad)-norm_r)^2;
end
end
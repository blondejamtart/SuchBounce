clear V_p1
clear V_p2
clear V_t
% for i = -500:500
%     [V_t(i+501),F_t(i+501)] = london(i*1e-8,[1e-5 1e-5]);
% end
% B = 1e-5; %-V_t(551) - 51*F_t(551)/(51^2);
% C = V_t(551) - F_t(551)^2/(4*B);
% ep = 50*1e-8 - F_t(551)/2*B;
% for i = -500:500
%     V_p(i+501) = B*(i*1e-8 - ep)^2 + C;
%     F_p(i+501) = 2*B*(i*1e-8 - ep);
% end
% plot(-500:500,V_t,-500:500,V_p)

A = 1e-19;
d_e = 1.005*(rad(1) + rad(2));
fpe = 1/((d_e^2) - ((rad(1)+rad(2))^2));
fme = 1/((d_e^2) - ((rad(2)-rad(1))^2));
V_a = A*(1.0/6.0)*(2*rad(1)*rad(2)*(fpe+fme)-log(fpe)+log(fme));
V_d_a = A*(1.0/3.0)*d_e*(fpe - fme - 2*rad(1)*rad(2)*(fpe^2 + fme^2)); 

ii = 1000;
for i = 1:ii
    d = 0.9*(rad(1)+rad(2))+i*1e-8;
    fplus = 1/((d^2) - ((rad(1)+rad(2))^2));
    fminus = 1/((d^2) - ((rad(1)-rad(2))^2));
    
     
     
    if d < d_e+1e-8
        V_p1(i) = (1.0/3.0)*A*((1.0/2.0)*(2*rad(1)*rad(2)*(fpe+fme)+log(fpe)-log(fme))+d_e*(d-d_e)*(fpe-fme-2*rad(1)*rad(2)*...
          ((fpe^2)+(fme^2)))+0.5*((d-d_e)^2)*((fpe-fme-2*rad(1)*rad(2)*((fpe^2)+(fme^2)))+2*(d_e^2)*(2*rad(1)*rad(2)*((fpe^3)+(fme^3))...
            +(fme^2)-(fpe^2))));
         
        V_p2(i) = V_d_a*0.5*((d-0.98*(rad(1)+rad(2)))^2/(d_e-0.98*(rad(1)+rad(2))) - (d_e-0.98*(rad(1)+rad(2)))) + V_a;
            
    else
        V_p1(i) = NaN;
        V_p2(i) = NaN;
    end
    V_t(i) = (1.0/6.0)*A*(2*rad(1)*rad(2)*(fplus+fminus)-log(fplus)+log(fminus));
end
plot(1:ii,V_p2,1:ii,V_t)
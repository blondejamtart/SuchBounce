for i = 1:30
    points = (((rho(:,i)/rho(1,i))>1.01)+((rho(:,i)/rho(1,i))<0.99))./reshape(1:65536,65536,1);
    [~,t_frag(i)] = max(points);
    a_frag(i) = a_norm(t_frag(i));
    w_frag(i) = v_orb(t_frag(i),i)/R(t_frag(i),i);
    R_frag(i) = R(t_frag(i),i);
    rho_frag(i) = rho(t_frag(i),i);
    ct_frag(i) = cos_theta(t_frag(i),i);
    a_minus(i) = w_frag(i)^2*rho_frag(i) + 6.67384e-11*5.972e24*(ct_frag(i)/R_frag(i)^2 -...
        (R_frag(i)*ct_frag(i)+rho_frag(i))/(R_frag(i)^2+2*R_frag(i)*rho_frag(i)*ct_frag(i)+rho_frag(i)^2)^(3/2));
    a_plus(i) = -6.67384e-11*1e4/(4*rho_frag(i)^2);
    
end
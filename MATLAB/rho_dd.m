function a = rho_dd(rho,w_0,w_1,R,t,d,A)

theta = w_1*t - d;
a(1) = -A/(4*rho^2);
a(2) = w_0^2*rho;
a(3) = 6.6734e-11*5.972e24*(cos(theta)/R^2 - (rho + R*cos(theta))/((R^2+2*R*rho*cos(theta)+rho^2)^(3/2)));
a(4) = 6.6734e-11*5.972e24*(1/R^2 - 1/((R^2+2*R*rho+rho^2)));
end
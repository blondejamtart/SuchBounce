function [F1,F2] = LJ(d,rad,A,B) 

C = 0.25;
D = 0.05;
a = 3;
b = 4;
x = 1;
rprod = 2*rad(a)*rad(b);
radvec = rad(a) + rad(b);
rsquares = rad(a)^2 + rad(b)^2;
c = d + radvec;
del = rad(a) - rad(b);
di = (-14*rad(a)*(13*rad(a)-2+7*del)+d*d-63*del)/((2*rad(a)+d)^8) - 2*d/((2*rad(a)+d)^7)+(-14*rad(b)*(13*rad(b)-2-7*del)+d*d+63*del)/((2*rad(b)+d)^8) - 2*d/((2*rad(b)+d)^7); 
fi = (del*(9+14*rad(a))-d*d+2*rad(a)*(13*rad(a)-2))/((2*rad(a)+d)^7)+(-del*(9+14*rad(b))-d*d+2*rad(b)*(13*rad(b)-2))/((2*rad(b)+d)^7);
vw6 = (1/6)*A*((c^3)-2*rsquares(x)*c)*(1/((c*c - rsquares(x) - rprod(x))^2)-1/((c*c - rsquares(x) + rprod(x))^2));
vw121 = B*(1/(6*c))*((c*c+8*c*radvec(x)+7*rsquares(x)+28*rprod(x))/((c+radvec(x))^8)+(21*rprod(x)+7*radvec(x)+d*d)/(d^8)-0.2*di);
vw122 = B*(1/(30*c*c))*((c*c+7*c*radvec(x)+6*rsquares(x)+21*rprod(x))/((c+radvec(x))^7)+(15*rprod(x)+5*radvec(x)+d*d)/(d^7)+fi);
F1 = vw6 - vw121 - vw122;
F2 = 24*0.345*1.6e-19*(2.644e-10)^6/(d^7) - 12*4*0.345*1.6e-19*(2.644e-10)^12/(d^13);
end
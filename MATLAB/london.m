function [V6,F6] = london(d,rad)

A = 8.2515e-19;

rprod = 2*rad(1)*rad(2);
radvec = rad(1) + rad(2);
rsquares = rad(1)^2 + rad(2)^2;
c = d + radvec;

F6 = -(1/3)*A*c*((rprod-(c^2-radvec^2))/((c^2-radvec^2)^2) - (rprod+(c^2-(rad(1) - rad(2))^2))/(c^2-(rad(1)-rad(2))^2)^2);
V6 = -(1/6)*A*(rprod/(c^2-radvec^2)+rprod/(c^2+rprod-rsquares)+log(c^2-radvec^2)-log((c^2+rprod-rsquares)));

end
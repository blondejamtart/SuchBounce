rad = [1e-2 1e-2];
m = [1e-4 1e-4];
%mu = 1e-12*[0 1 0; 1/sqrt(2) -1/sqrt(2) 0];

r = 1.92e-2:1e-5:2.5e-2;
theta = 0:3e-2:(2*pi);

x = zeros(length(r),length(theta));
y = zeros(length(r),length(theta));
V = zeros(length(r),length(theta));
Vmag = zeros(length(r),length(theta));
for i = 1:length(r)
    [Vvt, VGt] = potentials(r(i),rad,m);
    for j = 1:length(theta)
        x(i,j) = r(i)*cos(theta(j));
        y(i,j) = r(i)*sin(theta(j));
        V(i,j) = Vvt+VGt;
        Vmag(i,j) = 5e-18*mag_energy(mu,[r(i)*cos(theta(j)),r(i)*sin(theta(j)),0; 0 0 0],2,0);
    end
end

surf(x,y,Vmag+V,'edgecolor','none')
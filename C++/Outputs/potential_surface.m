rad = [1e-3 1e-3];
m = [1e-5 1e-5];
mu = 1e-12*[0 1 0; 1/sqrt(2) -1/sqrt(2) 0];

r = 1.95e-3:1e-6:2.5e-3;
theta = 0:3e-2:(2*pi);

x = zeros(301,210);
y = zeros(301,210);
V = zeros(301,210);
Vmag = zeros(301,210);
for i = 1:length(r)
    [Vvt, VGt] = potentials(r(i),rad,m);
    for j = 1:length(theta)
        x(i,j) = r(i)*cos(theta(j));
        y(i,j) = r(i)*sin(theta(j));
        V(i,j) = Vvt+VGt;
        Vmag(i,j) = mag_energy(mu,[r(i)*cos(theta(j)),r(i)*sin(theta(j)),0; 0 0 0],2,0);
    end
end

surf(x,y,Vmag+V,'edgecolor','none')
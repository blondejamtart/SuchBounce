% r1 = fileread('orbit.dat');
% r2 = fileread('Particle_tracks.dat');
% n1 = size(r1,1);
% n2 = size(r2,1);
% n = size(r1,2);
% ii = n1 + n2;
% r = zeros(ii,n,3);
% r(1:n1,:,:) = r1;
% r(n1+1:ii,:,:) = r2;


r = fileread('Particle_tracks.dat');
ii = size(r,1);


plot(r(:,1,1),r(:,1,2),r(:,2,1),r(:,2,2),6.371e6*cos(1:ii),6.371e6*sin(1:ii))
axis vis3d
% s = zeros(ii,3);
% c = sqrt(ii/2);
% x = 0;
% for a = pi/c*(1:2*c)
%     for b = pi/c*(1:c)
%         x = x + 1;
%         s(x,:) = 6.371e6*[cos(a)*sin(b),sin(a)*sin(b),cos(b)];
%     end
% end
% axis 'vis3d'
% plot3(r(:,1,1),r(:,1,2),r(:,1,3),r(:,2,1),r(:,2,2),r(:,2,3),s(:,1),s(:,2),s(:,3))
% % 
% dt = 16;
% v = zeros(ii-2,2);
% rad = zeros(ii,3);
% w = zeros(ii-2,1);
% rdot = zeros(ii-2,1);
% E = zeros(ii-2,2);
% dist = zeros(ii-2,1);
% 
% for n = 1:ii
%     rad(n,1) = norm(reshape((r(n,1,:) - r(n,3,:)),3,1));
%     rad(n,2) = norm(reshape((r(n,2,:) - r(n,3,:)),3,1)); 
%     rad(n,3) = norm(reshape((0.5*(r(n,1,:)+r(n,2,:)) - r(n,3,:)),3,1));
%     dist(n) = norm(reshape((r(n,2,:) - r(n,1,:)),3,1));
% end
%  for n = 2:ii-1
%     v(n-1,1) = norm(reshape((r(n+1,1,:)-r(n-1,1,:)),3,1))/(2*dt);
%     v(n-1,2) = norm(reshape((r(n+1,2,:)-r(n-1,2,:)),3,1))/(2*dt);
%     v(n-1,3) = 0.5*(v(n-1,1)+v(n-1,2));
%     w(n-1) = acos(dot(r(n-1,1,:),r(n+1,1,:))/(rad(n-1,1)*rad(n+1,1)))/(2*dt);
%     rdot(n-1) = (rad(n+1,3,:)-rad(n-1,3,:))/(2*dt);
% end
% 
% 
% k = 0.5*v.^2;
% V = 6.67384e-11*5.924e24./rad(2:ii-1,:);
% E = k - V;
% F = 6.67384e-11*5.924e24./(rad.^2);
% A = del2(F);

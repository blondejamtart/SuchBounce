m = [1e-1*ones(1,128) 3e-3*ones(1,128)];
Tv=fileread('T_v_tracks.dat');
Tw=fileread('T_w_tracks.dat');
V=fileread('V_tracks.dat');
E=fileread('E_int_tracks.dat');
r=fileread('Particle_tracks.dat');
h=r(:,:,2); 
ii=size(V,1);
for i = 2:ii
    E(i,:) = E(i,:) - E(1,:);
    Tw(i,:) = Tw(i,:) - Tw(1,:);
    Tv(i,:) = Tv(i,:) - Tv(1,:);
    V(i,:) = V(i,:) - V(1,:);
    h(i,:) = h(i,:) - h(1,:);
end
E(1,:) = zeros(1,size(V,2));
Tw(1,:) = zeros(1,size(V,2));
Tv(1,:) = zeros(1,size(V,2));
V(1,:) = zeros(1,size(V,2));
% h(1,:) = zeros(1,size(V,2));
% G = 9.80665e-2*h.*repmat(m,ii,1);
T = sum(E,2)+sum(V,2)+sum(Tv,2)+sum(Tw,2);

plot(1:ii,sum(E,2),1:ii,sum(V,2),1:ii,sum(Tv,2)+sum(Tw,2),1:ii,T)
legend('Internal','Potential','Kinetic','Total')

% plot(1:ii,sum(G,2),1:ii,sum(E,2)+sum(V,2)+sum(Tv,2)+sum(Tw,2))
% legend('GPE','Total')

% plot(1:ii,0.5*sum(E,2)+sum(Tv,2)+sum(Tw,2),1:ii,-0.5*sum(V,2))
% legend('Internal + Kinetic','Potential')

% 
% for i = 1:3000
% k(i,:) = T(20*i,:);
% end
% plot(1:3000,mean(k(:,1:256),2))
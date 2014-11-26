Tv=fileread('T_v_tracks.dat');
Tw=fileread('T_w_tracks.dat');
V=fileread('V_tracks.dat');
E=fileread('E_int_tracks.dat');
ii=size(V,1);
plot(1:ii,0.5*sum(E,2)-0.5*sum(E(1,:)),1:ii,0.5*sum(V,2)-0.5*sum(V(1,:)),1:ii,sum(Tv,2)-sum(Tv(1,:))+sum(Tw,2)-sum(Tw(1,:)))
legend('Internal','Potential','Kinetic')
% plot(1:ii,0.5*sum(E,2)-0.5*sum(E(1,:))+0.5*sum(V,2)-0.5*sum(V(1,:)),1:ii,sum(Tv,2)-sum(Tv(1,:))+sum(Tw,2)-sum(Tw(1,:)))
% legend('Internal & Potential','Kinetic')
% plot(1:ii,0.5*sum(E,2)-0.5*sum(E(1,:))+0.5*sum(V,2)-0.5*sum(V(1,:))+sum(Tv,2)-sum(Tv(1,:))+sum(Tw,2)-sum(Tw(1,:)))
% legend('Internal, Potential & Kinetic')
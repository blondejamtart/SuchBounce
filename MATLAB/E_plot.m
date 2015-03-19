do_zero = 1; 

m = [1e-1*ones(1,128) 3e-3*ones(1,128)];
Tv=fileread('T_v_tracks.dat');
Tw=fileread('T_w_tracks.dat');
V=fileread('V_tracks.dat');
E=fileread('E_int_tracks.dat');
ii=size(V,1);
T = sum(E,2)+sum(V,2)+sum(Tv,2)+sum(Tw,2);
T_part = 2*E + 2*V + Tv - (6.67384e-11*3.5e8*3.5e8/110);
plot(2:ii,T_part(2:ii,1),2:ii,T_part(2:ii,2))
E0 = zeros(ii,size(V,2));
T0 = zeros(ii,1);
V0 = zeros(ii,size(V,2));
Tw0 = zeros(ii,size(V,2));
Tv0 = zeros(ii,size(V,2));

if do_zero
    for i = [3:ii,1]
        E0(i,:) = E(i,:) - E(2,:);
        Tw0(i,:) = Tw(i,:) - Tw(2,:);
        Tv0(i,:) = Tv(i,:) - Tv(2,:);
        V0(i,:) = V(i,:) - V(2,:);
        T0(i) = T(i) - T(2);
    end
    E0(2,:) = zeros(1,size(V,2));
    Tw0(2,:) = zeros(1,size(V,2));
    Tv0(2,:) = zeros(1,size(V,2));
    V0(2,:) = zeros(1,size(V,2));
    T0(1:2) = [0 0];
end


plot(1:ii,sum(E0,2),1:ii,sum(V0,2),1:ii,sum(Tv0,2)+sum(Tw0,2),1:ii,T0)
legend('Internal','Potential','Kinetic','Total')

% plot(1:ii,sum(G,2),1:ii,sum(E,2)+sum(V,2)+sum(Tv,2)+sum(Tw,2))
% legend('GPE','Total')

% plot(1:ii,0.5*sum(E,2)+sum(Tv,2)+sum(Tw,2),1:ii,-0.5*sum(V,2))
% legend('Internal + Kinetic','Potential')

%
% for i = 1:3000
% k(i,:) = Tv(10*i,:);
% end
% plot(1:3000,mean(k(:,1:256),2),1:3000,mean(k(:,257:512),2))
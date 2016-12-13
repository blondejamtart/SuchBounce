 cd('../Outputs')
do_zero = 1;
isprog = 0;
mem_save = 1;
%n = 2048;
%l = 8192;
multiWaitbar('Total',0);
if isprog
    %[Tv,l] = fileread('T_v_tracks.dat');
    [Tv,~]=fileread('T_v_tracks.dat',l,0,n);
    n = size(Tv,2);
    multiWaitbar('Total',1/8);
    [Tw,~]=fileread('T_w_tracks.dat',l,0,n);
    multiWaitbar('Total',2/8);
    [V,~]=fileread('V_tracks.dat',l,0,n);
    multiWaitbar('Total',3/8);
    [E,~]=fileread('E_int_tracks.dat',l,0,n);
    multiWaitbar('Total',4/8);
    %[E_lost,~]=fileread('E_lost_tracks.dat',l,0,n);
    multiWaitbar('Total',5/8);
    %[E_spent,~]=fileread('E_spent_tracks.dat',l,0,n);
    multiWaitbar('Total',6/8);
    [E_therm,~]=fileread('E_therm_tracks.dat',l,0,n);
    multiWaitbar('Total',7/8);
    [VC,~]=fileread('V_coulomb_tracks.dat',l,0,n);
    multiWaitbar('Total',1);
    multiWaitbar('Total','Close');
else
    [Tv,l] = fileread('T_v_tracks.dat');
    %[Tv,~]=fileread('T_v_tracks.dat',l,0,n);
    n = size(Tv,2);
    multiWaitbar('Total',1/4);
    [Tw,~]=fileread('T_w_tracks.dat',l,0,n);
    multiWaitbar('Total',2/4);
    [V,~]=fileread('V_tracks.dat',l,0,n);
    multiWaitbar('Total',3/4);
    [E,~]=fileread('E_int_tracks.dat',l,0,n);
    multiWaitbar('Total',4/4);
    multiWaitbar('Total','Close');
end

ii=size(V,1);
% Tv(:,512) = zeros(size(Tv,1),1);
% Tw(:,512) = zeros(size(Tv,1),1);
% V(:,512) = zeros(size(Tv,1),1);
% E(:,512) = zeros(size(Tv,1),1);
if isprog
    Vnat = V - VC;
else
    Vnat = V;
end

T = sum(E,2)+sum(Vnat,2)+sum(Tv,2)+sum(Tw,2);
if ~mem_save
    E0 = zeros(ii,size(V,2));
    T0 = zeros(ii,1);
    V0 = zeros(ii,size(V,2));
    Tw0 = zeros(ii,size(V,2));
    Tv0 = zeros(ii,size(V,2));
    Vnat0 = zeros(ii,size(V,2));
    
    if do_zero
        for i = [3:ii,1]
            E0(i,:) = E(i,:) - E(2,:);
            Tw0(i,:) = Tw(i,:) - Tw(2,:);
            Tv0(i,:) = Tv(i,:) - Tv(2,:);
            V0(i,:) = V(i,:) - V(2,:);
            T0(i) = T(i) - T(2);
            Vnat0(i) = Vnat(i) - Vnat(2);
        end
        E0(2,:) = zeros(1,size(V,2));
        Tw0(2,:) = zeros(1,size(V,2));
        Tv0(2,:) = zeros(1,size(V,2));
        V0(2,:) = zeros(1,size(V,2));
        E0(1,:) = zeros(1,size(V,2));
        Tw0(1,:) = zeros(1,size(V,2));
        Tv0(1,:) = zeros(1,size(V,2));
        V0(1,:) = zeros(1,size(V,2));
        T0(1:2) = [0 0];
        Vnat0(2,:) = zeros(1,size(V,2));
    end
    T_part = 2*E + 2*V + Tv;
    
    plot((1:ii),sum(E0,2),(1:ii),sum(V0,2),(1:ii),sum(Tv0,2)+sum(Tw0,2),(1:ii),T0)
    legend('Internal','Potential','Kinetic','Total')
    
else
    E0 = zeros(ii,1);
    T0 = zeros(ii,1);
    V0 = zeros(ii,1);         
    if do_zero
        for i = [3:ii,1]
            E0(i,:) = sum(E(i,:),2) - sum(E(2,:),2);           
            V0(i,:) = sum(V(i,:),2) - sum(V(2,:),2);
            T0(i) = T(i) - T(2);            
        end
        E0(1:2) = [0 0];
        V0(1:2) = [0 0];      
        T0(1:2) = [0 0];        
    end
    plot((1:ii),E0,(1:ii),V0,(1:ii),sum(Tv,2)-sum(Tv(2,:),2)+sum(Tw,2),(1:ii),T0)
    legend('Internal','Potential','Kinetic','Total')
end
    
    % plot(1:ii,sum(G,2),1:ii,sum(E,2)+sum(V,2)+sum(Tv,2)+sum(Tw,2))
    % legend('GPE','Total')
    
    % plot(1:ii,sum(E,2)+sum(Tv,2)+sum(Tw,2),1:ii,sum(V,2))
    %legend('Internal + Kinetic','Potential')
    
    %
    % for i = 1:3000
    % k(i,:) = Tv(10*i,:);
    % end
    % plot(1:3000,mean(k(:,1:256),2),1:3000,mean(k(:,257:512),2))
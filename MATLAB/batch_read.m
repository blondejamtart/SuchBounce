for i = 0:9
    root = ['Outputs',num2str(i)];
    Tv=fileread([root,'/T_v_tracks.dat']);
    Tw=fileread([root,'/T_w_tracks.dat']);
    V=fileread([root,'/V_tracks.dat']);
    E=fileread([root,'/E_int_tracks.dat']);
    ii=size(V,1);
    T = sum(E,2)+sum(V,2)+sum(Tv,2)+sum(Tw,2);
    T_parts(:,:,i+1) = 2*E + 2*V + Tv - (6.67384e-11*3.5e8*3.5e8/102);
    T_parts(1,:,i+1) = zeros(1,3,1);
end
% 
% for i = 1:4
%     e_gap((1:3),i) =  T_parts(16384,2,(1:3)+4*(i-1));
%     e_gap(4,i) = T_parts(16384,1,4*i);
%     epsilon(i) = (i-1)*1e10/3.5e8;    
%     F_bind(i) = i^2; 
%     v_rot(i) = i;
% end

n = 16;
n_rows = 1;
rad = 1e-2*ones(1,n_rows*n);
theta = 0:pi/1024:pi/8;
phi = -pi:pi/128:pi;
mumag = 1e-7;
clear r r0 newstep mu H
for j = 1:length(theta)
    r0(1,:,j) = [0 0 0];
    r0(2,:,j) = [0 2*rad(1) 0];
    for i = 3:n+1
        rstep = r0(i-1,:,j) - r0(i-2,:,j);
        newstep(1,1) = (cos(theta(j))*rstep(1,1)+sin(theta(j))*rstep(1,2));
        newstep(1,2) = (-sin(theta(j))*rstep(1,1)+cos(theta(j))*rstep(1,2));
        newstep(1,3) = 0;
        
        %         newstep(1,1) = sqrt(2)*rad(1)*2*((cos(i*theta(j))>0)-0.5);
        %         newstep(1,2) = sqrt(2)*rad(1)*2*((sin(i*theta(j))>0)-0.5);%*sin(i*theta(j));        
        r0(i,:,j) = r0(i-1,:,j) + newstep;
    end
%     r0(n+1:2*n,:,j) = r0(1:n,:,j) + repmat([0 0 4*rad(1)],[n 1]);
%     for i = 3:n_rows
%         rowstep = r0((i-2)*n+1,:,j) - r0((i-3)*n+1,:,j);
%         newrow(1,3) = (cos(theta(j))*rowstep(1,3)+sin(theta(j))*rowstep(1,2));
%         newrow(1,2) = (-sin(theta(j))*rowstep(1,3)+cos(theta(j))*rowstep(1,2));
%         newrow(1,1) = 0;      
%         for i1 = 1:n
%             r0((i-1)*n+i1,:,j) = r0((i-2)*n+i1,:,j) + newrow;
%         end
%     end
    for k = 1:length(phi)      
        for i = 1:n
            rstep = r0(i+1,:,j) - r0(i,:,j);
            mu1(i,1,j,k) = (mumag/(2*rad(1)))*(cos(phi(k))*rstep(1,1)+sin(phi(k))*rstep(1,2));
            mu1(i,2,j,k) = (mumag/(2*rad(1)))*(-sin(phi(k))*rstep(1,1)+cos(phi(k))*rstep(1,2));
            mu1(i,3,j,k) = 0;
%             for i1 = 2:n_rows
%                 mu1(i+(i1-1)*n_rows,:,j,k) = mu1(i,:,j,k);
%                 rstep = r0(i+1,:,j) - r0(i,:,j);
%                 mu2(i,1,j,k) = (mumag/(2*rad(1)))*(cos(phi(k))*rstep(1,1)+sin(phi(k))*rstep(1,2));
%                 mu2(i,2,j,k) = (mumag/(2*rad(1)))*(-sin(phi(k))*rstep(1,1)+cos(phi(k))*rstep(1,2));
%                 mu2(i,3,j,k) = 0;            
%             end
        end
        
        r(1:n,:,j) = r0(1:n,:,j);       
        H1(j,k) = mag_energy(mu1(:,:,j,k),r(:,:,j),n,0);
        %H2(j,k) = mag_energy(mu2(:,:,j,k),r(:,:,j),2*n,0);
    end
    multiWaitbar('Progress:',j/length(theta));
end
multiWaitbar('Progress:','close');
% % 
% % for i = 1:129
% %     [~,a(i)] = min(H(i,100:160));
% % end
% % for i = 1:129
% %     a(i) = a(i)+100;
% % end
% % for i = 1:129
% %     quiver3(r(:,1,i),r(:,2,i),r(:,3,i),mu(:,1,i,a(i)),mu(:,2,i,a(i)),mu(:,3,i,a(i)))
% %     pause(0.125)
% %         t_ind = 1;
% %         r = reshape(r0(1:n,:,i),1,n,3);
% %         q = zeros(1,2*n);
% %         sphere_plot
% % end

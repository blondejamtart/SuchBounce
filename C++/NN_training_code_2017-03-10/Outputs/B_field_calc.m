 B = zeros(1,25^3,3);
 Bnorm = zeros(1,25^3,3);
for i = 1:25
    for j = 1:25
        for m = 14; %1:25
        pos(1,m+(j-1)*25+(i-1)*625,:) = [-0.2+i*0.4/25, -0.2+j*0.4/25, -0.1+m*0.2/25];
        for k = 1:374
            rtmp = r(1,k,:)-pos(1,m+(j-1)*25+(i-1)*625,:);
            dtmp = norm(reshape(rtmp,1,3));
            if dtmp < 2e-2
                B(1,m+(j-1)*25+(i-1)*625,:) = NaN;
            end
            %Btmp = (1/dtmp^3)*(3*dot(mu(1,k,:),rtmp)*rtmp/(dtmp^2) - mu(1,k,:)); 
            Btmp = -rtmp/(374*dtmp^3);
            B(1,m+(j-1)*25+(i-1)*625,:) =  B(1,m+(j-1)*25+(i-1)*625,:) + Btmp;
        end
        rtmp = r_target-pos(1,m+(j-1)*25+(i-1)*625,:);
        dtmp = norm(reshape(rtmp,1,3));
        Btmp = 2*rtmp/(dtmp^3);
        B(1,m+(j-1)*25+(i-1)*625,:) =  B(1,m+(j-1)*25+(i-1)*625,:) + Btmp;
        Bnorm(1,m+(j-1)*25+(i-1)*625,:) =  B(1,m+(j-1)*25+(i-1)*625,:)/norm(reshape(B(1,m+(j-1)*25+(i-1)*625,:),1,3));
        end
    end
    i
end
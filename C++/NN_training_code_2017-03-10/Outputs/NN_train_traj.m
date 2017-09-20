function [Bnorm,B] = NN_train_traj(pos,r,r_target)
B = zeros(1,1,3);
Bnorm = zeros(1,1,3);
for k = 2:374
    rtmp = r(1,k,:)-pos;
    dtmp = norm(reshape(rtmp,1,3));
    if dtmp < 1.5e-2
        B(1,1,:) = NaN;
    end    
    Btmp = -rtmp/(374*dtmp^3);
    B(1,1,:) =  B(1,1,:) + Btmp;
end
rtmp = r_target-pos(1,1,:);
dtmp = norm(reshape(rtmp,1,3));
Btmp = 2*rtmp/(dtmp^3);
B(1,1,:) =  B(1,1,:) + Btmp;
Bnorm(1,1,:) =  B(1,1,:)/norm(reshape(B(1,1,:),1,3));
end
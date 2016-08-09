for i = 1:2
    for j = 1:32
        if floor(i/2) == i/2
            r_hcp(1,32*(i-1)+j,1:3) = [(i-1)*2*cos(pi/6) (j-1)*2 + 1 0];
        else
            r_hcp(1,32*(i-1)+j,1:3) = [(i-1)*2*cos(pi/6) (j-1)*2 0];
        end
    end
end

for k = 1:2
    if floor(k/2) == k/2
        r(1,64*(k-1)+1:64*k,:) = r_hcp + repmat(reshape([tan(pi/6) 1 (k-1)*sqrt(4 - (1/cos(pi/6))^2)],1,1,3),1,64,1);
    else
        r(1,64*(k-1)+1:64*k,:) = r_hcp + repmat(reshape([0 0 (k-1)*sqrt(4 - (1/cos(pi/6))^2)],1,1,3),1,64,1);
    end
end
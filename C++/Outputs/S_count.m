S = zeros(128,2048);
multiWaitbar('Calculating...',0);
for t = 1:2048
    for i = 1:n
        for j = 1:n
            if norm(reshape(frameset(t,i,:)-frameset(t,j,:),1,3)) < 1.01*(rad(i)+rad(j))
                S(i,t) = S(i,t) + 1;
            end
        end
        multiWaitbar('Calculating...',(t-1)/2048+i/(n*2048));
    end
end
multiWaitbar('Calculating...','Close');
for i = 0:15
    for j = 0:15
        r(1,16*i+j+1,:) = [sqrt(3)*i, 2*j+(i-2*floor(i/2)), 0];
    end
end
for i = 1:256
    r(1,i+256,:) = r(1,i,:) + reshape([1/(sqrt(3)) 1 sqrt(8/3)],1,1,3);
end
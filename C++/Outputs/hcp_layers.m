for i = 0:15
    for j = 0:15
        r(1,16*i+j+1,:) = [sqrt(3)*i, 2*j+(i-2*floor(i/2)), 0];
        mu(1,16*i+j+1,:) = [(-1)^(i-2*floor(i/2)) 0 0];
        x(16*i+j+1) = [0.5*(1+(-1)^(i-2*floor(i/2)))];
    end
end
for i = 1:256
    r(1,i+256,:) = r(1,i,:) + reshape([1/(sqrt(3)) 1 sqrt(8/3)],1,1,3);
end
for i = 1:256
    r(1,i+512,:) = r(1,i,:) + reshape([0 0 2*sqrt(8/3)],1,1,3);
end
for i = 1:256
    r(1,i+768,:) = r(1,i,:) + reshape([1/(sqrt(3)) 1 3*sqrt(8/3)],1,1,3);
end
function r = random_seed(n,rad)
r(1,1,:) = [0,0,0];
multiWaitbar('Placing...',0);
for i = 2:n-2
    occupied = 1;
    while any(occupied)
        r(1,i,1:2) = reshape(sqrt((n)/2048)*8e-1*([0.5,0.5]-rand(1,2)),1,1,2);
        r(1,i,3) = 8e-2*(0.5-rand());
        for j = 1:(i-1)
            d(i,j) = norm(reshape(r(1,i,:) - r(1,j,:),1,3));
            occupied(j) = heaviside(rad(j) + rad(i) - d(i,j));
        end
    end
    multiWaitbar('Placing...',i/n);
end
rad(n-1) = sqrt(n/1024);
rad(n) = rad(n-1);

r(1,n-1,:) = reshape([0,0,8e-2*0.5+rad(n)],1,1,3);
r(1,n,:) = reshape([0,0,-(8e-2*0.5+rad(n))],1,1,3);
multiWaitbar('Placing...','Close');
end

%for i = 1:n
%   v(i,:) = 0.2*(0.5-rand(3,1));
%  q(i) = 1e-6*(0.5-rand());
%end
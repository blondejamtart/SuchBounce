function r = random_seed_sphere(n,rad,r_size)

r = zeros(1,n,3);
multiWaitbar('Placing...',0);
for i = 2:n
    occupied = 1;
    while any(occupied)
        theta = 2*pi*rand();
        phi = pi*rand();
        R = r_size*rand();
        r(1,i,1) = R*cos(theta)*sin(phi);
        r(1,i,2) = R*sin(theta)*sin(phi);
        r(1,i,3) = R*cos(phi);
        for j = 1:(i-1)
            d(i,j) = norm(reshape(r(1,i,:) - r(1,j,:),1,3));
            occupied(j) = heaviside(rad(j) + rad(i) - d(i,j));
        end
    end
    multiWaitbar('Placing...',i/n);
end
multiWaitbar('Placing...','Close');

end


%for i = 1:n
%   v(i,:) = 0.2*(0.5-rand(3,1));
%  q(i) = 1e-6*(0.5-rand());
%end
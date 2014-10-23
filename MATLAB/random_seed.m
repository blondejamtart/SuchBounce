r(1,:) = rand(3,1);
for i = 2:n
    occupied = 1;
    while any(occupied)
        r(i,:) = rand(3,1);        
        for j = 1:(i-1)
            d(i,j) = norm(r(i,:) - r(j,:));
            occupied(j) = heaviside(rad(j) + rad(i) - d(i,j));
        end
    end
end    

for i = 1:n
    v(i,:) = 0.2*(0.5-rand(3,1));
    q(i) = 1e-6*(0.5-rand());
end
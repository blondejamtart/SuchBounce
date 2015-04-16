function randseed(r,q,v,w,rad)

n = size(q,2);
r(1:2,1) = 4*rand(2,1);
r(3,1) = 0;

for i = 2:n
	
    occupied = bool(ones(i-1,1));
    while any(occupied)
		occupied = bool(ones(i-1,1));
		r(1:2,i) = 4*rand(2,1);
		r(3,i) = 2*rand();       
		local d = zeros((i-1),1);        
		for j = 1:(i-1)
			d(j) = norm(r(:,i) - r(:,j));
			if (d(j) > 1.0001*(rad(i) + rad(j)))
				occupied(j) = bool(0);
			end			
		end
    end
end    

for i = 1:n
    v(1:2,i) = 2e-4*(0.5-rand(2,1));
	v(3,i) = 1e-4*(0.5-rand());
    q(i) = 0*(0.5-rand());
end

end
function randseed(r::Array{Float64,2},v::Array{Float64,2},w::Array{Float64,2},q::Array{Float64,2},rad::Array{Float64,2})

const n = size(q,2);
r[1:2,1] = 2e-4*rand(2,1);
r[3,1] = 0;

for i = 2:n
	
    global occupied = bool(ones(i-1,1));
    while any(occupied)
		occupied = bool(ones(i-1,1));
		r[1:2,i] = 3e-4*rand(2,1);
		r[3,i] = 1e-4*rand();       
		local d = zeros((i-1),1);        
		for j = 1:(i-1)
			d[j] = norm(r[:,i] - r[:,j]);
			if (d[j] > 1.0001*(rad[i] + rad[j]))
				occupied[j] = bool(0);
			end			
		end
    end
end    

for i = 1:n
    v[1:2,i] = 2e-6*(0.5-rand(2,1));
	v[3,i] = 1e-6*(0.5-rand());
    q[i] = 0*(0.5-rand());
end
return r, v, w, q

end

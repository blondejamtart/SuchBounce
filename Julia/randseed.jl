function randseed(r::Array{Float64,2},v::Array{Float64,2},w::Array{Float64,2},q::Array{Float64,2},rad::Array{Float64,2})

const n = size(q,2);
r[:,1] = 2*rand(3,1);

for i = 2:n
	
    global occupied = bool(ones(i-1,1));
    while any(occupied)
        r[:,i] = 2*rand(3,1);        
	local d = zeros((i-1),1);        
	for j = 1:(i-1)
		d[j] = norm(r[:,i] - r[:,j]);
		occupied[j] = bool(float64(1/2 + (rad[i] + rad[j] - d[j])/(2*abs(rad[i] + rad[j] - d[j]))));
        end
    end
end    

for i = 1:n
    v[:,i] = 5e-6*(0.5-rand(3,1));
    q[i] = 1e-6*(0.5-rand());
end
return r, v, w, q

end

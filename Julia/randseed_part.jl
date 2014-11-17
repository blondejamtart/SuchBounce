function randseed_n(r::Array{Float64,2},v::Array{Float64,2},w::Array{Float64,2},q::Array{Float64,2},rad::Array{Float64,2},i::Int64)

	
global occupied = bool(ones(size(r,2),1));
for n = i+1:size(r,2)
while any(occupied[1:n-1])
	occupied = bool(ones(size(r,2),1));
	r[1:2,n] = 0.2*(0.5-rand(2,1)) + [mean(r[1,1:i]); mean(r[2,1:i])];
	r[3,n] = 0;       
	local d = zeros((n-1),1);        
	for j = 1:(n-1)
		d[j] = norm(r[:,n] - r[:,j]);
		if (d[j] > 1.0001*(rad[n] + rad[j]))
			occupied[j] = bool(0);
		end			
	end
end
v[1:2,n] = 5e-7*(0.5-rand(2,1));
v[3,n] = 1e-8*(0.5-rand());
q[n] = 0*(0.5-rand());
end  

return r, v, w, q

end

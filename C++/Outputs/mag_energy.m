function H = mag_energy(x,r,n)
H = 0;
mu = zeros(n,3);
mu(:,1) = reshape(cos(x),n,1);
mu(:,2) = reshape(sin(x),n,1);
for i = 1:n
    for j = 1:i-1
        r_norm = (r(i,:) - r(j,:))/norm(r(i,:) - r(j,:));
        H = H - 2*(norm(r(i,:) - r(j,:)))^-3*(3*dot(mu(i,:),r_norm)*dot(mu(j,:),r_norm) - dot(mu(i,:),mu(j,:)));
    end
end
end
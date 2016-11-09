function [H,par] = mag_energy_NEW(x,r,n,flag,r_norm,norm_r)

if flag == 1
    mu = zeros(3,n);
    mu(1,:) = cos(x);
    mu(2,:) = sin(x);
else
    mu = x';
end
r_norm_tran = permute(r_norm,[2 3 4 1]);



A = zeros(n);
for i = 1:n
    A(:,i) = mu(:,i)'*r_norm_tran(:,:,i);
end
H = sum(sum((norm_r).*(3*A.*A' + mu'*mu)));
par = sum(sum((norm_r.^(1/3)).*(mu'*mu)));
end
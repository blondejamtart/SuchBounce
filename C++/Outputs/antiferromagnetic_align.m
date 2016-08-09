mu = zeros(1,512,3);
[~,ind] = sort(r(1,:,2));
x = 0;
ii = 0;
for i = 1:512
    if r(1,ind(i),2) ~= x
        x = r(1,ind(i),2);
        ii = ii+1;        
    end
    b(i) = ii;
end

b_tmp = 0;

mu_tmp = [1 0 0];

for i = 1:512
    if b(i) ~= b_tmp
        b_tmp = b(i);
        mu_tmp = -mu_tmp;
    end
    mu(1,ind(i),:) = mu_tmp;
end
mat = rand(16,16);

for i = 1:16
    matvec(16*(i-1)+1:16*i) = mat(:,i);
end

a = 1;
n = 16;
while n>1
    for i=0:(0.5*16*n)-1
        x = 16*(floor(2*i/n));
        y = i-0.5*n*x/16;
        matvec(x+y+1) = matvec(x+y+1) + matvec(x+n-y);
        matvec(x+n-y) = 0;
    end
    a = a+1;
    n=n/2;
end
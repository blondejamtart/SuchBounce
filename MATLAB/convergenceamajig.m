t = [1250,1000,625,500,250,125,50,25];
for i = 1:size(r,3)
    a(i) = max(max(abs(r(:,:,size(r,3))-r(:,:,i))));
end
plot(t,a)
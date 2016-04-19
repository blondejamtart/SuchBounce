n = 512;
n_el = 0.5*n*(n-1);
l1 = zeros(1,n_el);
l2 = zeros(1,n_el);
count = 1;
for i = 0:(n/128-1)
    l1(1,count:count+8127) = l1_128 + 128*i;
    l2(1,count:count+8127) = l2_128 + 128*i;
    count = count + 8128;
    for ii = 0:i-1
        for iiii = 0:127
            for iii = 0:127
                l1(1,count) = i*128+iii;
                l2(1,count) = ii*128+((iii+iiii)-128*floor((iii+iiii)/128));
                count = count+1;
            end
        end
    end
end
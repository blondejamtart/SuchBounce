m1 = [NaN 1 2*ones(1,1998)];
m2 = [NaN 0 1 2*ones(1,1997)];
m3 = [NaN 0 0 1 2*ones(1,1996)];
N = 8;
a = pi*(1-4/N);
theta = pi*(0.5-1/N);
for i = 1:200
    d(i) = i*pi/400;    
    D1(i) = 2*(1+sin(pi*(0.5-2/N))+sin(pi*(0.5-2/N)-d(i)));    
    p1(i) = 2*pi/N + d(i);
    D2(i) = sqrt(4 + D1(i)^2 - 4*D1(i)*cos(a));
    p2(i) = p1(i) + asin(2*sin(a)/D2(i));
    F1(i) = m1(N/2)*cos(theta-d(i))/(2*(sin(theta)+sin(theta-d(i))))^2;
    F2(i) = m2(N/2)*sin(p1(i))/D1(i)^2;
    F3(i) = m3(N/2)*sin(p2(i))/D2(i)^2;
end

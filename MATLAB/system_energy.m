function E = system_energy(r,m,R,q)

A = 5e-19;
G = 6.6734e-11;
epsilon = 8.854e-12;


H = zeros(size(r,1));
for i = 1:size(r,1);
    for j = 1:i-1
        d = norm(r(i,:)-r(j));
        d0 = (R(i) + R(j)) + 0.01*min(R(i),R(j));
        dmin = (R(i) + R(j)) - 0.005*min(R(i),R(j));
        H(i,j) = -G*m(i)*m(j)/d +  q(i)*q(j)/(4*pi*epsilon*d);
        if d > d0
            H(i,j) = H(i,j) - (A/6)*(2*R(i)*R(j)/(d^2-(R(i)+R(j))^2) + 2*R(i)*R(j)/(d^2-(R(i)-R(j))^2)+log((d^2-(R(i)+R(j))^2)/(d^2-(R(i)-R(j))^2)));
        else
            F0 = (A/3)*d*(1/(d^2-(R(i)+R(j))^2) - 1/(d^2-(R(i)-R(j))^2) - 2*R(i)*R(j)/(d^2-(R(i)+R(j))^2)^2 - 2*R(i)*R(j)/(d^2-(R(i)-R(j))^2)^2);
            H(i,j) = H(i,j) - F0/(2*(d0 - dmin))*(d - dmin)^2 - F0*(d0 - dmin)/2 -...
                (A/6)*(2*R(i)*R(j)/(d0^2-(R(i)+R(j))^2) + 2*R(i)*R(j)/(d0^2-(R(i)-R(j))^2)+log((d0^2-(R(i)+R(j))^2)/(d0^2-(R(i)-R(j))^2)));
        end
    end
end
E = sum(sum(H));
end

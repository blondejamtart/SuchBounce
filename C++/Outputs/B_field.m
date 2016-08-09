function B = B_field(m,r)
d = norm(r);
B = 3*r*dot(m,r)/d^5 - m/d^3;
for i = -100:500
    d = [0 0 0 2e-4+1e-5*i/100 0 0];
    E(i+101) = system_energy(d,2);
end

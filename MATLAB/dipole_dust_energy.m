clear all
clc

k = (4*pi*8.8541878176e-12)^-1; % Constant
counter = 0;

%% Run parameters


q = 1e-6; % Dipole charge, coulombs
d = 1e-3; % Dipole length, metres
a = 2e-3; % Lattice x spacing, metres
b = 2e-3; % Lattice y spacing, metres
c = 2e-3; % Lattice z spacing, metres
tol = 0.00001; % Convergence tolerance

%% Iterate over next-nearest neighbour adding interaction energy

E_old = Inf;
E_new = 0;
n = 1;
V = 0;
while (abs(1-E_old/E_new)) > tol
    
    if E_new ~= 0
        E_old = E_new;
    end
    
    counter = counter + 1;
    
    % r{1/2,x,y,z} are positions of all current distance positive/negative
    % charges w.r.t central dipole
    
    
    
    for x = [-n n]
        for y = 1-n:n-1
            for z = 1-n:n-1
                r{1,(n+1)+x,(n+1)+y,(n+1)+z} = [(d/2+x*a) y*b z*c];
                r{2,(n+1)+x,(n+1)+y,(n+1)+z} = [-(d/2-x*a) y*b z*c];
                
                V = V + k*q*q*(1/sqrt(dot((r{1,(n+1)+x,(n+1)+y,(n+1)+z}-[d/2 0 0]),(r{1,(n+1)+x,(n+1)+y,(n+1)+z}-[d/2 0 0])))...
                    - 1/sqrt(dot((r{1,(n+1)+x,(n+1)+y,(n+1)+z}+[d/2 0 0]),(r{1,(n+1)+x,(n+1)+y,(n+1)+z}+[d/2 0 0])))...
                    - 1/sqrt(dot((r{2,(n+1)+x,(n+1)+y,(n+1)+z}-[d/2 0 0]),(r{2,(n+1)+x,(n+1)+y,(n+1)+z}-[d/2 0 0])))...
                    + 1/sqrt(dot((r{2,(n+1)+x,(n+1)+y,(n+1)+z}+[d/2 0 0]),(r{2,(n+1)+x,(n+1)+y,(n+1)+z}+[d/2 0 0]))));
            end
        end
    end
    
    for y = [-n n]
        for x = 1-n:n-1
            for z = 1-n:n-1
                r{1,(n+1)+x,(n+1)+y,(n+1)+z} = [(d/2+x*a) y*b z*c];
                r{2,(n+1)+x,(n+1)+y,(n+1)+z} = [-(d/2-x*a) y*b z*c];
                
                V = V + k*q*q*(1/sqrt(dot((r{1,(n+1)+x,(n+1)+y,(n+1)+z}-[d/2 0 0]),(r{1,(n+1)+x,(n+1)+y,(n+1)+z}-[d/2 0 0])))...
                    - 1/sqrt(dot((r{1,(n+1)+x,(n+1)+y,(n+1)+z}+[d/2 0 0]),(r{1,(n+1)+x,(n+1)+y,(n+1)+z}+[d/2 0 0])))...
                    - 1/sqrt(dot((r{2,(n+1)+x,(n+1)+y,(n+1)+z}-[d/2 0 0]),(r{2,(n+1)+x,(n+1)+y,(n+1)+z}-[d/2 0 0])))...
                    + 1/sqrt(dot((r{2,(n+1)+x,(n+1)+y,(n+1)+z}+[d/2 0 0]),(r{2,(n+1)+x,(n+1)+y,(n+1)+z}+[d/2 0 0]))));
            end
        end
    end
    
    for z = [-n n]
        for x = 1-n:n-1
            for y = 1-n:n-1
                r{1,(n+1)+x,(n+1)+y,(n+1)+z} = [(d/2+x*a) y*b z*c];
                r{2,(n+1)+x,(n+1)+y,(n+1)+z} = [-(d/2-x*a) y*b z*c];
                
                V = V + k*q*q*(1/sqrt(dot((r{1,(n+1)+x,(n+1)+y,(n+1)+z}-[d/2 0 0]),(r{1,(n+1)+x,(n+1)+y,(n+1)+z}-[d/2 0 0])))...
                    - 1/sqrt(dot((r{1,(n+1)+x,(n+1)+y,(n+1)+z}+[d/2 0 0]),(r{1,(n+1)+x,(n+1)+y,(n+1)+z}+[d/2 0 0])))...
                    - 1/sqrt(dot((r{2,(n+1)+x,(n+1)+y,(n+1)+z}-[d/2 0 0]),(r{2,(n+1)+x,(n+1)+y,(n+1)+z}-[d/2 0 0])))...
                    + 1/sqrt(dot((r{2,(n+1)+x,(n+1)+y,(n+1)+z}+[d/2 0 0]),(r{2,(n+1)+x,(n+1)+y,(n+1)+z}+[d/2 0 0]))));
            end
        end
    end
    
    for x = [-n n]
        for y = [-n n]
            for z = 1-n:n-1
                r{1,(n+1)+x,(n+1)+y,(n+1)+z} = [(d/2+x*a) y*b z*c];
                r{2,(n+1)+x,(n+1)+y,(n+1)+z} = [-(d/2-x*a) y*b z*c];
                
                V = V + k*q*q*(1/sqrt(dot((r{1,(n+1)+x,(n+1)+y,(n+1)+z}-[d/2 0 0]),(r{1,(n+1)+x,(n+1)+y,(n+1)+z}-[d/2 0 0])))...
                    - 1/sqrt(dot((r{1,(n+1)+x,(n+1)+y,(n+1)+z}+[d/2 0 0]),(r{1,(n+1)+x,(n+1)+y,(n+1)+z}+[d/2 0 0])))...
                    - 1/sqrt(dot((r{2,(n+1)+x,(n+1)+y,(n+1)+z}-[d/2 0 0]),(r{2,(n+1)+x,(n+1)+y,(n+1)+z}-[d/2 0 0])))...
                    + 1/sqrt(dot((r{2,(n+1)+x,(n+1)+y,(n+1)+z}+[d/2 0 0]),(r{2,(n+1)+x,(n+1)+y,(n+1)+z}+[d/2 0 0]))));
            end
        end
    end
    
    for z = [-n n]
        for y = [-n n]
            for x = 1-n:n-1
                r{1,(n+1)+x,(n+1)+y,(n+1)+z} = [(d/2+x*a) y*b z*c];
                r{2,(n+1)+x,(n+1)+y,(n+1)+z} = [-(d/2-x*a) y*b z*c];
                
                V = V + k*q*q*(1/sqrt(dot((r{1,(n+1)+x,(n+1)+y,(n+1)+z}-[d/2 0 0]),(r{1,(n+1)+x,(n+1)+y,(n+1)+z}-[d/2 0 0])))...
                    - 1/sqrt(dot((r{1,(n+1)+x,(n+1)+y,(n+1)+z}+[d/2 0 0]),(r{1,(n+1)+x,(n+1)+y,(n+1)+z}+[d/2 0 0])))...
                    - 1/sqrt(dot((r{2,(n+1)+x,(n+1)+y,(n+1)+z}-[d/2 0 0]),(r{2,(n+1)+x,(n+1)+y,(n+1)+z}-[d/2 0 0])))...
                    + 1/sqrt(dot((r{2,(n+1)+x,(n+1)+y,(n+1)+z}+[d/2 0 0]),(r{2,(n+1)+x,(n+1)+y,(n+1)+z}+[d/2 0 0]))));
            end
        end
    end
    
    for z = [-n n]
        for x = [-n n]
            for y = 1-n:n-1
                r{1,(n+1)+x,(n+1)+y,(n+1)+z} = [(d/2+x*a) y*b z*c];
                r{2,(n+1)+x,(n+1)+y,(n+1)+z} = [-(d/2-x*a) y*b z*c];
                
                V = V + k*q*q*(1/sqrt(dot((r{1,(n+1)+x,(n+1)+y,(n+1)+z}-[d/2 0 0]),(r{1,(n+1)+x,(n+1)+y,(n+1)+z}-[d/2 0 0])))...
                    - 1/sqrt(dot((r{1,(n+1)+x,(n+1)+y,(n+1)+z}+[d/2 0 0]),(r{1,(n+1)+x,(n+1)+y,(n+1)+z}+[d/2 0 0])))...
                    - 1/sqrt(dot((r{2,(n+1)+x,(n+1)+y,(n+1)+z}-[d/2 0 0]),(r{2,(n+1)+x,(n+1)+y,(n+1)+z}-[d/2 0 0])))...
                    + 1/sqrt(dot((r{2,(n+1)+x,(n+1)+y,(n+1)+z}+[d/2 0 0]),(r{2,(n+1)+x,(n+1)+y,(n+1)+z}+[d/2 0 0]))));
            end
        end
    end
    
    for x = [-n n]
        for y = [-n n]
            for z = [-n n]
                r{1,(n+1)+x,(n+1)+y,(n+1)+z} = [(d/2+x*a) y*b z*c];
                r{2,(n+1)+x,(n+1)+y,(n+1)+z} = [-(d/2-x*a) y*b z*c];
                
                V = V + k*q*q*(1/sqrt(dot((r{1,(n+1)+x,(n+1)+y,(n+1)+z}-[d/2 0 0]),(r{1,(n+1)+x,(n+1)+y,(n+1)+z}-[d/2 0 0])))...
                    - 1/sqrt(dot((r{1,(n+1)+x,(n+1)+y,(n+1)+z}+[d/2 0 0]),(r{1,(n+1)+x,(n+1)+y,(n+1)+z}+[d/2 0 0])))...
                    - 1/sqrt(dot((r{2,(n+1)+x,(n+1)+y,(n+1)+z}-[d/2 0 0]),(r{2,(n+1)+x,(n+1)+y,(n+1)+z}-[d/2 0 0])))...
                    + 1/sqrt(dot((r{2,(n+1)+x,(n+1)+y,(n+1)+z}+[d/2 0 0]),(r{2,(n+1)+x,(n+1)+y,(n+1)+z}+[d/2 0 0]))));
            end
        end
    end
    
    E_new = V;
    disp(counter)
    n = n + 1;
    
end

disp(E_new)




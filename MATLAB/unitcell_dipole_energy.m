
clc

k = (4*pi*8.8541878176e-12)^-1; % Constant
counter = 0;

%% Run parameters


cell.dipole(1).positions = [0 0 0];
cell.dipole(2).positions = [2e-3 0 0];
cell.dipole(3).positions = [0 2e-3 0];
cell.dipole(4).positions = [0 0 2e-3];
cell.dipole(5).positions = [2e-3 2e-3 0];
cell.dipole(6).positions = [2e-3 0 2e-3];
cell.dipole(7).positions = [0 2e-3 2e-3];
cell.dipole(8).positions = [2e-3 2e-3 2e-3];

for i = 1:8
    cell.dipole(i).angles = [0 0];
    cell.dipole(i).q = 1e-6; % Dipole charge, coulombs
    cell.dipole(i).d = 1e-3; % Dipole length, metres
end

cell.a = 4e-3;
cell.b = 4e-3;
cell.c = 4e-3;

tol = 0.0001; % Convergence tolerance

%% Iterate over next-nearest neighbour adding interaction energy

E_old = Inf;
E_new = 0;
n = 1;
V = zeros(length(cell.dipole),1);

while (abs(1-E_old/E_new)) > tol
    
    %     cell_map = repmat(cell,n_cell);
    
    if E_new ~= 0
        E_old = E_new;
    end
    
    counter = counter + 1;
    
    % r{1/2,x,y,z} are positions of all current distance positive/negative charges in the cell
    
    for n_dipole = 1:length(cell.dipole)
        
        theta = cell.dipole(n_dipole).angles(1);
        phi = cell.dipole(n_dipole).angles(2);
        pos_vect = cell.dipole(n_dipole).positions;
        r_cell{1,n_dipole} = pos_vect + (cell.dipole(n_dipole).d)/2*(cos(theta)*sin(phi)*[1 0 0] + sin(theta)*sin(phi)*[0 1 0] + cos(phi)*[0 0 1]);
        r_cell{2,n_dipole} = pos_vect - (cell.dipole(n_dipole).d)/2*(cos(theta)*sin(phi)*[1 0 0] + sin(theta)*sin(phi)*[0 1 0] + cos(phi)*[0 0 1]);
        
    end
    
    if counter == 1
        V = compute_block_energy(cell,r_cell,0,0,0,k);
    end    
    
    for x = [-n n]
        for y = [-n n]
            for z = [-n n]
                V = V + compute_block_energy(cell,r_cell,x,y,z,k);
            end
            
        end
    end
    
    
    n_vals = 1-n:n-1;
    for x = [-n n]
        for y = [-n n]
            V_delta = zeros(length(cell.dipole),length(n_vals));
            parfor z = 1:length(n_vals)
                V_delta(:,z) = compute_block_energy(cell,r_cell,x,y,n_vals(z),k);
            end
            V = V + sum(V_delta,2);
        end
    end
    
    
    for z = [-n n]
        for y = [-n n]
            V_delta = zeros(length(cell.dipole),length(n_vals));
            parfor x = 1:length(n_vals)
                V_delta(:,x) = compute_block_energy(cell,r_cell,n_vals(x),y,z,k);
            end
            V = V + sum(V_delta,2);
        end
    end
    
    for z = [-n n]
        for x = [-n n]
            V_delta = zeros(length(cell.dipole),length(n_vals));
            parfor y = 1:length(n_vals)
                V_delta(:,y) = compute_block_energy(cell,r_cell,x,n_vals(y),z,k);
            end
            V = V + sum(V_delta,2);
        end
    end
    
    
    
    for x = [-n n]
        V_delta = zeros(length(cell.dipole),length(n_vals));
        parfor y = 1:length(n_vals)
            for z = 1-n:n-1
                V_delta(:,y) = V_delta(:,y) + compute_block_energy(cell,r_cell,x,n_vals(y),z,k);
            end
        end
        V = V + sum(V_delta,2);
    end
    
    
    for y = [-n n]
        V_delta = zeros(length(cell.dipole),length(n_vals));
        parfor x = 1:length(n_vals)
            for z = 1-n:n-1
                V_delta(:,x) = V_delta(:,x) + compute_block_energy(cell,r_cell,n_vals(x),y,z,k);
            end
        end
        V = V + sum(V_delta,2);
    end
    
    for z = [-n n]
        V_delta = zeros(length(cell.dipole),length(n_vals));
        parfor x = 1:length(n_vals)
            for y = 1-n:n-1
                V_delta(:,x) = V_delta(:,x) + compute_block_energy(cell,r_cell,n_vals(x),y,z,k);
            end
        end
        V = V + sum(V_delta,2);
    end
    
    E_new = sum(V);
    disp(counter)
    n = n + 1;
    
end



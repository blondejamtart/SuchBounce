
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
cell.dipole(8).angles = [pi/2 0];
cell.a = 3e-3;
cell.b = 6e-3;
cell.c = 6e-3;

tol = 0.0001; % Convergence tolerance

%% Iterate over next-nearest neighbour adding interaction energy

E_old = Inf;
E_new = 0;
n = 1;
V = zeros(length(cell.dipole),1);
for n_dipole = 1:length(cell.dipole)
    F{1,n_dipole} = zeros(3,1);
    F{2,n_dipole} = zeros(3,1);
end

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
        V = compute_block_energy(cell,r_cell,V,0,0,0,k);
        F = compute_block_force(cell,r_cell,F,0,0,0,k);
    end
    
    for x = [-n n]
        for y = [-n n]
            for z = [-n n]
                V = compute_block_energy(cell,r_cell,V,x,y,z,k);
                F = compute_block_force(cell,r_cell,F,x,y,z,k);
            end
        end
    end
    
    for x = [-n n]
        for y = [-n n]
            for z = 1-n:n-1
                V = compute_block_energy(cell,r_cell,V,x,y,z,k);
                F = compute_block_force(cell,r_cell,F,x,y,z,k);
            end
        end
    end
    
    
    for z = [-n n]
        for y = [-n n]
            for x = 1-n:n-1
                V = compute_block_energy(cell,r_cell,V,x,y,z,k);
                F = compute_block_force(cell,r_cell,F,x,y,z,k);
            end
        end
    end
    
    for z = [-n n]
        for x = [-n n]
            for y = 1-n:n-1
                V = compute_block_energy(cell,r_cell,V,x,y,z,k);
                F = compute_block_force(cell,r_cell,F,x,y,z,k);
            end
        end
    end
    
    
    
    for x = [-n n]
        for y = 1-n:n-1
            for z = 1-n:n-1
                V = compute_block_energy(cell,r_cell,V,x,y,z,k);
                F = compute_block_force(cell,r_cell,F,x,y,z,k);
            end
        end
    end
    
    
    for y = [-n n]
        for x = 1-n:n-1
            for z = 1-n:n-1
                V = compute_block_energy(cell,r_cell,V,x,y,z,k);
                F = compute_block_force(cell,r_cell,F,x,y,z,k);
            end
        end
    end
    
    for z = [-n n]
        for x = 1-n:n-1
            for y = 1-n:n-1
                V = compute_block_energy(cell,r_cell,V,x,y,z,k);
                F = compute_block_force(cell,r_cell,F,x,y,z,k);
            end
        end
    end
    
    E_new = sum(V);
    disp(counter)
    n = n + 1;
    
end

for n_dipole = 1:length(cell.dipole)
    for i = 1:2
%     F_theta_half{i,n_dipole} = atan(F{i,n_dipole}(1)/F{i,n_dipole}(2));
%     F_phi_half{i,n_dipole} = atan(F{i,n_dipole}(3)/sqrt(F{i,n_dipole}(1)^2 + F{i,n_dipole}(2)^2));
    end
    F_theta{n_dipole} = F_theta_half{1,n_dipole} + F_theta_half{2,n_dipole} ;
    F_phi{n_dipole} = F_phi_half{1,n_dipole} + F_phi_half{2,n_dipole};
end



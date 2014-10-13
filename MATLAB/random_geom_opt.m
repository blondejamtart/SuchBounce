
clc
clear all

k = (4*pi*8.8541878176e-12)^-1; % Constant


%% Run parameters

cool = 0.9;

cell.dipole(1).positions = [0 0 0];
cell.dipole(2).positions = [0.5 0 0];
cell.dipole(3).positions = [0 0.5 0];
cell.dipole(4).positions = [0 0 0.5];
cell.dipole(5).positions = [0.5 0.5 0];
cell.dipole(6).positions = [0.5 0 0.5];
cell.dipole(7).positions = [0 0.5 0.5];
cell.dipole(8).positions = [0.5 0.5 0.5];

for i = 1:8
    cell.dipole(i).angles = [0 0];
    cell.dipole(i).q = 1e-8; % Dipole charge, coulombs
    cell.dipole(i).d = 1e-3; % Dipole length, metres
end
for i = [1 5 6 7]
    cell.dipole(i).angles = [0 pi];
end

cell.size = 4e-3*[1 1 1];
cell.particle_size = 0.125e-3;

tol = 0.01; % Convergence tolerance

%% Volume variation/optimisation



counter = 0;

E_old = dipole_energy(cell,k,tol);            

a_step = 0.125*cell.size(1);
E_a_var = Inf;

while E_a_var > tol
    trial_a_cell = cell;
    b_step = 0.125*cell.size(2);
    E_b_var = Inf;
    
    while E_b_var > tol
        
        trial_b_cell = trial_a_cell;
        c_step = 0.125*cell.size(3);
        E_c_var = Inf;
        
        while E_c_var > tol
            
            trial_c_cell = trial_b_cell;
            trial_c_cell.size(3) = trial_c_cell.size(3) + c_step;
            E_trial = dipole_energy(trial_c_cell,k,tol);
            
%             if is_overlapping(trial_c_cell)
%                 E_trial = Inf;
%             end
            
            E_c_var = abs(1-(E_trial/E_old));
            
            if E_trial < E_old*(1 + tol)
                trial_b_cell = trial_c_cell;
                c_step = cool*c_step;              
                E_old = E_trial;
            else
                c_step = -cool^3*c_step;
            end
            counter = counter + 1;
            disp(counter)
        end
        
        disp('c parameter converged')
        
        trial_b_cell.size(2) = trial_b_cell.size(2) + b_step;
        E_trial = dipole_energy(trial_b_cell,k,tol);
        
%         if is_overlapping(trial_b_cell)
%             E_trial = Inf;
%         end
        
        if E_trial < E_old
            trial_a_cell = trial_b_cell;
            b_step = cool*b_step;
            E_b_var = abs(1-(E_trial/E_old));
            E_old = E_trial;
        else
            b_step = -cool*b_step;
        end
    end
    
    disp('b parameter converged')
   
    trial_a_cell.size(1) = trial_a_cell.size(1) + a_step;
    E_trial = dipole_energy(trial_a_cell,k,tol);
    
%     if is_overlapping(trial_a_cell)
%         E_trial = Inf;
%     end
    
    if E_trial < E_old
        cell = trial_a_cell;
        a_step = cool*a_step;
        E_a_var = abs(1-(E_trial/E_old));
        E_old = E_trial;
    else
        a_step = -cool*a_step;
    end
end

disp('Converged!')





function V = parcompute_block_energy(cell,r_cell,x,y,z,k)

V = zeros(length(cell.dipole),1);
V_delta = zeros(length(cell.dipole),length(cell.dipole));

for n_dipole = 1:length(cell.dipole)
    parfor n_ext_dipole = 1:length(cell.dipole)
        
        
        r_temp_1 = r_cell{1,n_ext_dipole} + [x*cell.size(1) y*cell.size(2) z*cell.size(3)];
        r_temp_2 = r_cell{2,n_ext_dipole} + [x*cell.size(1) y*cell.size(2) z*cell.size(3)];
        
        if any(r_temp_1 ~= r_cell{1,n_dipole} & r_temp_2 ~= r_cell{2,n_dipole}) % Ignore dipole self-energy
            
            V_delta(n_dipole,n_ext_dipole) = V_delta(n_dipole,n_ext_dipole) + k*cell.dipole(n_dipole).q*cell.dipole(n_ext_dipole).q*...
                (1/sqrt(dot((r_temp_1-r_cell{1,n_dipole}),(r_temp_1-r_cell{1,n_dipole})))...
                - 1/sqrt(dot((r_temp_2-r_cell{1,n_dipole}),(r_temp_2-r_cell{1,n_dipole})))...
                - 1/sqrt(dot((r_temp_1-r_cell{2,n_dipole}),(r_temp_1-r_cell{2,n_dipole})))...
                + 1/sqrt(dot((r_temp_2-r_cell{2,n_dipole}),(r_temp_2-r_cell{2,n_dipole}))));
            
        end
    end
    V(n_dipole) = sum(V_delta(n_dipole,:));
end


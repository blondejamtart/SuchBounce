
function V = compute_block_energy(cell,r_cell,x,y,z,k)

V = zeros(length(cell.dipole),1);

for n_dipole = 1:length(cell.dipole)
    for n_ext_dipole = 1:length(cell.dipole)
        
        
        r_temp{1,n_ext_dipole} = r_cell{1,n_ext_dipole} + [x*cell.size(1) y*cell.size(2) z*cell.size(3)];
        r_temp{2,n_ext_dipole} = r_cell{2,n_ext_dipole} + [x*cell.size(1) y*cell.size(2) z*cell.size(3)];
        
        if any(r_temp{1,n_ext_dipole} ~= r_cell{1,n_dipole}) % Ignore dipole self-energy
            
            V(n_dipole) = V(n_dipole) + k*cell.dipole(n_dipole).q*cell.dipole(n_ext_dipole).q*...
                (1/sqrt(dot((r_temp{1,n_ext_dipole}-r_cell{1,n_dipole}),(r_temp{1,n_ext_dipole}-r_cell{1,n_dipole})))...
                - 1/sqrt(dot((r_temp{2,n_ext_dipole}-r_cell{1,n_dipole}),(r_temp{2,n_ext_dipole}-r_cell{1,n_dipole})))...
                - 1/sqrt(dot((r_temp{1,n_ext_dipole}-r_cell{2,n_dipole}),(r_temp{1,n_ext_dipole}-r_cell{2,n_dipole})))...
                + 1/sqrt(dot((r_temp{2,n_ext_dipole}-r_cell{2,n_dipole}),(r_temp{2,n_ext_dipole}-r_cell{2,n_dipole}))));
            
        end
    end
end


function F = compute_block_force(cell,r_cell,F,x,y,z,k)

for n_dipole = 1:length(cell.dipole)
    for n_ext_dipole = 1:length(cell.dipole)
        
        
        r_temp{1,n_ext_dipole} = r_cell{1,n_ext_dipole} + [x*cell.a y*cell.b z*cell.c];
        r_temp{2,n_ext_dipole} = r_cell{2,n_ext_dipole} + [x*cell.a y*cell.b z*cell.c];
        
        if any(r_temp{1,n_ext_dipole} ~= r_cell{1,n_dipole}) % Ignore dipole self-energy
            
            F{1,n_dipole} = F{1,n_dipole} + k*cell.dipole(n_dipole).q*cell.dipole(n_ext_dipole).q*...
                ((r_temp{1,n_ext_dipole}-r_cell{1,n_dipole})/(dot((r_temp{1,n_ext_dipole}-r_cell{1,n_dipole}),(r_temp{1,n_ext_dipole}-r_cell{1,n_dipole})))^1.5...
                - (r_temp{2,n_ext_dipole}-r_cell{1,n_dipole})/(dot((r_temp{2,n_ext_dipole}-r_cell{1,n_dipole}),(r_temp{2,n_ext_dipole}-r_cell{1,n_dipole})))^1.5;
                
            F{2,n_dipole} = F{2,n_dipole} + k*cell.dipole(n_dipole).q*cell.dipole(n_ext_dipole).q*...
                (-(r_temp{1,n_ext_dipole}-r_cell{2,n_dipole})/(dot((r_temp{1,n_ext_dipole}-r_cell{2,n_dipole}),(r_temp{1,n_ext_dipole}-r_cell{2,n_dipole})))^1.5...
                + (r_temp{2,n_ext_dipole}-r_cell{2,n_dipole})/(dot((r_temp{2,n_ext_dipole}-r_cell{2,n_dipole}),(r_temp{2,n_ext_dipole}-r_cell{2,n_dipole})))^1.5);
            
            
        end
    end
end


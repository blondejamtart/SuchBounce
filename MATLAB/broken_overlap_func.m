function flag = is_overlapping(cell)
flag = 0;
centre = [0 0 0];
occupation = zeros(200,200,200);

for i = 1:length(cell.dipole)
    
    for ii = 1:3
        centre(ii) = cell.dipole(i).positions(ii)*cell.size(ii);
    end
    
    theta = cell.dipole(i).angles(1);
    phi = cell.dipole(i).angles(2);
    dipole_end = (cell.dipole(i).d/2)*(cos(theta)*sin(phi)*[1 0 0] + sin(theta)*sin(phi)*[0 1 0] + cos(phi)*[0 0 1]);
    switched = zeros(200,200,200);
    
    for x = centre(1) + (cell.dipole(i).d/2 + cell.particle_size)*(-20:20)
        for y = centre(2) + (cell.dipole(i).d/2 + cell.particle_size)*(-20:20)
            for z = centre(3) + (cell.dipole(i).d/2 + cell.particle_size)*(-20:20)
                distance = norm(cross(([x y z]-(centre + dipole_end)),([x y z]-(centre - dipole_end))))/norm(2*dipole_end);
                if distance < cell.particle_size
                    point = floor([x y z]*200) + 1;
                    for ii = 1:3
                        if point(ii) > 200
                            point(ii) = point(ii) - 200;
                        elseif point(ii) < 1
                            point(ii) = point(ii) + 200;
                        end
                    end
                    if switched(point(1),point(2),point(3)) == 0
                        occupation(point(1),point(2),point(3)) = occupation(point(1),point(2),point(3)) + 1;
                        switched(point(1),point(2),point(3)) = 1;
                    end
                end
            end
        end
    end    
end

if any(any(occupation > 1))
    flag = 1;  
end

end

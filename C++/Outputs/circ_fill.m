function [r,n_placed] = circ_fill(n,pixel_rad,R,hcp)
r = zeros(1,n,3);
n_placed = 0;
i = 0;
j = 0;
x = pixel_rad;
y = pixel_rad;
while n_placed < n && y < R
    while (x^2 + y^2) < R^2 && n_placed < n
        if hcp
            if j == 0;
                x = ((2*i)+1)*pixel_rad;
                y = 0;
                r(1,n_placed+1,:) = reshape([x,y,0],1,1,3);
                r(1,n_placed+2,:) = reshape([-x,y,0],1,1,3);
                n_placed = n_placed + 2;
            else
                if j == 2*floor(j/2)
                    x = ((2*i)+1)*pixel_rad;
                    y = (sqrt(3)*j)*pixel_rad;
                    r(1,n_placed+1,:) = reshape([x,y,0],1,1,3);
                    r(1,n_placed+2,:) = reshape([x,-y,0],1,1,3);
                    r(1,n_placed+3,:) = reshape([-x,y,0],1,1,3);
                    r(1,n_placed+4,:) = reshape([-x,-y,0],1,1,3);
                    n_placed = n_placed + 4;
                else
                    x = ((2*i))*pixel_rad;
                    y = (sqrt(3)*j)*pixel_rad;
                    if i == 0;
                        r(1,n_placed+1,:) = reshape([x,y,0],1,1,3);
                        r(1,n_placed+2,:) = reshape([x,-y,0],1,1,3);
                        %r(1,n_placed+3,:) = reshape([-x,-y,0],1,1,3);
                        n_placed = n_placed + 2;
                    else
                        r(1,n_placed+1,:) = reshape([x,y,0],1,1,3);
                        r(1,n_placed+2,:) = reshape([x,-y,0],1,1,3);
                        r(1,n_placed+3,:) = reshape([-x,y,0],1,1,3);
                        r(1,n_placed+4,:) = reshape([-x,-y,0],1,1,3);
                        n_placed = n_placed + 4;
                    end
                end
                
            end
            
        else
            x = (2*i+1)*pixel_rad;
            y = (2*j+1)*pixel_rad;
            r(1,n_placed+1,:) = reshape([x,y,0],1,1,3);
            r(1,n_placed+2,:) = reshape([-x,y,0],1,1,3);
            r(1,n_placed+3,:) = reshape([x,-y,0],1,1,3);
            r(1,n_placed+4,:) = reshape([-x,-y,0],1,1,3);
            n_placed = n_placed + 4;
        end
        
        i = i+1;
    end
    i = 0;
    j = j + 1;
    if hcp
        if j == 2*floor(j/2)
            x = ((2*i)+1)*pixel_rad;
            y = (sqrt(3)*j)*pixel_rad;
        else
            x = ((2*i))*pixel_rad;
            y = (sqrt(3)*j)*pixel_rad;
        end
        
    else
        y = (2*j+1)*pixel_rad;
        x = (2*i+1)*pixel_rad;
    end
end



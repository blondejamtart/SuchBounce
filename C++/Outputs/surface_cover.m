surface_coverage = zeros(n,surface_blocks);
angles = zeros(n,n,2);
steps = sqrt(surface_blocks/2);
for a = 1:n
   
    phi_mu = acos(mu(a,3));
    theta_mu = atan(mu(a,2)/mu(a,1));
    if (mu(a,1)/sin(phi_mu) < 0)
        
        theta_mu = theta_mu + pi;
    end
    if (mu(a,1)/sin(phi_mu) > 0 && mu(a,2)/sin(phi_mu) < 0)
        
        theta_mu = theta_mu + 2.0*pi;
    end
    
    for b = 1:n
        if (b ~= a)
            direction = r(a,:) - r(b,:);
            d = norm(direction);
            phi_r = acos(direction(3)/d);
            theta_r = atan(direction(2)/direction(1));
            
            if (direction(1)/(d*sin(phi_r)) < 0)
                theta_r = theta_r + pi;
            end
            if (direction(1)/(d*sin(phi_r)) > 0 && direction(2)/(d*sin(phi_r)) < 0)                
                theta_r = theta_r + 2.0*pi;
            end
            
            %theta_r = theta_r - theta_mu;
            %phi_r = phi_r - phi_mu;
            
            if (phi_r < 0.0)
                phi_r = phi_r + pi;
            end
            
            if (phi_r > pi)
                phi_r = phi_r - pi;
            end
            if (theta_r < 0.0)
                theta_r = theta_r + 2.0*pi;
            end
            if (theta_r > 2.0*pi)
                theta_r = theta_r - 2.0*pi;
            end
            angles(a,b,1) = theta_r;
            angles(a,b,2) = phi_r;
            
            for i = 1:2*steps
                for j = 1:steps
                    if ((phi_r) >= ((j-1)/steps)*pi && (phi_r) < ((j)/steps)*pi)
                        if ((theta_r) >= ((i-1)/(2*steps))*2.0*pi && (theta_r) < ((i)/(2*steps))*2.0*pi)
                            if(exp(-4*(d - rad(a) - rad(b))) > surface_coverage(a,(i-1)*steps+j))
                                surface_coverage(a,(i-1)*steps+j) = exp(-4*(d - rad(a) - rad(b)));
                            end
                        end
                    end
                end
            end
        end
    end
end






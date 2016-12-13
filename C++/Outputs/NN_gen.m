connected = zeros(1,net_size-3);
while(any(~connected))
    connections = zeros(1,net_size,net_size);
    for i = 1:surface_blocks
        for j = (surface_blocks+1):net_size
            connections(1,i,j) = (rand() < synapse_density);
        end
    end
    
    for i = (surface_blocks+1):net_size
        for j = (i+1):net_size
            connections(1,i,j) = (rand() < synapse_density);
        end
    end
    for i = 1:net_size-3
        connected(i) = 0;
        for j = (i+1):net_size
            connected = connected + connections(1,i,j);
        end
    end
    plot(connected)
end


weights(k,:,:) = (rand(1,net_size,net_size)).*connections; % (0.5*ones(1,net_size,net_size)-rand(1,net_size,net_size)).*connections;

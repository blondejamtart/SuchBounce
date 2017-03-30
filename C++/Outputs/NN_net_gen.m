function weights = NN_net_gen(options,w1);

if options.is_layered
    weights = zeros(1,options.net_size,options.net_size);
    x = 0;
    for i = 1:options.n_layers
        layers((x+1):(x+options.layer_size(i))) = i;
        x = x + options.layer_size(i);
    end
    
    for i = 1:options.net_size
        for j = i+1:options.net_size
            if layers(j) == layers(i)+1
                weights(1,i,j) = 1/sqrt(options.layer_size(layers(j)))*(0.5-rand());
            end
        end
    end
else    
    allowed = zeros(1,options.net_size,options.net_size);
    for i = 1:options.surface_blocks
        for j = (options.surface_blocks+1):options.net_size
            allowed(1,i,j) = 1;
        end
    end
    for i = (options.surface_blocks+1):options.net_size-3
        for j = (i+1):options.net_size
            allowed(1,i,j) = 1;
        end
    end
    
    
    weights = zeros(options.n_pop,options.net_size,options.net_size);
    k = 0;
    while (k < options.n_pop)
        k = k + 1;
        if options.generate_new_nets
            connected = zeros(1,options.net_size-3);
            while(any(~connected))
                connections = zeros(1,options.net_size,options.net_size);
                if options.net_strat == 1
                    for i = 1:options.surface_blocks
                        for j = (options.surface_blocks+1):options.net_size
                            connections(1,i,j) = (rand() < min(2*options.synapse_density,abs(1/(2*(j-i-options.surface_blocks)))));
                        end
                    end
                    
                    for i = (options.surface_blocks+1):options.net_size-3
                        for j = (i+1):options.net_size
                            connections(1,i,j) = (rand() < options.synapse_density) ; %max(synapse_density,(j-i)/(net_size-i)));
                        end
                    end
                    
                elseif options.net_strat == 2
                    for i = 1:options.surface_blocks
                        for j = (options.surface_blocks+1):options.net_size
                            connections(1,i,j) = (rand() < options.synapse_density);
                        end
                    end
                    
                    for i = (options.surface_blocks+1):options.net_size-3
                        for j = (i+1):options.net_size
                            connections(1,i,j) = (rand() < options.synapse_density) ; %max(synapse_density,(j-i)/(net_size-i)));
                        end
                    end
                end
                
                for i = 1:options.net_size-3
                    connected(i) = 0;
                    for j = (i+1):options.net_size
                        connected = connected + connections(1,i,j);
                    end
                end
                %plot(connected)
            end
            
            weights_last = (2*(rand(1,options.net_size,options.net_size) > 0.2)-ones(1,options.net_size,options.net_size)).*rand(1,options.net_size,options.net_size).*connections;
            %weights(k,:,:) = (0.05*ones(1,net_size,net_size)+0.95*(rand(1,net_size,net_size))).*connections;
        else
            %breed = rand(1,options.net_size,options.net_size);
            %weights_last = (breed < 1/3).*w1(1,:,:) + ((1/3 < breed) & (breed < 2/3)).*w1(1,:,:) + (breed > 2/3).*w1(1,:,:) + options.mutation_size*(rand(1,options.net_size,options.net_size) < options.mutation_prob).*(0.5-rand(1,options.net_size,options.net_size)).*allowed;
            connections = w1./abs(w1);
            connections(isnan(connections)) = 0;
            weights_last = w1(1,:,:) + options.mutation_size.*(rand(1,options.net_size,options.net_size) < options.mutation_prob).*(0.5-rand(1,options.net_size,options.net_size)).*connections;
            
        end
        for i = 1:options.net_size
            weights(k,:,i) = weights_last(1,:,i)/(sum((weights_last(1,:,i).*(weights_last(1,:,i)>0)),2)+ ~any((weights_last(1,:,i) > 0)));
        end
        if min(min(weights(k,:,:))) < options.max_inhibition
            k = k - 1;
        end
    end
end
end


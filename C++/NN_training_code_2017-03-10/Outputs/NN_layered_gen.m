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

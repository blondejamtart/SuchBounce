options.generate_new_nets = 0;
options.net_size = 64;
options.net_strat = 2;
options.surface_blocks = 32;
options.outputs = 3;
options.synapse_density = 0.2;
options.mutation_prob = 0.15;
options.n_pop = 75;
options.n = 512;
options.max_inhibition = -3;
options.mutation_size = 1e-1;

weight_mem = zeros(options.n_pop,options.net_size,options.net_size,n_generations);
S_mem = zeros(options.n_pop,n_generations);
NN_topology_seed
a = sum(S,1);
[~,b] = sort(a);
S_max = a(b(options.n_pop));
for generation = 1:n_generations
    weight_mem(:,:,:,generation) = weights;
    S_mem(:,generation) = sum(S,1);
    a = sum(S,1);
    [~,b] = sort(a);
    if a(b(options.n_pop)) > S_max
        S_max = a(b(options.n_pop));
        w1 = weights(b(options.n_pop),:,:);
    end
end

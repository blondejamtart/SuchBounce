options.generate_new_nets = 1;
options.net_size = 64;
options.net_strat = 2;
options.surface_blocks = 32;
options.outputs = 3;
options.synapse_density = 0.2;
options.mutation_prob = 0.025;
options.n_pop = 1;
options.n = 384;
options.max_inhibition = -3;
options.mutation_size = 1e-2;
options.is_layered = 1;
options.n_layers = 5;
options.layer_size = [ 32    16     8     5     3];


rcont = cell(1,8);
d = cell(1,8);
wset = cell(1,8);

weights_0 = NN_net_gen(options);
weights = repmat(weights_0,[2*size(nonzeros(weights_0),1),1,1]);
[x_ind,y_ind] = find(permute(weights_0,[2 3 1]));
for i = 1:size(nonzeros(weights_0),1)
    weights(2*i-1,x_ind(i),y_ind(i)) = weights(2*i-1,x_ind(i),y_ind(i)) - 0.001;
    weights(2*i,x_ind(i),y_ind(i)) = weights(2*i,x_ind(i),y_ind(i)) + 0.001;
end

n_batches = floor(size(weights,1)/192)+(size(weights,1) ~= 192*floor(size(weights,1)/192));
w0 = zeros(n_batches,192*options.net_size,options.net_size);
for j = 1:n_batches
    batch = j;
    for i = 1:192       
        if (i+batch*192 > size(weights,1)) || batch == -1
            batch = -1;
            w0(j,1+(i-1)*64:64*i,:) = weights_0(1,:,:);
        else
            w0(j,1+(i-1)*64:64*i,:) = weights(i+batch*192,:,:);
        end
    end
end

for batch = 1:n_batches
    filewrite('../Setup/weights.vec',w0(batch,:,:),'init')
    cd('../src_mag')
    !./a.out
    cd('../Outputs')
    rcont{batch} = fileread('Particle_tracks.dat');
    for j = 1:192
        d{batch}(j) = norm(reshape(rcont{batch}(size(rcont{batch},1),j,:),1,3));
    end
    [~,best] = min(d{batch});    
end

save('NN_training_dump.dat')
clear all
cd('~/PhD-Matlab/C++/Matlab_script/Outputs')
binary_encounter_range

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

r_target = reshape([0 0.075 0.005],1,1,3);
dist_norm = 0.2;
n = options.n;

r = reshape(fileread('../Setup/r.vec',384,0,3),1,384,3);

rcont = cell(1,8);
Tvcont = cell(1,8);
E = cell(1,8);
d = cell(1,8);
wset = cell(1,8);
error = cell(1,8);


weights_0 = NN_net_gen(options);
weights_original = weights_0;
[x_ind,y_ind] = find(permute(weights_0,[2 3 1]));

spacing = -0.25:0.0026:0.25;
spacing(193) = [];

while 1 < 2
    weights = repmat(weights_0,[192,1,1]);
    for i = 1:size(nonzeros(weights_0),1)
        for j = 1:192
            weights(j,x_ind(i),y_ind(i)) = weights_0(1,x_ind(i),y_ind(i)) + spacing(j);
            w0(1,1+(i-1)*64:64*i,:) = weights(i,:,:);
        end
        
        filewrite('../Setup/weights.vec',w0(1,:,:),'init')
        cd('../src_mag')
        !./a.out
        cd('../Outputs')
        rcont{batch} = fileread('Particle_tracks.dat');
        Tvcont{batch} = fileread('T_v_tracks.dat');
        E{batch} = fileread('E_int_tracks.dat');
        a = fileread('v_tracks.dat');
        b = zeros(size(a));
        ind = 2:32:size(rcont{batch},1);
        error{batch} = zeros(size(ind,2),n/2);
        for k = 1:size(ind,2)
            for j = 1:(n/2)
                normtemp = norm(reshape(a(ind(k),j,:),1,3));
                a(ind(k),j,:) = a(ind(k),j,:)/(normtemp);
                b(ind(k),j,:) = NN_train_traj(rcont{batch}(ind(i),j,:),r,r_target);
                error{batch}(i,j) = acos(dot(a(ind(i),j,:),b(ind(i),j,:)));
                if isnan(error{batch}(i,j))
                    error{batch}(i,j) = rand()*1e4;
                    'I R Stupeed'
                end
                
            end
        end
    end
end
if exist('dist')==1
    dist_last = dist;
end

for i = 1:192
    
    try
        init(i,1) = Tvcont{batch}(find(E{batch}(:,i),1)-1,i);
        last(i,1) = Tvcont{batch}(find(E{batch}(:,i),1,'last')+1,i);
    catch
        init(i,1) = 0;
        last(i,1) = 0;
    end
    
    maxT(i,1) = max(Tvcont{batch}(:,i));
    endT(i,1) = Tvcont{batch}(size(Tvcont{batch},1),i);
    dist(i,1) = norm(reshape(rcont{batch}(size(rcont{batch},1),i,:)-r_target,1,3));
    
    %therm = 0.01;
    
    Cost1(i,1) = sum(abs(error{batch}(:,2*j-1)),1);
    Cost1(i,2) = sum(abs(error{batch}(:,2*j)),1);
    
end
[~,min_ind] = min(Cost1);

if ~exist('Tvfirst')
    Tvfirst = Tvcont;
end
if ~exist('errorhist')
    errorhist = sum(abs(error{1}),1);
else
    errorhist = [errorhist; sum(abs(error{1}),1)];
end

Tvlast = Tvcont;

end


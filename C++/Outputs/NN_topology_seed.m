if ~exist('options','var')
    options.generate_new_nets = 0;
    options.net_size = 64;
    options.net_strat = 2;
    options.surface_blocks = 32;
    options.outputs = 3;
    options.synapse_density = 0.2;
    options.mutation_prob = 0.025;
    options.n_pop = 50;
    options.n = 512;
    options.max_inhibition = -3;
    options.mutation_size = 1e-2;
end

l = 0;
rad = 1e-2*ones(1024,1);

addpath('~/PhD-Matlab/C++/Outputs');

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


r_set = zeros(options.n_pop,options.n,3);
S = zeros(options.n,options.n_pop);
if options.generate_new_nets
    weights = NN_net_gen(options);
else
    weights = NN_net_gen(options,w1);
end

multiWaitbar('Simulating Nets...',0);
for k = 1:options.n_pop
    cd('../Setup')
    filewrite('weights.vec',weights(k,:,:),'init')
    cd('../src_mag')
    multiWaitbar('Simulating Nets...',k/options.n_pop);
    %     sim_prog = 0;
    %     multiWaitbar('Current Simulation:',sim_prog);
    %     last_line = '';
    % std_cout = evalc('!./a.out');
    !./a.out
    %     while ~strcmp(last_line,'Simulation complete!')
    %         tempstr = strsplit(std_cout,'\n');
    %         last_line = tempstr{size(tempstr,2)};
    %         try
    %             sim_prog = eval(last_line)/100;
    %         end
    %         pause(0.25)
    %         multiWaitbar('Current Simulation:',sim_prog);
    %     end
    %     multiWaitbar('Current Simulation:','close')
    cd('../Outputs')
    if l == 0
        [Tv_temp,l] = fileread('T_v_tracks.dat');
        Tv_set = zeros(l/16,options.n_pop);
        V_set = zeros(l/16,options.n_pop);
    else
        Tv_temp=fileread('T_v_tracks.dat',l,0,options.n);
    end
    temp_r = fileread('r_final.dat',1,1,options.n);
    Tw_temp=fileread('T_w_tracks.dat',l,0,options.n);
    V_temp = fileread('V_tracks.dat',l,0,options.n);
    
    Tv_set(:,k) = sum(Tv_temp(1:16:l,:),2)+sum(Tw_temp(1:16:l,:),2);
    V_set(:,k) = sum(V_temp(1:16:l,:),2);
    r_set(k,:,:) = temp_r(1,:,:);
    for i = 1:options.n
        for j = 1:options.n
            if norm(reshape(r_set(k,i,:)-r_set(k,j,:),1,3)) < 1.01*(rad(i)+rad(j))
                S(i,k) = S(i,k) + 1;
            end
        end
    end
end

cd('../Setup')
if options.generate_new_nets
    filewrite('weights.vec',zeros(1,options.net_size,options.net_size),'init')
else
    filewrite('weights.vec',w1,'init')
end
cd('../src_mag')
% sim_prog = 0;
% multiWaitbar('Current Simulation:',sim_prog);
% last_line = '';
% std_cout = evalc('!./a.out')
% while ~strcmp(last_line,'Simulation complete!')
%     tempstr = strsplit(std_cout,'\n');
%     last_line = tempstr{size(tempstr,2)};
%     try
%         sim_prog = eval(last_line)/100;
%     end
%     pause(0.25)
%     multiWaitbar('Current Simulation:',sim_prog);
% end
% multiWaitbar('Current Simulation:','close')
!./a.out
cd('../Outputs')
temp_r = fileread('Particle_tracks.dat',l,1,options.n);
Tv_temp=fileread('T_v_tracks.dat',l,0,options.n);
Tw_temp=fileread('T_w_tracks.dat',l,0,options.n);
V_temp = fileread('V_tracks.dat',l,0,options.n);

Tv_nat = sum(Tv_temp(1:16:l,:),2)+sum(Tw_temp(1:16:l,:),2);
V_nat = sum(V_temp(1:16:l,:),2);
r_nat = temp_r(l,:,:);
S_nat = zeros(1,options.n);
for i = 1:options.n
    for j = 1:options.n
        if norm(reshape(r_nat(1,i,:)-r_nat(1,j,:),1,3)) < 1.01*(rad(i)+rad(j))
            S_nat(i) = S_nat(i) + 1;
        end
    end
end
multiWaitbar('Simulating Nets...','close');
save(['NN_evo_' datestr(date,29) '.mat'])

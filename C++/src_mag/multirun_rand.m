n_samples = 20;

r_init = zeros(n_samples,512,3);
r_final = zeros(n_samples,512,3);
first = 1;

for i = 1:n_samples
    r_init(i,:,:) = random_seed_sphere(512,1e-2*ones(1,512),0.15+0.05*(0.5-rand()));
    filewrite('../Setup/r.vec',r_init(i,:,:),'init')
    !./a.out
    r_final(i,:,:) =  fileread('../Outputs/r_final.dat',1,1,512);
    if first
        [Tvtmp,l] = fileread('../Outputs/T_v_tracks.dat');
        Tv_set = zeros(n_samples,l);
        Tv_set(1,:) = sum(Tvtmp,2);
        first = 0;
    else
        [Tvtmp,~] = fileread('../Outputs/T_v_tracks.dat',l,0,512);
        Tv_set(i,:) = sum(Tvtmp,2);
    end
end

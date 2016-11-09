%r = fileread('Particle_tracks.dat',l,1,n);
mu = fileread('mu_tracks.dat',l,1,n);

render_warp = 32;
count = 0;
for i = 1:l
    if i/render_warp == floor(i/render_warp)
        count = count + 1;
        r_w(count,:,:) = r(i,:,:);
        mu_w(count,:,:) = mu(i,:,:);
    end
end

    

vname_xy = ['render_mu_',num2str(length(dir('render_mu_*.avi'))+1),'_xy.avi'];

vid_xy = VideoWriter(vname_xy);
open(vid_xy);
field = figure;
set(gcf, 'Position', get(0,'Screensize'));
for i = 1:(l/render_warp)
    quiver(r_w(i,:,2),r_w(i,:,3),mu_w(i,:,2),mu_w(i,:,3))
    frame = getframe;
    writeVideo(vid_xy,frame);    
end

close(vid_xy);
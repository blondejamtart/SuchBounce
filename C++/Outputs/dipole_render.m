r = fileread('Particle_tracks.dat',l,1,n);
mu = fileread('mu_tracks.dat',l,1,n);

vname_xy = ['render_mu_',num2str(length(dir('render_mu_*.avi'))+1),'_xy.avi'];

vid_xy = VideoWriter(vname_xy);
open(vid_xy);
field = figure;
set(gcf, 'Position', get(0,'Screensize'));
for i = 1:l
    quiver(r(i,:,1),r(i,:,2),mu(i,:,1),mu(i,:,2))
    frame = getframe;
    writeVideo(vid_xy,frame);
    
end

close(vid_xy);
% offset = mean(tempset,2);
% for j = 1:512
%     rset(:,j,:) = tempset(:,j,:) - offset;
% end
start = 31008;
stop = l; %size(tempset,1);
warp = 4;


vname_xy = ['render_3D_',num2str(length(dir('render_3D_*.avi'))+1),'_xy.avi'];

vid_xy = VideoWriter(vname_xy);
vid_xy.FrameRate = 8;
open(vid_xy);
field = figure;
set(gcf, 'Position', get(0,'Screensize'));
%offset = mean(tempset(:,254:255,:),2);
for t_ind = start:warp:stop
    r = tempset(t_ind,:,:);
    sphere_plot
    frame = getframe;
    writeVideo(vid_xy,frame); 
    multiWaitbar('Render progress:',t_ind/(stop-start));
end
close(vid_xy);
close(field);
multiWaitbar('Render progress:','close')
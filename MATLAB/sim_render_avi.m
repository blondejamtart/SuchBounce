
clearvars -except q rad scale_xy scale_xz offset xmax xmin ymax ymin zmax zmin
recalc = 1;
tempset = fileread('Particle_tracks.dat');

ig = 32;
render_warp = 16;
start = 1; %0.375*size(tempset,1);
stop = size(tempset,1);

n = size(tempset,2);
frameset = zeros(floor((stop-start)/render_warp),n,3);
x = 0;
for i = start:stop
    if (i-1)/render_warp == floor((i-1)/render_warp);
        x = x + 1;
        frameset(x,:,:) = tempset(i,:,:);
    end
end
unshifted = frameset;
if recalc
    offset = mean(frameset(:,1:ig,:),2);
end
% offset = framest(:,1,:);
for i = 1:size(frameset,2)
    frameset(:,i,:) = frameset(:,i,:) - offset;
end
%frameset = unshifted;
s = x;

if recalc
    r_scaled_xy = zeros(size(frameset,1),size(frameset,2),2);
    r_scaled_xz = zeros(size(frameset,1),size(frameset,2),2);
    
    xmin = min(min(frameset(1:s,1:ig,1))) - 2*max(rad(1:ig));
    ymin = min(min(frameset(1:s,1:ig,2))) - 2*max(rad(1:ig));
    xmax = max(max(frameset(1:s,1:ig,1))) + 2*max(rad(1:ig));
    ymax = max(max(frameset(1:s,1:ig,2))) + 2*max(rad(1:ig));
    zmin = min(min(frameset(1:s,1:ig,3))) - 2*max(rad(1:ig));
    zmax = max(max(frameset(1:s,1:ig,3))) + 2*max(rad(1:ig));
    
    scale_xy = min(1920/(xmax-xmin),1080/(ymax-ymin));
    scale_xz = min(1920/(xmax-xmin),1080/(zmax-zmin));
end

r_scaled_xy(:,:,2) = int16((frameset(:,:,1) - xmin)*scale_xy);
r_scaled_xy(:,:,1) = int16((frameset(:,:,2) - ymin)*scale_xy);


r_scaled_xz(:,:,1) = int16((frameset(:,:,1) - xmin)*scale_xz);
r_scaled_xz(:,:,2) = int16((frameset(:,:,3) - zmin)*scale_xz);

circ = vision.ShapeInserter;
circ.Fill = true;
circ.Shape = 'Circles';
circ.Antialiasing = true;

vname_xy = ['render_',num2str(0.5*length(dir('render*.avi'))+1),'_xy.avi'];
vname_yz = ['render_',num2str(0.5*length(dir('render*.avi'))+1),'_yz.avi'];
vid_xy = avifile(vname_xy);
vid_yz = avifile(vname_yz);
vid_xy.fps = 64;
vid_yz.fps = 64;
%open(vid_xy);
%open(vid_yz);
h = waitbar(0,'Rendering...');
for t = 1:size(r_scaled_xy,1)
    
    waitbar(t/size(r_scaled_xy,1));
    
    temp_frame_xy = ones(1080,1920,1);
    temp_frame_xz = ones(1080,1920,1);
    
    balls_xy = zeros(size(frameset,2),3,3);
    balls_xz = zeros(size(frameset,2),3,3);
    
    for i = 1:ig
        balls_xy(i,:,q(i)+2) = [r_scaled_xy(t,i,2),r_scaled_xy(t,i,1),ceil(rad(i)*scale_xy)];
        balls_xz(i,:,q(i)+2) = [r_scaled_xz(t,i,1),r_scaled_xz(t,i,2),ceil(rad(i)*scale_xz)];
    end
    
    
    temp_frame_xy(:,:,1) = 0.5*(step(circ,temp_frame_xy(:,:,1),balls_xy(:,:,2)) + step(circ,temp_frame_xy(:,:,1),balls_xy(:,:,3)));
    temp_frame_xz(:,:,1) = 0.5*(step(circ,temp_frame_xz(:,:,1),balls_xz(:,:,2)) + step(circ,temp_frame_xz(:,:,1),balls_xz(:,:,3)));
    
    temp_frame_xy(:,:,2) = 0.5*(step(circ,temp_frame_xy(:,:,1),balls_xy(:,:,1)) + step(circ,temp_frame_xy(:,:,1),balls_xy(:,:,3)));
    temp_frame_xz(:,:,2) = 0.5*(step(circ,temp_frame_xz(:,:,1),balls_xz(:,:,1)) + step(circ,temp_frame_xz(:,:,1),balls_xz(:,:,3)));
    
    temp_frame_xy(:,:,3) = 0.5*(step(circ,temp_frame_xy(:,:,1),balls_xy(:,:,2)) + step(circ,temp_frame_xy(:,:,1),balls_xy(:,:,1)));
    temp_frame_xz(:,:,3) = 0.5*(step(circ,temp_frame_xz(:,:,1),balls_xz(:,:,2)) + step(circ,temp_frame_xz(:,:,1),balls_xz(:,:,1)));
    
    
    vid_xy =  addframe(vid_xy,temp_frame_xy);
    vid_yz =  addframe(vid_yz,temp_frame_xz);
    
end


close(vid_xy);
close(vid_yz);
fclose('all');
close(h)





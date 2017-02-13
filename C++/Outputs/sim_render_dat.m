clear  tempset
clear frameset ignore dist dist_trim;
recalc = 1;
trim_outliers = 0;
l = ii;
[tempset,~] = fileread('Particle_tracks.dat',l,1,n);


render_warp =  4;
start = 1; %size(tempset,1);
stop = size(tempset,1);

n = size(tempset,2);
ig = n-1;
frameset = zeros(floor((stop-start)/render_warp),n,3);
x = 0;
for i = start:stop
    if (i-1)/render_warp == floor((i-1)/render_warp);
        x = x + 1;
        frameset(x,:,:) = tempset(i,:,:);
    end
end
unshifted = frameset;

%offset = zeros(size(frameset,1),1,3);

offset = mean(frameset(:,gp_a{1},:),2);
for i = 1:size(frameset,2)
    frameset(:,i,:) = frameset(:,i,:) - offset;
end

% for i=1:size(frameset,1)
%     for j = 1:ig
%         if frameset(i,j,2) > 100
%             frameset(i,j,:) = [nan, ;
%         end
%     end
% end

if trim_outliers
    [dist_trim_0,trimset_0,offset_0,ignore_0] = trim(frameset,3,n,floor(stop/render_warp));
    [dist_trim,trimset,offset,ignore] = trim(trimset_0,0.3,size(trimset_0,2),floor(stop/render_warp));
    for i = 1:size(frameset,2)
        frameset(:,i,:) = frameset(:,i,:) - offset_0 - offset;
    end
    
    
else
    trimset = frameset(:,gp_a{1},:);
end



s = size(frameset,1);

if recalc
    r_scaled_xy = zeros(size(frameset,1),size(frameset,2),2);
    r_scaled_xz = zeros(size(frameset,1),size(frameset,2),2);
    
    xmin = min(min(trimset(1:s,:,1))) - 2*max(rad(1:ig));
    ymin = min(min(trimset(1:s,:,2))) - 2*max(rad(1:ig));
    xmax = max(max(trimset(1:s,:,1))) + 2*max(rad(1:ig));
    ymax = max(max(trimset(1:s,:,2))) + 2*max(rad(1:ig));
    zmin = min(min(trimset(1:s,:,3))) - 2*max(rad(1:ig));
    zmax = max(max(trimset(1:s,:,3))) + 2*max(rad(1:ig));
    
    scale_xy = min(1080/(xmax-xmin),1920/(ymax-ymin));
    scale_xz = min(1920/(zmax-zmin),1080/(xmax-xmin));
end

r_scaled_xy(:,:,1) = int16((frameset(:,:,1) - xmin)*scale_xy);
r_scaled_xy(:,:,2) = int16((frameset(:,:,2) - ymin)*scale_xy);


r_scaled_xz(:,:,2) = int16((frameset(:,:,1)-zmin)*scale_xz);
r_scaled_xz(:,:,1) = int16((frameset(:,:,3)-zmin)*scale_xz);

circ = vision.ShapeInserter;
circ.Fill = true;
circ.Shape = 'Circles';
circ.Antialiasing = true;

vname_xy = ['render_',num2str(0.5*length(dir('render*.avi'))+1),'_xy.avi'];
vname_yz = ['render_',num2str(0.5*length(dir('render*.avi'))+1),'_yz.avi'];
vid_xy = VideoWriter(vname_xy);
vid_yz = VideoWriter(vname_yz);
vid_xy.FrameRate = 64;
vid_yz.FrameRate = 64;
open(vid_xy);
open(vid_yz);
h = waitbar(0,'Rendering...');
charged = logical(sum((q ~= 0),2));

for t = 1:size(r_scaled_xy,1)
    
    waitbar(t/size(r_scaled_xy,1));
    if charged
        temp_frame_xy = ones(1080,1920,1);
        temp_frame_xz = ones(1080,1920,1);
        Framesplit_1 = zeros(1080,1920,3);
        Framesplit_2 = zeros(1080,1920,3);
        
        balls_xy = zeros(size(frameset,2),3,3);
        balls_xz = zeros(size(frameset,2),3,3);
        
        for i = 1:ig
            balls_xy(i,:,q(i)+2) = [r_scaled_xy(t,i,2),r_scaled_xy(t,i,1),ceil(rad(i)*scale_xy)];
            balls_xz(i,:,q(i)+2) = [r_scaled_xz(t,i,1),r_scaled_xz(t,i,2),ceil(rad(i)*scale_xz)];
        end
        
        for i = 1:3
            Framesplit_1(:,:,i) = step(circ,temp_frame_xy(:,:,1),balls_xy(:,:,i));
            Framesplit_2(:,:,i) = step(circ,temp_frame_xz(:,:,1),balls_xz(:,:,i));
        end
        
        temp_frame_xy(:,:,1) = 0.5*( Framesplit_1(:,:,2) + Framesplit_1(:,:,3) );
        temp_frame_xz(:,:,1) = 0.5*( Framesplit_2(:,:,2) + Framesplit_2(:,:,3) );
        
        temp_frame_xy(:,:,2) = 0.5*( Framesplit_1(:,:,1) + Framesplit_1(:,:,3) );
        temp_frame_xz(:,:,2) = 0.5*( Framesplit_2(:,:,1) + Framesplit_2(:,:,3) );
        
        temp_frame_xy(:,:,3) = 0.5*( Framesplit_1(:,:,2) + Framesplit_1(:,:,1) );
        temp_frame_xz(:,:,3) = 0.5*( Framesplit_2(:,:,2) + Framesplit_2(:,:,1) );
        
        writeVideo(vid_xy,temp_frame_xy);
        writeVideo(vid_yz,temp_frame_xz);
    else
        temp_frame_xy = ones(1080,1920,1);
        temp_frame_xz = ones(1080,1920,1);
        Framesplit_1 = zeros(1080,1920,1);
        Framesplit_2 = zeros(1080,1920,1);
        
        balls_xy = zeros(size(frameset,2),3);
        balls_xz = zeros(size(frameset,2),3);
        
        for i = 1:ig
            balls_xy(i,:) = [r_scaled_xy(t,i,2),r_scaled_xy(t,i,1),ceil(rad(i)*scale_xy)];
            balls_xz(i,:) = [r_scaled_xz(t,i,1),r_scaled_xz(t,i,2),ceil(rad(i)*scale_xz)];
        end
        
        
        Framesplit_1(:,:,1) = step(circ,temp_frame_xy(:,:,1),balls_xy(:,:));
        Framesplit_2(:,:,1) = step(circ,temp_frame_xz(:,:,1),balls_xz(:,:));
        
        
        temp_frame_xy(:,:,1) = ones(1080,1920,1) - Framesplit_1(:,:,1);
        temp_frame_xz(:,:,1) = ones(1080,1920,1) - Framesplit_2(:,:,1);
    end
    
    writeVideo(vid_xy,temp_frame_xy);
    writeVideo(vid_yz,temp_frame_xz);
end






close(vid_xy);
close(vid_yz);
fclose('all');
close(h)





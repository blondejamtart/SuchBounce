file = fopen('Particle_tracks.dat');
tempstr = 'a';
i = 0;

while tempstr ~= -1
    i = i + 1;
    tempstr = fgetl(file);
    try
        frameset(:,:,i) = double(eval(tempstr));
    end
end

r_scaled = zeros(size(frameset,1),size(frameset,2),2);

xmin = min(min(frameset(:,:,1))) - 2*max(rad);
ymin = min(min(frameset(:,:,2))) - 2*max(rad);
xmax = max(max(frameset(:,:,1))) + 2*max(rad);
ymax = max(max(frameset(:,:,2))) + 2*max(rad);

scale = min(1920/(xmax-xmin),1080/(ymax-ymin));
r_scaled(:,:,2) = int16((frameset(:,:,1) - xmin)*scale);
r_scaled(:,:,1) = int16((frameset(:,:,2) - ymin)*scale);
%
% if (1920/(xmax-xmin) < 1080/(ymax-ymin))
%     scale = 1920/(xmax-xmin);
%     r_scaled(:,:,2) = int16((frameset(:,:,1) - xmin)*scale);
%     r_scaled(:,:,1) = int16((frameset(:,:,2) - ymin)*scale);
%     r_scaled(:,:,1) = r_scaled(:,:,1) + 540 - 0.5*(max(max(r_scaled(:,:,1))-min(min(r_scaled(:,:,1)))));
% else
%     scale = 1080/(ymax-ymin);
%     r_scaled(:,:,2) = int16((frameset(:,:,1) - xmin)*scale);
%     r_scaled(:,:,1) = int16((frameset(:,:,2) - ymin)*scale);
%     r_scaled(:,:,2) = r_scaled(:,:,2) + 960 - 0.5*(max(max(r_scaled(:,:,2))-min(min(r_scaled(:,:,2)))));
% end

circ = vision.ShapeInserter;
circ.Fill = true;
circ.Shape = 'Circles';
circ.Antialiasing = true;

h = waitbar(0,'Rendering...');

vname = ['render_',num2str(length(dir('render*.avi'))+1),'.avi'];
vid = VideoWriter(vname);
open(vid);

for t = 1:size(frameset,1)
    
    waitbar(t/size(frameset,1));
    
    temp_frame = ones(1080,1920,1);
    
    balls = zeros(size(r,1),3);
    
    for i = 1:size(r,1)
        balls(i,:) = [r_scaled(t,i,2),r_scaled(t,i,1),ceil(rad(i)*scale)];
    end
    
    temp_frame = step(circ,temp_frame(:,:,1),balls);
    writeVideo(vid,temp_frame);
    
end

close(h)
close(vid);





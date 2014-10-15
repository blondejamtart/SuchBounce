
frameset = ones(1080,1920,1,ceil(max_step*delta_t*30/warp));
r_scaled = zeros(size(r_tracker,1),size(r_tracker,2),2);


xmin = min(min(r_tracker(:,:,1))) - 2*max(rad);
ymin = min(min(r_tracker(:,:,2))) - 2*max(rad);
xmax = max(max(r_tracker(:,:,1))) + 2*max(rad);
ymax = max(max(r_tracker(:,:,2))) + 2*max(rad);

if (1920/(xmax-xmin) < 1080/(ymax-ymin))
    scale = 1920/(xmax-xmin);
    r_scaled(:,:,2) = int16((r_tracker(:,:,1) - xmin)*scale);
    r_scaled(:,:,1) = int16((r_tracker(:,:,2) - ymin)*scale);
    r_scaled(:,:,1) = r_scaled(:,:,1) + 540 - 0.5*(max(max(r_scaled(:,:,1))-min(min(r_scaled(:,:,1)))));
else
    scale = 1080/(ymax-ymin);
    r_scaled(:,:,2) = int16((r_tracker(:,:,1) - xmin)*scale);
    r_scaled(:,:,1) = int16((r_tracker(:,:,2) - ymin)*scale);
    r_scaled(:,:,2) = r_scaled(:,:,2) + 960 - 0.5*(max(max(r_scaled(:,:,2))-min(min(r_scaled(:,:,2)))));
end

circ = vision.ShapeInserter;
circ.Fill = true;
circ.Shape = 'Circles';
circ.Antialiasing = true;

for t = 1:size(frameset,4)
    
    t_ind = min(ceil(max_step/size(frameset,4)*t),size(r_tracker,1));
    
    balls = zeros(size(r,1),3);
    
    for i = 1:size(r,1)
        balls(i,:) = [r_scaled(t_ind,i,2),r_scaled(t_ind,i,1),rad(i)*scale];
    end
    
    frameset(:,:,1,t) = step(circ,frameset(:,:,1,t),balls);
    
end

vid = VideoWriter('render.avi');
open(vid);
writeVideo(vid,frameset);
close(vid);
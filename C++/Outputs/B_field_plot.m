[x,y] = meshgrid(-2:0.05:2,-2:0.05:2);
gridsize = 81;

B = zeros(gridsize,gridsize,3);
for i = 1:gridsize
    for j = 1:gridsize
        if (x(i,j)^2 + y(i,j)^2) > 0.16
            for k = 1:240
            B(i,j,:) = B(i,j,:) + reshape(B_field(mu(k,:),[x(i,j),y(i,j),0]),1,1,3);
            end
        end
        
    end
end
for i = 1:gridsize
    Bl((i-1)*gridsize+1:i*gridsize,:)= B(:,i,:);
    xl((i-1)*gridsize+1:i*gridsize,:)=[x(:,i),y(:,i),zeros(gridsize,1)];
end

for i = 1:(gridsize^2)
    Bn(i,:) = Bl(i,:)/norm(Bl(i,:));
    dist(i) = norm(xl(i,:));
    normB(i) = norm(Bl(i,:));
end

quiver(xl(:,1),xl(:,2),Bl(:,1),Bl(:,2))

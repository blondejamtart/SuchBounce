[x,y] = meshgrid(-2:0.05:2,-2:0.05:2);
Bcount = zeros(81,81);
for i = 1:81
    for j = 1:81
        Btmp = [0 0 0];
        for k = -0.6:0.05:0.6
            for l = -0.2:0.05:0.2
                if k ~= 0.6 || l ~= 0.2
                Btmp = Btmp + B_field(mu,[x(i,j)+k,y(i,j)+l,0]);
                Bcount(i,j) = Bcount(i,j) + 1;
                end
            end
        end
        B(i,j,:) = Btmp/norm(Btmp);
    end
end
for i = 1:81
    Bl((i-1)*81+1:i*81,:)=B(:,i,:);
    xl((i-1)*81+1:i*81,:)=[x(:,i),y(:,i),zeros(81,1)];
end
quiver(xl(:,1),xl(:,2),Bl(:,1),Bl(:,2))
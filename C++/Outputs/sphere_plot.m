%r = r_set(choice,:,:);
r_backup = r;
S_r = zeros(1,n);
do_trim = 0;
threshold_bond_count = 2;
ignore = zeros(1,n);
if ~exist('genes')
    genes = zeros(1,n);
end
[x y z] = sphere;
if do_trim
    for i = 1:n
        for j = 1:n
            if norm(reshape(r(1,i,:)-r(1,j,:),1,3)) < 1.5*(rad(i)+rad(j))
                S_r(i) = S_r(i) + 1;
            end
        end
    end
    
    for i = 1:n
        if S_r(i) < threshold_bond_count
            ignore(i) = 1;
            r(1,i,:) = NaN;
        end
    end
end


%figure 
%surf(rad(1)*x-r(1,1,1),rad(1)*z-genes(1),rad(1)*y-r(1,1,2),'EdgeColor','none')
clf

surf(rad(1)*x+r(1,1,1),rad(1)*y+r(1,1,2),rad(1)*z+r(1,1,3)-genes(1),1.1*ones(21),'EdgeColor','none')

hold on


for i = 2:n-2    
    surf(rad(i)*x+r(1,i,1),rad(i)*y+r(1,i,2),rad(i)*z+r(1,i,3)-genes(i),1.1*ones(21),'EdgeColor','none')    
end
for i = n-1:n
    
    surf(rad(i)*x-r(1,i,1),rad(i)*y-r(1,i,2)-genes(i),rad(i)*z-r(1,i,3),1.0*ones(21),'EdgeColor','none')
    
end

surf(0.01*rad(i)*x-r(1,i,1),0.01*rad(i)*y-r(1,i,2)-genes(i),0.01*rad(i)*z-r(1,i,3),1.11*ones(21),'EdgeColor','none')
r = r_backup;
clear r_backup
axis equal
xlim([-2 2])
ylim([-2 2])
zlim([-2 2])

material dull
light('Position',[0 0 5],'Style','local')
light('Position',[0 0 -5],'Style','local')
view([0.1 0.1 1])
hold off
pause(0.05)


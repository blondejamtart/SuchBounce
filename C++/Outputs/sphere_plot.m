%r = r_set(choice,:,:);
r_backup = r;
S_r = zeros(1,n);
do_trim = 1;
threshold_bond_count = 2;
ignore = zeros(1,n);
if ~exist('genes')
    genes = zeros(1,n);
end
[x y z] = sphere;
if do_trim
    for i = 1:n
        for j = 1:n
            if norm(reshape(r(1,i,:)-r(1,j,:),1,3)) < 1.01*(rad(i)+rad(j))
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


figure
%surf(rad(1)*x-r(1,1,1),rad(1)*z-genes(1),rad(1)*y-r(1,1,2),'EdgeColor','none')

surf(rad(1)*x-r(1,1,1),rad(1)*z-r(1,1,3)-genes(1),rad(1)*y-r(1,1,2),'EdgeColor','none')

hold on


for i = 2:n
    
    surf(rad(i)*x-r(1,i,1),rad(i)*z-r(1,i,3)-genes(i),rad(i)*y-r(1,i,2),'EdgeColor','none')
    
end
r = r_backup;
clear r_backup
axis equal
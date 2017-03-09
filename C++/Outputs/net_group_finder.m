dist = zeros(n);
rad_mat = zeros(n);
for i = 1:n
    for j = 1:i-1
        dist(i,j) = norm(reshape(r(1,i,:)-r(1,j,:),1,3));
        dist(j,i) = dist(i,j);
        rad_mat(i,j) = 6e-2+(rad(i)+rad(j));
        rad_mat(j,i) = 6e-2+(rad(i)+rad(j));
    end
end
joined = dist < rad_mat;

grouped = zeros(1,n);
groups = [];
temp_group = [];
counted = 0;

%multiWaitbar('Grouping...',counted/n);
block = 1;
while counted < n
    
    ungrouped = find(~grouped);
    to_do = ungrouped(1);
    temp_group = to_do;
    grouped(to_do(1)) = 1;
    while size(to_do) > 0
        
        j = to_do(1);
        %grouped(j) = 1;
        counted = counted + 1;
 %       multiWaitbar('Grouping...',counted/n);       
        
        to_do(1) = [];
        
        to_do = [to_do find(joined(j,:))];
        deletion = zeros(1,size(to_do,2));
        for k = (1+size(to_do,2)-size(find(joined(j,:)),2)):size(to_do,2)
            if grouped(to_do(k)) == 0;
                temp_group = [temp_group to_do(k)];
                grouped(to_do(k)) = 1;                
                
            else
                deletion(k) = 1;
            end
        end
        %if size(find(joined(j,:)),2) == 2 && sum(deletion) == 1
           %block
        %end
        to_do(find(deletion)) = [];
    end
    groups{block} = temp_group;
    block = block + 1;
end
%multiWaitbar('Grouping...','close');
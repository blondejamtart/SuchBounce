function [dist_trim,trimset,offset,ignore] = trim(frameset,cutoff,n,endpoint)

dist = zeros(1,n);
ignore = zeros(1,n);
for i = 1:n
    dist(i) = norm(reshape(frameset(endpoint,i,:),1,3));
end
i = n;
trimset = frameset;
while i >= 1
    if dist(i) > cutoff;
        ignore(i) = 1;
        trimset(:,i,:) = [];
    end
    i = i - 1;
end

offset = mean(trimset(:,:,:),2);

for i = 1:size(trimset,2)
    trimset(:,i,:) = trimset(:,i,:) - offset;
end
for i = 1:size(trimset,2);
    dist_trim(i) = norm(reshape(trimset(endpoint,i,:),1,3));
end
end
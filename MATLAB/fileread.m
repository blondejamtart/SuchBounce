function var = fileread(filestr)

file = fopen(filestr);
tempstr = 'a';
i = 1;
d = 0;
l = -5;
while tempstr ~= -1
    tempstr = fgetl(file);
    l = l + 1;
    if d == 0
        try
            temp = double(eval(tempstr));
            d = 1;
        end
    end
end

fclose('all');
file = fopen(filestr);

if size(temp,1)~=1
    n = size(temp,1);
else
    n = size(temp,2);
end

if ~isvector(temp)
    var = zeros(l,n,3);
else
    var = zeros(l,n);
end

tempstr = 'a';
while tempstr ~= -1
    tempstr = fgetl(file);
    try
        var(i,:,:) = double(eval(tempstr));
        i = i + 1;
    end
end

fclose('all');

end


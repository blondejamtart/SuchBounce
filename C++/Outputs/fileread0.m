function [var, l] = fileread0(filestr,l,isvectorset,n)
clc
file = fopen(filestr);
multiWaitbar('Current File:',0);
i = 1;
if nargin == 1
    tempstr = 'a';
 
    d = 0;
    l = -1;
  
    while tempstr ~= -1
        tempstr = fgetl(file);
        clc
        l = l + 1;
        if d == 0
            try
                temp = str2doubleq(tempstr);
                d = 1;
            end
        end
    end
    fclose('all');
    % fid = fopen(filestr, 'rb');
    % fseek(fid, 0, 'eof');
    % fileSize = ftell(fid);
    % frewind(fid);
    %
    % data = fread(fid, fileSize, 'uint8');
    % l = sum(data == 10) + 1;
    % fclose(fid);
    % clear data
    
    file = fopen(filestr);
    if size(temp,1)~=1
        n = size(temp,1);
    else
        n = size(temp,2);
    end
    if ~isvector(temp)
        tempvar = zeros(l,n,3);
    else
        tempvar = zeros(l,n);
    end
end


if nargin == 4
    if isvectorset
        tempvar = zeros(l,n,3);
    else
        tempvar = zeros(l,n);
    end
end

tempstr = 'a';
begun = 0;
while ~begun
    tempstr = fgetl(file);
    try
        tempvar(i,:,:) = str2doubleq(tempstr);
        i = i + 1;
        begun = 1;
    end
    
end
tempstr = fgetl(file);

while (tempstr ~= -1) & (i < l)
    multiWaitbar('Current File:',i/l);
    try
        tempvar(i,:,:) = str2doubleq(tempstr);
    catch
        'oops'
    end
    i = i + 1;
    tempstr = fgetl(file);
end
fclose('all');
var = tempvar;
multiWaitbar('Current File:','Close');
end


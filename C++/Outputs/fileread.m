function [var, l, errorcount] = fileread(filestr,l,isvectorset,n)

file = fopen(filestr);
multiWaitbar('Current File:',0);
i = 1;
errorcount = 0;
if nargin == 1
    tempstr = 'a';
    
    d = 0;
    l = -2;
    
    while tempstr ~= -1
        tempstr = fgetl(file);
        clc
        l = l + 1;
        if d == 0
            try
                temp = double(eval(['[' tempstr ']']));
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
        l = l + 1;
    end
    if ~isvector(temp)
        if size(temp,2) == 3
            tempvar = zeros(l,n,3);
        else
            tempvar = zeros(l,n,size(temp,2));
        end
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
        tempvar(i,:,:) = double(eval(['[' tempstr ']']));
        i = i + 1;
        begun = 1;
    end
    
end
tempstr = fgetl(file);

while sum(tempstr ~= -1) && i <= l
    multiWaitbar('Current File:',i/l);
    try
        tempvar(i,:,:) = double(eval(['[' tempstr ']']));
        i = i + 1;
    catch
        errorcount = errorcount + 1
        l = l - 1;
    end
    tempstr = fgetl(file);
end
fclose('all');
var = tempvar;
multiWaitbar('Current File:','Close');
end


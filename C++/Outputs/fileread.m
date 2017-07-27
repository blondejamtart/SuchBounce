function [var, l, errorcount] = fileread(filestr,l,isvectorset,n)

file = fopen(filestr);
multiWaitbar('Current File:',0);
i = 1;
errorcount = 0;
if nargin == 1
    
    [~,cmdout] = system(['wc -l ' filestr]);
    l = eval(cmdout(1:(length(cmdout)-length(filestr)-1)));
    
    file = fopen(filestr);
    tempstr = fgetl(file);
    temp = eval(tempstr);
    if size(temp,1)~=1
        n = size(temp,1);        
    else
        n = size(temp,2);   
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

fclose('all');
file = fopen(filestr);

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


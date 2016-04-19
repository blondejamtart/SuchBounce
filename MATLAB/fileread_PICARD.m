l = 1;

for i = 11:25
    file = fopen(['Vac Test/SD#2/DATA00', num2str(i), '.TXT']);
    tempstring = fgetl(file);
    while tempstring ~= -1        
        dataset(l,:) = tempstring;
        l = l + 1;
        tempstring = fgetl(file);
    end 
    fclose('all');
end


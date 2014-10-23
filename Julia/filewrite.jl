function filewrite(file,var)

global writestr
dumpfile = open(file,"w");

for i = 1:size(var,3)
	writestr = string(var[:,1,i])[1:length(string(var[:,1,i]))-1];
	for j = 2:size(var,2)
		local tempstr = string(var[:,j,i])[2:length(string(var[:,j,i]))-1];
		writestr = [writestr ";" tempstr "]\n"];
	end
	write(dumpfile,writestr);
end

close(dumpfile);

end

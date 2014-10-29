function filewriteshort(file,var)

global writestr
dumpfile = open(file,"w");

for i = 1:size(var,2)
	writestr = string(var[:,i])[2:length(string(var[:,i]))-1];
	writestr = ["(" writestr ")\r\n"];
	write(dumpfile,writestr);
end

close(dumpfile);

end

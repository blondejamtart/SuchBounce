function filewrite(file,var,option)

global writestr
dumpfile = open(file,"w");
write(dumpfile,"--------------------------------------------------------------------------\n");
if option == "r"
	write(dumpfile,"| Results file:                                                          |\n");
	write(dumpfile,"| - List of particles positions at each delta T step.                    |\n");
else
	write(dumpfile,"| Config dump:                                                   |\n");
	write(dumpfile,"| - List of particles positions & velocities.							   |\n");
end
write(dumpfile,"--------------------------------------------------------------------------\n");

if ndims(var) == 3
	for i = 1:size(var,3)
		writestr = string(var[:,1,i]')[1:length(string(var[:,1,i]))-1];
		for j = 2:size(var,2)-1
			local tempstr = string(var[:,j,i]')[2:length(string(var[:,j,i]))-1];
			writestr = [writestr ";" tempstr];
		end
		local tempstr = string(var[:,size(var,2),i]')[2:length(string(var[:,size(var,2),i]))-1];
		writestr = [writestr ";" tempstr "]\n"];
		write(dumpfile,writestr);
	end
else 	
	for i = 1:size(var,2)
		writestr = string(var[:,i]')[1:length(string(var[:,i]))];
		writestr = [writestr "\n"];
		write(dumpfile,writestr);
	end
end

close(dumpfile);

end

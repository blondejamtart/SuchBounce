function fileread(file)

initfile = open(file);

global linecount = -2;
global tempstring = "a";
while !isempty(tempstring)
	linecount = linecount + 1;
	tempstring = readline(initfile);
end
seek(initfile,(linecount-7))

global stringdump = ["" "" "" "" "" "" ""];

for i = 1:7
	stringdump[:,i] = readline(initfile);
end

global r = float64(eval(parse(stringdump[1][1:length(stringdump[1])-1])));
global v = float64(eval(parse(stringdump[2][1:length(stringdump[2])-1])));
global w = float64(eval(parse(stringdump[3][1:length(stringdump[3])-1])));
global const q = float64(eval(parse(stringdump[4][1:length(stringdump[4])-1])));
global const m = float64(eval(parse(stringdump[5][1:length(stringdump[5])-1])));
global const rad = float64(eval(parse(stringdump[6][1:length(stringdump[6])-1])));
global const settings = float64(eval(parse(stringdump[7][1:length(stringdump[7])-1])));

end

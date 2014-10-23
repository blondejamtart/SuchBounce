

function fileread(file)

include("randseed.jl")

initfile = open(file);

global tempstring = "a";
while tempstring != "Settings:\n"
	tempstring = readline(initfile);
end

global stringdump = ["" "" "" "" "" "" ""];

for i = 1:7
	stringdump[:,i] = readline(initfile);
end

global const m = float64(eval(parse(stringdump[5][1:length(stringdump[5])-1])));
global const rad = float64(eval(parse(stringdump[6][1:length(stringdump[6])-1])));
global const settings = float64(eval(parse(stringdump[7][1:length(stringdump[7])-1])));

const n = size(rad,2);

global r = zeros(n,3);
global v = zeros(n,3);
global w = zeros(n,3);
global q = zeros(n,1);

if stringdump[1][1:length(stringdump[1])-1] == "Rand"
	r, v, w, q = randseed(r,v,w,q,rad);
else
	r = float64(eval(parse(stringdump[1][1:length(stringdump[1])-1])));
	v = float64(eval(parse(stringdump[2][1:length(stringdump[2])-1])));
	w = float64(eval(parse(stringdump[3][1:length(stringdump[3])-1])));
	q = float64(eval(parse(stringdump[4][1:length(stringdump[4])-1])));
end


end

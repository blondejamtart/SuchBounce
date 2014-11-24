

function fileread(file)

include("randseed.jl")
include("randseed_part.jl")

initfile = open(file);

global tempstring = "a";
while tempstring != "Settings:\n"
	tempstring = readline(initfile);
end

global stringdump = ["" "" "" "" "" "" ""];

for i = 1:7
	stringdump[:,i] = readline(initfile);
end


global const settings = float64(eval(parse(stringdump[7][1:length(stringdump[7])-1])));

if stringdump[1][1:4] == "Rand" && stringdump[2][1:length(stringdump[2])-1] != "Rand" 
	global const n = int64(eval(parse(stringdump[2][1:length(stringdump[2])-1])));
	global const m = float64(eval(parse(stringdump[5][1:length(stringdump[5])-1])))*ones(n,1);
	global const rad = float64(eval(parse(stringdump[6][1:length(stringdump[6])-1])))*ones(n,1);
else
	global const m = float64(eval(parse(stringdump[5][1:length(stringdump[5])-1])));
	global const rad = float64(eval(parse(stringdump[6][1:length(stringdump[6])-1])));
	global const n = size(rad,2);
end

global r = zeros(3,n);
global r_pad = zeros(4,n);
global v = zeros(3,n);
global v_pad = zeros(4,n);
global w = zeros(3,n);
global w_pad = zeros(4,n);
global q = zeros(1,n);

if stringdump[1][1:length(stringdump[1])-1] == "Rand"
	r, v, w, q = randseed(r,v,w,q,rad);
elseif stringdump[1][1:4] == "Rand"
	r = float64(eval(parse(stringdump[1][6:length(stringdump[1])-3])))';
	local x = int64(eval(parse(string(stringdump[1][length(stringdump[1])-1]))));	
	r, v, w, q = randseed_n(r,v,w,q,rad,x);
else
	r = float64(eval(parse(stringdump[1][1:length(stringdump[1])-1])))';
	v = float64(eval(parse(stringdump[2][1:length(stringdump[2])-1])))';
	w = float64(eval(parse(stringdump[3][1:length(stringdump[3])-1])))';
	q = float64(eval(parse(stringdump[4][1:length(stringdump[4])-1])));
end

r_pad[1:3,:] = r;
v_pad[1:3,:] = v;
w_pad[1:3,:] = w;

end

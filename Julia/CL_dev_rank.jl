import OpenCL
const cl = OpenCL;

dev_list = cl.devices();
dev_score = zeros(length(dev_list),1);

for x = 1:length(dev_list)
	
	local ctx = cl.Context(dev_list[x]);
	local queue = cl.CmdQueue(ctx);
	include("Benchmark.jl")

	dev_score[x] = p.tlast - p.tfirst;

end

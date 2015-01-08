import OpenCL
const cl = OpenCL

dev_list = cl.devices();
dev_score = zeros(length(dev_list),1);

for x = 1:length(dev_list)

	local ctx = cl.Context(dev_list[x]);
	local queue = cl.CmdQueue(ctx);
	local test = cl.Program(ctx, source=test_kernel) |> cl.build!
	local ker_t = cl.Kernel(test, "test");	

	include("Benchmark.jl")

	dev_score[x] = p.tlast - p.tfirst;

end

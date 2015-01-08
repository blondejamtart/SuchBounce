import OpenCL
const cl = OpenCL


const test_kernel = "
__kernel void test(__global double *a
			__global double *b)

{
	
	a[x] += log(pow(b[x],9000))*b[x];
	
	a[x] += -8999*log(b[x]);
}
"

global const a = ones(64,3);
global const b = exp(1)*ones(64,1);
global const step = int64(1e7);





dev_list = cl.devices();
dev_score = zeros(length(dev_list),1);

for x = 1:length(dev_list)

	local ctx = cl.Context(dev_list[x]);
	local queue = cl.CmdQueue(ctx);
	local test = cl.Program(ctx, source=test_kernel) |> cl.build!
	local ker_t = cl.Kernel(test, "test");
	abuff = cl.Buffer(Float64, ctx, (:rw, :copy), hostbuf=a)
	bbuff = cl.Buffer(Float64, ctx, (:r, :copy), hostbuf=b)
	local p = Progress(step,1)

	for n = 1:step
		cl.call(queue, ker_t, 64, nothing, abuff, bbuff);
		next!(p)
	end

	dev_score[x] = p.tlast - p.tfirst;

end

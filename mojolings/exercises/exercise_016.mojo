# ==============================================================================
# EXERCISE 16: GPU Kernel Programming - Unleashing GPU Power
# ==============================================================================
#
# Mojo's GPU programming eliminates CUDA complexity while providing direct
# access to GPU compute power through simple decorators.

# hint: review the imports
from gpu import DeviceContext
from tensor import Tensor


# TODO: Fix the GPU kernel function
fn gpu_vector_addition():
    # Check if GPU is available
    # TODO: Add GPU availability check
    # hint: review the GPU section of the mojo manual

    # Create GPU context
    var ctx = DeviceContext()

    # Create input tensors on CPU
    alias size = 100000
    var cpu_a = Tensor[DType.float32](size)
    var cpu_b = Tensor[DType.float32](size)

    # Initialize CPU tensors
    for i in range(size):
        cpu_a[i] = Float32(i)
        cpu_b[i] = Float32(i * 2)

    # TODO: Transfer tensors to GPU and launch kernel
    # HINT: Use ctx.to_device() to move tensors to GPU

    @kernel
    fn vector_add_kernel(
        a: Tensor[DType.float32],
        b: Tensor[DType.float32],
        result: Tensor[DType.float32],
    ):
        # TODO: Implement GPU kernel
        # HINT: Use thread_idx and block_idx for parallel execution
        var idx = thread_idx.x + block_idx.x * block_dim.x
        if idx < a.size():
            result[idx] = ____  # Add corresponding elements

    print("GPU kernel operations completed!")


def main():
    gpu_vector_addition()

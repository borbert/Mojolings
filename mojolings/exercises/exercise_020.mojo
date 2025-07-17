# ==============================================================================
# EXERCISE 20: Performance Benchmarking and Optimization
# ==============================================================================
#
# Learn to measure and optimize performance using Mojo's profiling capabilities.
# Maybe the times will end up being too small of a difference to see.

from time import perf_counter
from algorithm import vectorize
from sys.info import simdwidthof
from memory import UnsafePointer
from random import rand


fn benchmark_implementations():
    alias size = 1000000
    alias iterations = 10

    # Naive implementation
    fn naive_sum(
        data: UnsafePointer[Scalar[DType.float32]], size: Int
    ) -> Float32:
        var total: Float32 = 0.0
        for i in range(size):
            total += data.load(i)
        return total

    # TODO: Vectorized implementation
    fn vectorized_sum(
        data: UnsafePointer[Scalar[DType.float32]], size: Int
    ) -> Float32:
        var total: Float32 = 0.0

        @parameter
        fn vectorized_add[simd_width: Int](idx: Int):
            # TODO: Load and sum vector elements
            var vec = data.simd_load[____](idx)  # Load simd_width elements
            # TODO: How do we accumulate this into total?
            # HINT: Use reduce_add() and careful handling of the reduction
            pass

        # TODO: Apply vectorization
        vectorize[simdwidthof[DType.float32](), vectorized_add](size)
        return total

    # TODO: Parallel + vectorized implementation
    fn parallel_vectorized_sum(
        data: UnsafePointer[Scalar[DType.float32]], size: Int
    ) -> Float32:
        # TODO: Combine parallelize() and vectorize() for maximum performance
        return 0.0

    # Benchmark setup
    var data = UnsafePointer[Scalar[DType.float32]].alloc(size)
    rand(data, size)

    # TODO: Benchmark each implementation
    print("Benchmarking different implementations...")

    # Time naive version
    var start_naive = perf_counter()
    for _ in range(iterations):
        _ = naive_sum(data, size)
    var time_naive = perf_counter() - start_naive

    # TODO: Time vectorized version
    # TODO: Time parallel+vectorized version

    print(
        "Naive implementation: " + str(time_naive / iterations * 1000) + " ms"
    )
    # TODO: Print other timing results

    data.free()


def main():
    benchmark_implementations()

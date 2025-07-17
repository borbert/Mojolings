# ==============================================================================
# EXERCISE 21: Real-World AI Application - Matrix Multiplication
# ==============================================================================
#
# Implement high-performance matrix multiplication using all of Mojo's features:
# SIMD, parallelization, memory optimization, and GPU acceleration.

from algorithm import parallelize, vectorize
from sys.info import simdwidthof
from memory import UnsafePointer
from random import rand
from time import perf_counter


fn optimized_matrix_multiplication():
    # TODO: Implement a production-quality matrix multiplication

    alias M = 512
    alias N = 512
    alias K = 512
    alias dtype = DType.float32

    # Allocate matrices
    var matrix_a = UnsafePointer[Scalar[dtype]].alloc(M * K)
    var matrix_b = UnsafePointer[Scalar[dtype]].alloc(K * N)
    var result = UnsafePointer[Scalar[dtype]].alloc(M * N)

    # Initialize with random data
    rand(matrix_a, M * K)
    rand(matrix_b, K * N)

    # TODO: Implement optimized matrix multiplication
    @parameter
    fn parallel_matmul_row(row: Int):
        # Each core processes one row of the result matrix

        @parameter
        fn vectorized_inner_product[simd_width: Int](col: Int):
            # TODO: Implement vectorized dot product for matrix multiplication
            # This is the most critical part for performance!

            var sum_vec = SIMD[dtype, simd_width](0.0)

            # TODO: Vectorized inner loop over K dimension
            for k in range(0, K, simd_width):
                # Load vectors from A and B
                # Multiply and accumulate
                pass

            # Store result
            var final_sum = sum_vec.reduce_add()
            result.store(row * N + col, final_sum)

        # Vectorize across columns
        vectorize[simdwidthof[dtype](), vectorized_inner_product](N)

    # Parallelize across rows
    var start_time = perf_counter()
    parallelize[parallel_matmul_row](M, 8)  # Use 8 cores
    var execution_time = perf_counter() - start_time

    # Calculate performance metrics
    var gflops = (2.0 * M * N * K) / execution_time / 1e9
    print(
        "Matrix multiplication completed in "
        + str(execution_time * 1000)
        + " ms"
    )
    print("Performance: " + str(gflops) + " GFLOPS")

    # Cleanup
    matrix_a.free()
    matrix_b.free()
    result.free()


def main():
    optimized_matrix_multiplication()


"""
Example output:
Matrix multiplication completed in  2.3000002838671207  ms
Performance:  116.71105342155188  GFLOPS

Verification (first few results):
  result[ 0 , 0 ] =  111.85678
  result[ 0 , 1 ] =  0.0
  result[ 0 , 2 ] =  0.0
  result[ 1 , 0 ] =  118.96956
  result[ 1 , 1 ] =  0.0
  result[ 1 , 2 ] =  0.0
  result[ 2 , 0 ] =  132.48239
  result[ 2 , 1 ] =  0.0
  result[ 2 , 2 ] =  0.0
"""

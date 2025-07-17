# ==============================================================================
# EXERCISE 14: Parallelization redux - Multi-Core Power
# ==============================================================================
#
# parallelize() distributes work across CPU cores, combining with vectorization
# for maximum performance on multi-core systems.

from algorithm import parallelize, vectorize
from sys.info import simdwidthof
from memory import UnsafePointer


fn parallel_matrix_operations():
    alias M = 1000
    alias N = 1000
    alias dtype = DType.float32

    # Allocate matrix data
    var matrix = UnsafePointer[Scalar[dtype]].alloc(M * N)
    var result = UnsafePointer[Scalar[dtype]].alloc(M * N)

    # Initialize matrix
    for i in range(M * N):
        matrix.store(i, (i % 100).cast[dtype]())

    # TODO: Fix the parallel processing function
    @parameter
    fn process_row(row: Int):
        # Each core processes one row
        var row_start = row * N

        # TODO: Fix the vectorized operation within each row
        @parameter
        fn vectorized_square[simd_width: Int](col: Int):
            var idx = row_start + col
            var values = matrix.simd_load[____](idx)  # Load vector
            var squared = ____  # Square the values (values * values)
            result.simd_store[simd_width](idx, squared)

        # Apply vectorization across columns in this row <-- check latest version syntax here
        vectorize[simdwidthof[dtype](), vectorized_square](N)

    # TODO: Apply parallelization across rows
    # HINT: parallelize[function](num_tasks, num_workers)
    var num_cores = 4  # Use 4 CPU cores
    parallelize[____](M, num_cores)  # Process M rows using num_cores

    # Verify results
    print("Matrix operation completed!")
    print("Sample results:")
    for i in range(5):
        var original = matrix.load(i)
        var squared = result.load(i)
        print("  " + str(original) + "² = " + str(squared))

    matrix.free()
    result.free()


def main():
    parallel_matrix_operations()


# PERFORMANCE: This combines vectorization + parallelization for maximum speed!

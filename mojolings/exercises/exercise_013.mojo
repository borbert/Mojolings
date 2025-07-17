#==============================================================================
# EXERCISE 13: Vectorize - Automatic SIMD Optimization
#==============================================================================
#
# The vectorize() function automatically applies SIMD operations to loops,
# turning sequential processing into parallel vector operations.
#
# BACKGROUND:
# Instead of manually writing SIMD code, vectorize() takes a parametric function
# and applies it to chunks of data using optimal SIMD widths.

from algorithm import vectorize
from sys.info import simdwidthof
from memory.unsafe import DTypePointer
from random import rand

fn vectorized_array_processing():
    alias size = 1000000
    alias dtype = DType.float32
    
    # Allocate arrays
    var array_a = DTypePointer[dtype].alloc(size)
    var array_b = DTypePointer[dtype].alloc(size)
    var result = DTypePointer[dtype].alloc(size)
    
    # Initialize with random data
    rand(array_a, size)
    rand(array_b, size)
    
    # TODO: Fix the vectorized function
    @parameter
    fn vectorized_add[simd_width: Int](idx: Int):
        # TODO: Load simd_width elements from both arrays
        var a_vec = array_a.simd_load[____](idx)  # Fill in simd_width
        var b_vec = array_b.simd_load[simd_width](idx)
        
        # TODO: Perform vectorized operation and store result
        var sum_vec = ____  # Add the vectors
        result.simd_store[simd_width](idx, sum_vec)
    
    # Apply vectorization across the entire array
    vectorize[2 * simdwidthof[dtype](), vectorized_add](size)
    
    # Verify first few results
    print("First 5 results:")
    for i in range(5):
        var a_val = array_a.load(i)
        var b_val = array_b.load(i)
        var result_val = result.load(i)
        print("  " + str(a_val) + " + " + str(b_val) + " = " + str(result_val))
    
    # Cleanup
    array_a.free()
    array_b.free()
    result.free()

def main():
    vectorized_array_processing()

# PERFORMANCE IMPACT: 10-100x faster than Python loops!

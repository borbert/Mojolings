#==============================================================================
# EXERCISE 12: SIMD Vectorization - The Foundation of Speed
#==============================================================================
#
# SIMD (Single Instruction, Multiple Data) is Mojo's secret weapon for CPU speed.
# While Python processes one number at a time, SIMD processes multiple numbers
# simultaneously using CPU vector instructions.
#
# BACKGROUND:
# Modern CPUs have vector registers that can hold multiple values. A 256-bit
# register can hold 8 float32 values or 4 float64 values. SIMD operations
# process all values in parallel, giving 8x speedup!
#
# TASK: Fix the SIMD operations below to compute vector math efficiently.

from algorithm import vectorize
from sys.info import simdwidthof
import math

fn simd_vector_operations():
    # TODO: Fix these SIMD declarations
    # HINT: SIMD[DType, width] where width should match CPU capabilities
    
    # Get optimal SIMD width for float32
    alias optimal_width = simdwidthof[DType.float32]()
    print("Optimal SIMD width for float32:", optimal_width)
    
    # Create SIMD vectors - fix the syntax errors
    var vector_a = SIMD[DType.float32, 8](1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0)
    var vector_b = SIMD[DType.float32, ____](2.0)  # TODO: Fill in width, initialize all elements to 2.0
    
    # Vectorized operations - fix these calculations
    var sum_vec = vector_a + vector_b      # Element-wise addition
    var product_vec = vector_a * ____      # TODO: Element-wise multiplication
    var fma_result = vector_a.fma(vector_b, vector_a)  # TODO: Fix fused multiply-add
    
    # Advanced SIMD operations
    var shuffled = vector_a.shuffle[4, 5, 6, 7, 0, 1, 2, 3]()  # Reorder elements
    var reduced_sum = vector_a.reduce_add()  # Sum all elements
    
    print("Original vector_a:", str(vector_a))
    print("Vector filled with 2.0:", str(vector_b))
    print("Sum result:", str(sum_vec))
    print("Product result:", str(product_vec))
    print("FMA result:", str(fma_result))
    print("Shuffled:", str(shuffled))
    print("Reduced sum:", reduced_sum)

# CHALLENGE: Create a SIMD-optimized dot product function
fn simd_dot_product(a: SIMD[DType.float32, 8], b: SIMD[DType.float32, 8]) -> Float32:
    # TODO: Implement dot product using SIMD operations
    # HINT: multiply vectors element-wise, then reduce to single value
    return 0.0  # Replace this

def main():
    simd_vector_operations()

# PERFORMANCE NOTE: This single function can be 8-32x faster than scalar code!
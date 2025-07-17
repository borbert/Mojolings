#!/usr/bin/env mojo
"""
Exercise 010: Basic Performance Optimization
============================================

Learn about basic performance optimization techniques in Mojo.

TASK: Complete the performance optimization examples

BACKGROUND:
Mojo provides several ways to optimize performance:
- Static typing with fn functions
- Compile-time constants
- Efficient memory usage
- SIMD (Single Instruction, Multiple Data) operations

LEARNING OBJECTIVES:
- Compare def vs fn performance
- Use compile-time constants
- Understand basic SIMD operations
- Measure performance differences
"""


from time import perf_counter
from math import sqrt
from sys.info import simdwidthof


def slow_sum_python_style(numbers: List[Int]) -> Int:
    """Sum numbers using Python-style def function."""
    var total = 0
    for i in range(len(numbers)):
        total += numbers[i]
    return total


fn fast_sum_mojo_style(numbers: List[Int]) -> Int:
    """Sum numbers using optimized fn function."""
    var total: Int = 0
    for i in range(len(numbers)):
        total += numbers[i]
    return total


alias ARRAY_SIZE = 1000000  # Compile-time constant


fn demonstrate_simd_basics():
    """Demonstrate basic SIMD operations."""
    print("Basic SIMD Operations:")
    
    # TODO: Create two SIMD vectors of 4 Float32 values
    # HINT: Use SIMD[DType.float32, 4]
    let vec1 = SIMD[DType.float32, 4](1.0, 2.0, 3.0, 4.0)
    let vec2 = SIMD[DType.float32, 4](5.0, 6.0, 7.0, 8.0)
    
    # TODO: Add the vectors
    # HINT: Use vec1 + vec2
    let sum_vec = vec1 ??? vec2
    print("Vector addition:", sum_vec)
    
    # TODO: Multiply the vectors
    # HINT: Use vec1 * vec2
    let mul_vec = vec1 ??? vec2
    print("Vector multiplication:", mul_vec)
    
    # Calculate square root of all elements
    let sqrt_vec = sqrt(vec1)
    print("Square root:", sqrt_vec)
    
    # Show SIMD width for different types
    print("SIMD width for Float32:", simdwidthof[DType.float32]())
    print("SIMD width for Int32:", simdwidthof[DType.int32]())


fn compute_intensive_task_slow(n: Int) -> Float64:
    """A compute-intensive task implemented slowly."""
    var result: Float64 = 0.0
    for i in range(n):
        # TODO: Add the square root of i to result
        # HINT: Use result += sqrt(Float64(i))
        result += sqrt(Float64(???))
    return result


fn compute_intensive_task_fast(n: Int) -> Float64:
    """A compute-intensive task implemented with optimizations."""
    var result: Float64 = 0.0
    
    # TODO: Process multiple elements at once using SIMD
    # This is a simplified example - real SIMD would be more complex
    let simd_width = simdwidthof[DType.float64]()
    let simd_iterations = n // simd_width
    
    # Process SIMD-width elements at a time
    for i in range(simd_iterations):
        let base_idx = i * simd_width
        var simd_vec = SIMD[DType.float64, 4](0.0, 0.0, 0.0, 0.0)
        
        # Fill SIMD vector with consecutive values
        for j in range(simd_width):
            simd_vec[j] = Float64(base_idx + j)
        
        # TODO: Calculate square root of SIMD vector
        # HINT: Use sqrt(simd_vec)
        let sqrt_vec = sqrt(???)
        
        # Sum the results
        for j in range(simd_width):
            result += sqrt_vec[j]
    
    # Handle remaining elements
    for i in range(simd_iterations * simd_width, n):
        result += sqrt(Float64(i))
    
    return result


def benchmark_functions():
    """Benchmark different function implementations."""
    print("\nBenchmarking Functions:")
    
    # Create test data
    var numbers = List[Int]()
    for i in range(ARRAY_SIZE):
        numbers.append(i)
    
    # Benchmark Python-style function
    let start1 = perf_counter()
    let result1 = slow_sum_python_style(numbers)
    let time1 = perf_counter() - start1
    
    # Benchmark Mojo-style function
    let start2 = perf_counter()
    let result2 = fast_sum_mojo_style(numbers)
    let time2 = perf_counter() - start2
    
    print("Python-style result:", result1, "Time:", time1)
    print("Mojo-style result:", result2, "Time:", time2)
    
    if time1 > time2:
        let speedup = time1 / time2
        print("Speedup: {:.2f}x faster".format(speedup))
    
    # Benchmark compute-intensive tasks
    let n = 100000
    print("\nBenchmarking compute-intensive tasks (n =", n, "):")
    
    let start3 = perf_counter()
    let result3 = compute_intensive_task_slow(n)
    let time3 = perf_counter() - start3
    
    let start4 = perf_counter()
    let result4 = compute_intensive_task_fast(n)
    let time4 = perf_counter() - start4
    
    print("Slow version:", result3, "Time:", time3)
    print("Fast version:", result4, "Time:", time4)
    
    if time3 > time4:
        let speedup = time3 / time4
        print("Speedup: {:.2f}x faster".format(speedup))


def main():
    print("🔥 Exercise 010: Basic Performance Optimization")
    print("=" * 40)
    
    demonstrate_simd_basics()
    benchmark_functions()
    
    print("\n📊 Performance Optimization Benefits:")
    print("  • fn functions are faster than def")
    print("  • SIMD operations process multiple data simultaneously")
    print("  • Compile-time constants enable optimizations")
    print("  • Type annotations help the compiler optimize")
    
    print("✅ Basic performance optimization mastered!")

#==============================================================================
# EXERCISE 11: Parallelism - Concurrent Computation
#==============================================================================
#
# BACKGROUND:
# Modern computers have multiple CPU cores, and effective parallel programming
# is essential for performance. Mojo provides easy-to-use parallelization
# that automatically distributes work across available cores while maintaining
# safety through its ownership system.
#
# KEY CONCEPTS:
# - parallelize function for automatic work distribution
# - Thread safety through ownership
# - UnsafePointer for thread-safe shared storage
# - Performance scaling with core count
# - Race condition prevention
#
# LEARNING OBJECTIVES:
# - Learn parallel programming in Mojo
# - Understand thread safety and memory management
# - Practice parallel algorithm design
# - See performance benefits of parallelization
#
# TASK: Fix the parallel sum implementation below
# The code has several syntax errors and missing imports that you need to fix!

# TODO: Fix the imports - some are missing!
from algorithm import parallelize
# from time import ???  # <-- Missing import for timing
# from sys import ???  # <-- Missing import for core count
# from memory import ???  # <-- Missing imports for memory management

fn exercise_11_parallelism():
    """
    Exercise 11: Parallel programming and concurrent computation.

    Mojo makes parallelism both easy and safe, scaling across all CPU cores.
    """
    print("🔥 Exercise 11: Parallelism")
    print("=" * 40)

    # Create test data
    var numbers = List[Int]()
    for i in range(1000000):  # 1 million numbers
        numbers.append(i + 1)

    print("Computing sum of", len(numbers), "numbers...")

    # Sequential version for comparison
    # TODO: Fix the timing calls - what function should we use?
    var start_sequential = ???()  # <-- Fix this timing function call
    var sequential_sum = 0
    for i in range(len(numbers)):
        sequential_sum += numbers[i]
    var time_sequential = ???() - start_sequential  # <-- Fix this timing function call

    # Parallel version
    var start_parallel = ???()  # <-- Fix this timing function call
    # TODO: Fix the core count call - what function gets the number of cores?
    # hint: also consider reading about compile time constants
    var num_cores = ???()  # <-- Fix this function call
    var chunk_size = len(numbers) // num_cores
    
    # TODO: Fix the memory allocation
    # Use UnsafePointer for thread-safe results storage
    var results = UnsafePointer[Int].alloc(num_cores)
    ???(results, num_cores)  # <-- Fix this memory initialization call

    # TODO: Fix the parallelize function syntax
    # The function needs the @parameter decorator
    # @??? <-- Add the missing decorator
    fn chunk_worker(core_id: Int):
        var start_idx = core_id * chunk_size
        var end_idx = start_idx + chunk_size
        
        # Last core handles remaining elements
        if core_id == num_cores - 1:
            end_idx = len(numbers)
        
        var local_sum = 0
        for i in range(start_idx, end_idx):
            local_sum += numbers[i]
        
        # Store result in thread-safe manner
        results[core_id] = local_sum

    # TODO: Fix the parallelize function call syntax
    # Parallelize across actual CPU cores
    parallelize[???](???)  # <-- Fix the function name and parameter

    # Aggregate the final result
    var parallel_sum = 0
    for i in range(num_cores):
        parallel_sum += results[i]
    
    # TODO: Don't forget to free the memory!
    results.???()  # <-- Fix this memory cleanup call
    var time_parallel = ???() - start_parallel  # <-- Fix this timing function call

    print("Sequential sum: ", sequential_sum)
    print("Parallel sum:   ", parallel_sum)
    print("Sequential time:", time_sequential / 1e6, "ms")
    print("Parallel time:  ", time_parallel / 1e6, "ms")
    if time_sequential > time_parallel and time_parallel > 0:
        var speedup = Float64(time_sequential) / Float64(time_parallel)
        print("Speedup:", speedup, "x")

    print("\n📊 Parallelism Benefits:")
    print("  • Automatic work distribution across CPU cores")
    print("  • Significant performance improvements")
    print("  • Thread safety through ownership system")
    print("  • Scales with available hardware")

    print("\n💡 What you learned:")
    print("  • parallelize[function_name](iterations) syntax")
    print("  • @parameter decorator for parametric functions")
    print("  • UnsafePointer for thread-safe shared storage")
    print("  • num_physical_cores() to get optimal thread count")
    print("  • memset_zero() for memory initialization")
    print("  • Always free() allocated memory")

    print("\n🔧 Common Fixes You Should Have Made:")
    print("  • Import: from time import perf_counter")
    print("  • Import: from sys import num_physical_cores")
    print("  • Import: from memory import UnsafePointer, memset_zero")
    print("  • Add @parameter decorator to chunk_worker function")
    print("  • Use parallelize[chunk_worker](num_cores) syntax")
    print("  • Call results.free() to clean up memory")
    print()

    print("\n🚀 Next Steps:")
    print("  • Combine with SIMD for maximum performance")
    print("  • Learn GPU programming for massive parallelism")
    print("  • Explore async/await for I/O-bound tasks")
    print()

def main():
    exercise_11_parallelism()

# HINTS:
# =====
# 1. perf_counter() is the timing function from the time module
# 2. num_physical_cores() returns the number of CPU cores
# 3. UnsafePointer and memset_zero are from the memory module
# 4. The @parameter decorator is required for functions used with parallelize
# 5. parallelize syntax: parallelize[function_name](number_of_iterations)
# 6. Always call .free() on allocated UnsafePointer memory
#
# EXPECTED OUTPUT:
# ===============
# You should see significant speedup (2-8x depending on your CPU cores)
# The parallel sum should equal the sequential sum
# Parallel time should be much less than sequential time
#==============================================================================
# EXERCISE 08: Strategy Pattern - Polymorphic Algorithms
#==============================================================================
#
# BACKGROUND:
# The Strategy pattern allows you to define a family of algorithms,
# encapsulate each one, and make them interchangeable. This is perfect
# for scenarios where you need different implementations of the same
# operation (e.g., different sorting algorithms, payment methods, etc.).
#
# KEY CONCEPTS:
# - Algorithm abstraction through traits
# - Runtime algorithm selection
# - Polymorphic behavior
# - Code reuse and maintainability
# - Performance implications of different strategies
#
# LEARNING OBJECTIVES:
# - Implement the Strategy design pattern
# - Create multiple algorithm implementations
# - Use traits for polymorphic behavior
# - Understand when and why to use this pattern
#
# TASK: Implement sorting strategies using the Strategy pattern

# hint:  consider the signature below and the exercise on traits
trait Sorter:
    """A trait for different sorting algorithms."""
    fn sort(self, items: List[Int]) -> List[Int]

# hint: you have seen this problem before.
struct BubbleSort(Sorter):
    """Simple bubble sort implementation."""
    
    fn sort(self, items: List[Int]) -> List[Int]:
        # TODO: Implement bubble sort - fix the missing value
        var result = items
        var n = len(result)
        for i in range(n):
            for j in range(0, n - i - 1):
                if result[j] > result[j + 1]:
                    # Swap elements
                    var temp = result[j]
                    result[j] = result[j + 1]
                    result[j + 1] = ____  # <-- Replace with temp
        return result

struct QuickSort(Sorter):
    """Quick sort implementation using built-in approach."""
    
    fn sort(self, items: List[Int]) -> List[Int]:
        # TODO: For now, implement a simple selection sort
        # HINT: Find minimum element and swap with first element
        var result = items
        var n = len(result)
        for i in range(n):
            var min_idx = i
            for j in range(i + 1, n):
                if result[j] < result[min_idx]:
                    min_idx = ____  # <-- Replace with j
            
            # Swap minimum element with first element
            if min_idx != i:
                var temp = result[i]
                result[i] = result[min_idx]
                result[min_idx] = ____  # <-- Replace with temp
        return result

fn exercise_08_strategy_pattern():
    """
    Exercise 8: Strategy pattern for interchangeable algorithms.
    
    The Strategy pattern is essential for building flexible systems
    where you need to choose between different algorithms at runtime.
    Mojo's trait system makes this both safe and performant.
    """
    
    print("🔥 Exercise 8: Strategy Pattern")
    print("=" * 40)
    
    # Test both strategies
    var numbers1 = List[Int]()
    numbers1.append(3)
    numbers1.append(1)
    numbers1.append(4)
    numbers1.append(1)
    numbers1.append(5)
    
    var numbers2 = List[Int]()
    numbers2.append(3)
    numbers2.append(1) 
    numbers2.append(4)
    numbers2.append(1)
    numbers2.append(5)
    
    print("Original data:", str(numbers1))
    
    # Use QuickSort strategy
    var bubble_sorter = BubbleSort()
    var sorted1 = bubble_sorter.sort(numbers1)
    print("After BubbleSort:", str(sorted1))
    
    # Use QuickSort strategy  
    var quick_sorter = QuickSort()
    var sorted2 = quick_sorter.sort(numbers2)
    print("After QuickSort:", str(sorted2))
    
    print("\n📊 Strategy Pattern Benefits:")
    print("  • Runtime algorithm selection")
    print("  • Easy to add new algorithms")
    print("  • Separation of concerns")
    print("  • Testable algorithm implementations")
    
    print("\n💡 Real-World Examples:")
    print("  • Payment processing (Credit Card, PayPal, Crypto)")
    print("  • Compression algorithms (ZIP, GZIP, LZ4)")
    print("  • Routing algorithms (Shortest path, Fastest, Cheapest)")
    print("  • Machine learning models (Different algorithms for same task)")
    print()

# SOLUTIONS for reference:
# BubbleSort solution: Replace ____ with temp
# QuickSort solution: Replace ____ with j and temp

def main():
    exercise_08_strategy_pattern()

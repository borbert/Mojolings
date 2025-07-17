#==============================================================================
# EXERCISE 06: Ownership and Borrowing - Memory Safety
#==============================================================================
#
# BACKGROUND:
# Mojo's ownership system prevents memory bugs (use-after-free, double-free,
# memory leaks) at compile time. This is similar to Rust but with Python-like
# syntax. It's one of Mojo's most important safety features.
#
# KEY CONCEPTS:
# - mut: Mutable reference (borrow for modification) - latest versions
# - read: Immutable reference (borrow for reading)
# - owned: Transfer ownership (move semantics)
# - Memory safety: Compiler prevents common bugs
# - Zero-cost: Safety with no runtime overhead
#
# LEARNING OBJECTIVES:
# - Understand reference types and borrowing
# - Learn when to use inout vs borrowed
# - Practice safe mutation of data structures
# - See how ownership prevents bugs
#
# TASK: Fix the function signature to allow safe mutation

fn exercise_06_ownership():
    """
    Exercise 6: Ownership and borrowing for memory safety.
    
    Mojo's ownership system eliminates entire classes of bugs while
    maintaining zero runtime overhead. This is revolutionary for
    systems programming safety.
    """
    
    print("🔥 Exercise 6: Ownership and Borrowing")
    print("=" * 40)
    
    # TODO: Fix the function signature to allow mutation
    # HINT: The parameter needs to be 'mut' to allow modification
    def increment_all(inout nums: List[Int]):
        """Increment all numbers in the list by 1."""
        for i in range(len(nums)):
            nums[i] += 1
    
    # Test the function
    var numbers = List[Int]()
    numbers.append(1)
    numbers.append(2) 
    numbers.append(3)
    
    print("Before increment:", numbers) # hint:  how have we printed lists before?
    increment_all(numbers)  # Pass by mutable reference
    print("After increment:", numbers)  # Should print [2, 3, 4]
    
    # Demonstrate different reference types
    def read_only_access(borrowed nums: List[Int]) -> Int:
        """Read-only access to calculate sum."""
        var total = 0
        for i in range(len(nums)):
            total += nums[i]
        return total
    
    let sum_result = read_only_access(numbers)
    print("Sum of numbers:", sum_result)
    
    # Show ownership transfer
    def take_ownership(owned nums: List[Int]) -> Int:
        """Take ownership and return length."""
        return len(nums)
        # nums is automatically deallocated here
    
    var temp_list = List[Int]()
    temp_list.append(10)
    temp_list.append(20)
    
    let length = take_ownership(temp_list^)  # Transfer ownership with ^
    print("Length was:", length)
    # temp_list is no longer valid here!
    
    print("\n📊 Ownership Benefits:")
    print("  • Memory safety at compile time")
    print("  • Zero runtime overhead")
    print("  • Prevents use-after-free bugs")
    print("  • Eliminates memory leaks")
    print("  • Clear ownership semantics")
    print()

# SOLUTION for reference:
def increment_all_solution(inout nums: List[Int]):
    for i in range(len(nums)):
        nums[i] += 1

def main():
    exercise_06_ownership()
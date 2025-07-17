#==============================================================================
# EXERCISE 03: Functions - def vs fn
#==============================================================================
#
# BACKGROUND:
# Mojo has two function declaration styles:
# - def: Python-compatible, dynamic typing, flexible but slower
# - fn: Static typing required, optimized compilation, faster execution
#
# This dual approach lets you prototype quickly with 'def' and optimize
# with 'fn' when performance matters.
#
# KEY CONCEPTS:
# - def functions: Python-compatible, dynamic arguments and return types
# - fn functions: Require explicit types, compile to optimized code
# - Performance trade-offs: flexibility vs speed
# - When to use each style
#
# LEARNING OBJECTIVES:
# - Understand the difference between def and fn
# - Learn function type annotation syntax
# - See performance implications of each style
#
# TASK: Complete both function implementations

fn exercise_03_functions():
    """
    Exercise 3: Function declaration styles and type systems.
    
    This exercise demonstrates Mojo's innovative approach to functions.
    The same language supports both Python-style dynamic functions and
    systems-level static functions.
    """
    
    print("🔥 Exercise 3: Functions (def vs fn)")
    print("=" * 40)
    
    # IMPORTANT NOTE: VSCode might suggest adding type annotations to the def function.
    # Recent releases of Mojo have added type annotations to def functions and allowed them to raise errors.
    # https://docs.modular.com/mojo/changelog/#:~:text=def%20functions%20now%20require%20type%20annotations%20on%20arguments%2C%20and%20treat%20a%20missingreturn%20type%20as%20returning%20None.%20Previously%20these%20defaulted%20to%20the%20objecttype%20which%20led%20to%20a%20variety%20of%20problems.%20%20Support%20for%20object%20has%20beenremoved%20until%20we%20have%20time%20to%20investigate%20a%20proper%20replacement.
    # you may also need to review the section on def functions and type annotations in the tutorial to fix all the issues in this exercise.
    def add_dynamic(x, y):
        # TODO: Return the sum of x and y
        # HINT: Use the + operator
        return ____  # <-- Replace with x + y
    
    # Systems-style static function
    fn add_static(x: Int, y: Int) -> Int:
        # TODO: Return the sum of x and y
        # HINT: Same operation, but with type safety
        return ____  # <-- Replace with x + y
    
    # Test both functions
    let result_dynamic = add_dynamic(3, 4)
    let result_static = add_static(5, 6)
    
    print("Dynamic function result:", result_dynamic)  # Should print 7
    print("Static function result:", result_static)    # Should print 11
    
    # Performance insight
    print("\n📊 Performance Insight:")
    print("  • def functions: act like fn in Mojo 25.5")
    print("  • fn functions: Fast, compile-time optimization, type safety")
    print("  • Use def for prototyping, fn for production performance - this may not be true in future versions")
    print()

# SOLUTIONS for reference:
def add_dynamic_solution(x, y):
    return x + y

fn add_static_solution(x: Int, y: Int) -> Int:
    return x + y

def main():
    exercise_03_functions()

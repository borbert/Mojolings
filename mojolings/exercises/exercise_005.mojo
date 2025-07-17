#==============================================================================
# EXERCISE 05: Traits - Interfaces and Polymorphism
#==============================================================================
#
# BACKGROUND:
# Traits in Mojo are similar to interfaces in other languages. They define
# a contract that structs must implement, enabling polymorphism and code reuse.
# This is crucial for building large, maintainable systems.
#
# KEY CONCEPTS:
# - trait: Defines method signatures that must be implemented
# - Protocol-oriented programming: Design around behaviors, not inheritance
# - Compile-time polymorphism: Zero-cost abstractions
# - Code reuse: Write generic algorithms that work with any conforming type
#
# LEARNING OBJECTIVES:
# - Learn trait definition and implementation
# - Understand protocol-oriented programming
# - Practice method implementation in structs
# - See polymorphism in action
#
# TASK: Implement the to_string method for Point

##### Strings are not converted in later versions of Mojo as they are in python

trait ToStringable:
    """A trait for types that can be converted to strings."""
    fn to_string(self) -> String

struct Point(ToStringable, Copyable, Movable):
    """A 2D point that can be converted to a string."""
    var x: Int
    var y: Int
    
    fn __init__(inout self, x: Int, y: Int):
        self.x = x
        self.y = y
    
    # TODO: Implement the to_string method
    # HINT: Return a string like "(x, y)"
    fn to_string(self) -> String:
        return ____  # <-- Replace with string representation

struct Circle(ToStringable, Copyable, Movable):
    var radius: Int
    
    fn __init__(inout self, radius: Int):
        self.radius = radius
    
    fn to_string(self) -> String:
        return "Circle(r=" + str(self.radius) + ")"

fn exercise_05_traits():
    """
    Exercise 5: Traits and protocol-oriented programming.
    
    Traits enable powerful polymorphism in Mojo while maintaining
    performance. This is how you build reusable, generic algorithms
    that work with many different types.
    """
    
    print("🔥 Exercise 5: Traits (Interfaces)")
    print("=" * 40)
    
    # Test the trait implementation
    var p = Point(1, 2)
    print("Point as string:", p.to_string())  # Should print "(1, 2)"
    
    # Demonstrate polymorphism
    var c = Circle(5)
    print("Circle as string:", c.to_string())
    
    # Generic function that works with any ToStringable type
    fn print_stringable[T: ToStringable](item: T):
        print("Generic print:", item.to_string())
    
    print_stringable(p)
    print_stringable(c)
    
    print("\n📊 Trait Benefits:")
    print("  • Protocol-oriented programming")
    print("  • Zero-cost abstractions")
    print("  • Generic algorithms")
    print("  • Code reuse without inheritance complexity")
    print()

def main():
    exercise_05_traits()

    
# SOLUTION for reference:
fn to_string_solution(self) -> String:
    return "(" + str(self.x) + ", " + str(self.y) + ")"
# ==============================================================================
# EXERCISE 04: Structs and Initialization - Object-Oriented Programming
# ==============================================================================
#
# BACKGROUND:
# Mojo structs are similar to Python classes but with important differences:
# - Compile-time optimization through static typing
# - Memory layout control for performance
# - Value semantics by default (copyable, movable)
# - Integration with systems programming patterns
#
# KEY CONCEPTS:
# - @value decorator: Automatically generates copy/move constructors
# - __init__ method: Constructor for initialization
# - Field access: Direct access to struct members
# - Memory efficiency: Structs are optimized for performance
#
# LEARNING OBJECTIVES:
# - Learn struct definition and initialization
# - Understand the @value decorator
# - Practice constructor implementation
# - See object creation and member access
#
# TASK: Complete the Point struct constructor


#  something goes here, i.e. similair to a decorator in python
struct Point(Copyable, Movable):
    """A 2D point with x and y coordinates."""

    var x: Int
    var y: Int

    # there is a problem here that can be found in the mojo manual under structs
    fn __init__(inoutself, x: Int, y: Int):
        # TODO: Initialize the x and y fields
        # HINT: Use self.x = x syntax
        self.x = ____  # <-- Replace with x
        self.y = ____  # <-- Replace with y


fn exercise_04_structs():
    """
    Exercise 4: Struct definition and object-oriented programming.

    Structs in Mojo combine the familiar object-oriented programming
    model with systems programming performance. They're compiled to
    efficient machine code while maintaining clean syntax.
    """

    print("🔥 Exercise 4: Structs and Initialization")
    print("=" * 40)

    # Create and use a Point
    var p = Point(3, 4)
    print(
        "Point coordinates:", p.x, p.y
    )  # Should print "Point coordinates: 3 4"

    # Demonstrate value semantics
    var p2 = p  # This creates a copy, not a reference
    print("Copied point:", p2.x, p2.y)

    # Show multiple points
    var origin = Point(0, 0)
    var unit_x = Point(1, 0)
    var unit_y = Point(0, 1)

    print("Origin:", origin.x, origin.y)
    print("Unit X:", unit_x.x, unit_x.y)
    print("Unit Y:", unit_y.x, unit_y.y)

    print("\n📊 Struct Benefits:")
    print("  • Compile-time optimization")
    print("  • Memory-efficient layout")
    print("  • Value semantics (copy by default)")
    print("  • Type safety with performance")
    print()


# SOLUTION for reference:
struct Point_solution(Copyable, Movable):
    var x: Int
    var y: Int

    # there is a problem here that can be found in the mojo manual under structs
    fn __init__(inoutself, x: Int, y: Int):
        self.x = x
        self.y = y


def main():
    exercise_04_structs()

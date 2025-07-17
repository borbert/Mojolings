#==============================================================================
# EXERCISE 02: Variables and Types - Static vs Dynamic Typing
#==============================================================================
#
# BACKGROUND:
# Mojo supports both Python-style dynamic typing (var/def) and systems
# programming static typing (let/fn). This dual nature allows you to start
# with familiar Python syntax and optimize for performance when needed.
#
# KEY CONCEPTS:
# - var: mutable variable (can be reassigned)
# - let: immutable variable (cannot be reassigned)
# - Type inference: Mojo can often figure out types automatically
# - Performance: Static typing enables major optimizations
#
# LEARNING OBJECTIVES:
# - Understand variable declaration in Mojo
# - Learn the difference between var and let
# - See how Mojo infers types
#
# TASK: Declare an integer variable and print it

fn exercise_02_variables_and_types():
    """
    Exercise 2: Variable declaration and type systems.
    
    Mojo's hybrid type system is one of its key innovations. You can write
    Python-style dynamic code for rapid prototyping, then add static types
    for performance when needed.
    """
    
    print("🔥 Exercise 2: Variables and Types")
    print("=" * 40)
    
    # TODO: Fix this variable declaration
    # HINT: Assign the value 42 to the variable
    var answer = ____  # <-- Fill in with 42
    print("The answer is", answer)
    
    # Demonstrate different variable types
    var mutable_value = 200    # Can be changed
    let immutable_value = 100  # Cannot be changed
    
    print("Immutable value:", immutable_value)
    print("Mutable value before change:", mutable_value)
    
    mutable_value = 300  # This works
    # immutable_value = 150  # This would cause an error!
    
    print("Mutable value after change:", mutable_value)
    
    # Show type inference in action
    let inferred_float = 3.14    # Inferred as Float64
    let inferred_int = 42        # Inferred as Int
    let inferred_string = "Mojo" # Inferred as String
    
    print("Inferred types work automatically:")
    print("  Integer:", inferred_int)
    print("  Float:", inferred_float) 
    print("  String:", inferred_string)
    print()

# SOLUTION for reference:
fn exercise_02_variables_and_types_solution():
    var answer = 42
    print("The answer is", answer)

def main():
    exercise_02_variables_and_types()
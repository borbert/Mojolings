#==============================================================================
# EXERCISE 09: Python Interoperability - Best of Both Worlds
#==============================================================================
#
# BACKGROUND:
# One of Mojo's killer features is seamless Python interoperability.
# You can import any Python library and use it directly in Mojo code.
# This means you get the entire Python ecosystem (NumPy, TensorFlow,
# etc.) while having the option to optimize critical parts with Mojo.
#
# KEY CONCEPTS:
# - Python module imports in Mojo
# - Type conversion between Python and Mojo
# - Leveraging existing Python libraries
# - Gradual migration strategy (Python → Mojo)
# - Performance hybrid approach
#
# LEARNING OBJECTIVES:
# - Learn Python-Mojo interoperability
# - Import and use Python libraries
# - Understand type conversions
# - See practical hybrid programming patterns
#
# TASK: Use Python's NumPy from within Mojo code

fn exercise_09_python_interop():
    """
    Exercise 9: Python interoperability and ecosystem integration.
    
    Mojo's Python compatibility means you can immediately leverage
    the vast Python ecosystem while gradually optimizing performance-
    critical parts with native Mojo code.
    """
    
    print("🔥 Exercise 9: Python Interoperability")
    print("=" * 40)
    
    try:
        from python import Python
        
        # TODO: Import math module and use it
        # HINT: Use Python.import_module() to import Python modules  
        var math = Python.import_module("____")  # <-- Replace with "math"
        
        # Use Python math functions
        var pi = math.pi
        print("Pi from Python:", pi)
        
        # TODO: Calculate square root using Python's math.sqrt
        # HINT: Use math.sqrt(16)
        var sqrt_result = math.sqrt(____)  # <-- Replace with 16
        print("Square root of 16:", sqrt_result)
        
        # TODO: Calculate sine of pi/2
        # HINT: Use math.sin(pi/2)
        var sin_result = math.sin(____ / 2)  # <-- Replace with pi
        print("Sin(π/2):", sin_result)
        
        # Work with Python lists
        var py_list = Python.evaluate("[1, 2, 3, 4, 5]")
        print("Python list:", py_list)
        
        # TODO: Access an element from the Python list
        # HINT: Use py_list[index]
        var first_element = py_list[____]  # <-- Replace with 0
        print("First element:", first_element)
        
        # TODO: Get the length of the Python list
        # HINT: Use len(py_list)
        var list_length = len(____)  # <-- Replace with py_list
        print("List length:", list_length)
        
        print("\n📊 Interoperability Benefits:")
        print("  • Access to entire Python ecosystem")
        print("  • Gradual migration from Python to Mojo")
        print("  • Hybrid performance optimization")
        print("  • Zero friction for Python developers")
        
        print("\n💡 Common Integration Patterns:")
        print("  • Use Python for data loading, Mojo for computation")
        print("  • Python for prototyping, Mojo for production")
        print("  • Python libraries + Mojo performance kernels")
        print("  • Existing Python codebase + new Mojo modules")
        
    except:
        print("📝 Python module not available")
        print("   This demonstrates the integration pattern:")
        print("   • Import Python modules with Python.import_module()")
        print("   • Call Python functions directly from Mojo")
        print("   • Convert between Python and Mojo types seamlessly")
        
        print("\n✅ Key Concept: Zero-friction Python integration")
    print()

def main():
    exercise_09_python_interop()

# SOLUTIONS for reference:
# math module: Replace ____ with "math"
# sqrt: Replace ____ with 16
# sin: Replace ____ with pi
# list access: Replace ____ with 0
# list length: Replace ____ with py_list
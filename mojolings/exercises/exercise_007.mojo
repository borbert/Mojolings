#==============================================================================
# EXERCISE 07: Design Patterns - Singleton Pattern
#==============================================================================
#
# BACKGROUND:
# Design patterns are reusable solutions to common programming problems.
# The Singleton pattern ensures only one instance of a class exists globally.
# Mojo's type system and memory safety make implementing patterns easier
# and more reliable than traditional languages.
#
# KEY CONCEPTS:
# - Global state management
# - Optional types (handling None values safely)
# - Static variables in functions
# - Memory-safe global access
# - Thread safety considerations
#
# LEARNING OBJECTIVES:
# - Implement a classic design pattern in Mojo
# - Learn global variable management
# - Understand Optional types and None handling
# - Practice singleton initialization
#
# TASK: Complete the singleton implementation
# INFO: the singleton pattern is not a great patteern to implement in mojo.
#       You may need to rethink much of this code to get the expected result.

fn exercise_07_singleton_pattern():
    """
    Exercise 7: Implementing the Singleton design pattern.
    
    Design patterns are essential for building maintainable software.
    Mojo's type safety and memory management make patterns more
    reliable than in traditional systems languages.
    """
    
    print("🔥 Exercise 7: Singleton Pattern")
    print("=" * 40)
    
    # hint:  have you seen this before?
    struct Config:
        """Application configuration - should only exist once."""
        var host: String
        var port: Int
        
        fn __init__(inout self, host: String, port: Int):
            self.host = host
            self.port = port
    
    # TODO: Implement singleton accessor function
    def get_config() -> Config:
        """Get or create the singleton config instance."""
        # This is a simplified singleton - in production you'd want thread safety
        # TODO: Return a Config with host="localhost" and port=8080
        return Config(____,  ____)  # <-- Fill in the values
    
    fn get_config() -> Config:
        """Get the singleton config instance, creating it if needed."""
        # TODO: Implement singleton logic
        # HINT: Check if _singleton is None, create if needed, return the instance
        
        if _singleton is None:
            # Create the singleton instance
            _singleton = Config("localhost", 8080)
        
        # TODO: Return the singleton instance
        # HINT: Use _singleton.value()[] to get the value from Optional
        return ____  # <-- Replace with _singleton.value()[]
    
    # Test the singleton
    let c1 = get_config()
    let c2 = get_config()
    
    print("First instance - Host:", c1.host, "Port:", c1.port)
    print("Second instance - Host:", c2.host, "Port:", c2.port)
    print("Both should be identical: localhost 8080")
    
    # Demonstrate that it's truly a singleton
    print("\n📊 Singleton Verification:")
    print("  • Both calls return the same configuration")
    print("  • Only one Config object is ever created")
    print("  • Global state is safely managed")
    print("  • Memory-safe access with Optional types")
    
    print("\n💡 Use Cases:")
    print("  • Database connections")
    print("  • Logging systems") 
    print("  • Application settings")
    print("  • Hardware device managers")
    print()

# SOLUTION for reference:
fn get_config_solution() -> Config:
    if _singleton is None:
        _singleton = Config("localhost", 8080)
    return _singleton.value()[]
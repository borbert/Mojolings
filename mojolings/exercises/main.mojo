#!/usr/bin/env mojo
"""
Mojo-lings: Complete Tutorial Entry Point
=========================================

This is the main entry point for the Mojo-lings tutorial system.
It provides access to all exercises and guides you through learning Mojo.

USAGE:
    mojo main.mojo              # Show tutorial menu
    mojo main.mojo modern       # Run modern exercises guide  
    mojo main.mojo legacy       # Run legacy exercises guide
    mojo main.mojo help         # Show detailed help

RECOMMENDATION:
    Start with the modern exercises (001-010) as they use current Mojo 25.4 syntax
    and are designed to work reliably.

LEARNING PATH:
    Foundation (001-006): Core language concepts
    Intermediate (007-010): Collections, errors, interop, basic performance
    Advanced (011-022): SIMD, parallelization, GPU, cryptography, ML
"""

from sys import argv


def print_banner():
    """Print the main banner."""
    print("🔥" * 70)
    print("  MOJO-LINGS: Learn Mojo Through Hands-On Exercises")
    print("  Inspired by Ziglings - Fix code, learn concepts!")
    print("🔥" * 70)


def show_main_menu():
    """Show the main tutorial menu."""
    print_banner()

    print("\n🎯 TUTORIAL OPTIONS")
    print("=" * 50)

    print("\n🌟 FOUNDATION EXERCISES (Start Here)")
    print("  • Basic Mojo concepts and syntax")
    print("  • exercise_001.mojo through exercise_010.mojo")
    print("  • Modernized for Mojo 25.4")
    print("  • Command: mojo exercises/main.mojo modern")

    print("\n⚡ ADVANCED EXERCISES (High Performance)")
    print("  • SIMD, parallelization, GPU programming")
    print("  • exercise_011.mojo through exercise_023.mojo")
    print("  • Recently modernized for Mojo 25.4!")
    print("  • Command: mojo exercises/main.mojo legacy")

    print("\n🚀 QUICK START:")
    print("  1. mojo exercises/exercise_001.mojo  # Start with first exercise")
    print("  2. Look for TODOs marked with ????")
    print("  3. Fix the code and run again")
    print("  4. Progress through exercises in order")

    print("\n💡 For detailed guidance:")
    print("  mojo exercises/main.mojo help")


def show_modern_exercises():
    """Show foundation exercises guide."""
    print("\n🌟 FOUNDATION EXERCISES (Mojo 25.4 Compatible)")
    print("=" * 60)

    print("\n📚 Available Exercises:")
    print("  1. exercise_001.mojo - Hello, Mojo!")
    print("  2. exercise_002.mojo - Variables and Types")
    print("  3. exercise_003.mojo - Functions")
    print("  4. exercise_004.mojo - Structs")
    print("  5. exercise_005.mojo - Traits")
    print("  6. exercise_006.mojo - Ownership")
    print("  7. exercise_007.mojo - Design Patterns")
    print("  8. exercise_008.mojo - Strategy Pattern")
    print("  9. exercise_009.mojo - Python Interop")
    print("  10. exercise_010.mojo - Basic Performance & SIMD")

    print("\n🎯 How to Use:")
    print("  1. Start with: mojo exercises/exercise_001.mojo")
    print("  2. Read the exercise description and objectives")
    print("  3. Find TODOs marked with ???? and fix them")
    print("  4. Run the exercise to test your solution")
    print("  5. Move to the next exercise")

    print("\n✅ Benefits of Foundation Exercises:")
    print("  • Modernized for Mojo 25.4 syntax")
    print("  • Comprehensive documentation")
    print("  • Progressive difficulty")
    print("  • Core language concepts")
    print("  • Ziglings-style learning")

    print("\n🚀 Start your journey: mojo exercises/exercise_001.mojo")


def show_advanced_exercises():
    """Show advanced/legacy exercises status."""
    print("\n⚡ ADVANCED EXERCISES (Recently Modernized!)")
    print("=" * 60)

    print("The advanced exercises have been modernized for Mojo 25.4!")
    print("These cover high-performance programming concepts.")

    print("\n📊 Exercise Status:")
    print("  ✅ Foundation Working:")
    print("    • exercise_001.mojo - Hello, Mojo!")
    print("    • exercise_002.mojo - Variables and Types")
    print("    • exercise_003.mojo - Functions")
    print("    • exercise_004.mojo - Structs")
    print("    • exercise_005.mojo - Traits")
    print("    • exercise_006.mojo - Ownership")
    print("    • exercise_007.mojo - Design Patterns")
    print("    • exercise_008.mojo - Strategy Pattern")
    print("    • exercise_009.mojo - Python Interop")
    print("    • exercise_010.mojo - Basic Performance & SIMD")

    print("\n  🚀 Advanced Performance (Modernized!):")
    print("    • exercise_011.mojo - Parallelism")
    print("    • exercise_012.mojo - SIMD Vectorization")
    print("    • exercise_013.mojo - Vectorize Operations")
    print("    • exercise_014.mojo - Parallelization")
    print("    • exercise_015.mojo - Tensor Operations")
    print("    • exercise_016.mojo - GPU Kernel Programming")
    print("    • exercise_017.mojo - Memory Optimization")
    print("    • exercise_018.mojo - Advanced SIMD Algorithms")
    print("    • exercise_019.mojo - Heterogeneous Computing")
    print("    • exercise_020.mojo - Performance Benchmarking")
    print("    • exercise_021.mojo - Matrix Multiplication")
    print("    • exercise_022.mojo - Neural Network Implementation")
    print("    • exercise_023.mojo - Cryptography and Blockchain")

    print("\n💡 Ready to Run Advanced Exercises:")
    print("  You can now try these exercises:")
    print("  • mojo exercises/exercise_011.mojo  # Parallelism")
    print("  • mojo exercises/exercise_012.mojo  # SIMD Vectorization")
    print("  • mojo exercises/exercise_013.mojo  # Vectorize Operations")
    print("  • mojo exercises/exercise_023.mojo  # Cryptography")

    print("\n🎯 Learning Path:")
    print("  1. Complete modern exercises (001-010) first")
    print("  2. Then tackle advanced exercises (011-023)")
    print("  3. Each builds advanced performance skills")

    print("\n🔥 New Features:")
    print("  • Updated to Mojo 25.4 syntax")
    print("  • Fixed memory management patterns")
    print("  • Current SIMD and GPU programming")
    print("  • Production-ready algorithms")


def show_help():
    """Show detailed help information."""
    print("\n💡 MOJO-LINGS HELP")
    print("=" * 50)

    print("\n🎯 What is Mojo-lings?")
    print("  Mojo-lings is a hands-on tutorial for learning Mojo programming.")
    print("  Inspired by Ziglings, you learn by fixing broken code.")

    print("\n🔥 How does it work?")
    print("  1. Each exercise has intentional errors marked with ????")
    print("  2. You replace ???? with the correct code")
    print("  3. Run the exercise to test your solution")
    print("  4. Read the explanations and move to the next exercise")

    print("\n🌟 Foundation vs Advanced Exercises:")
    print("  • Foundation (001-010): Current Mojo 25.4 syntax, beginner-friendly")
    print("  • Advanced (011-023): High-performance features, expert-level")

    print("\n🚀 Getting Started:")
    print("  1. mojo exercises/exercise_001.mojo  # Start with the first exercise")
    print("  2. Read the comments and objectives")
    print("  3. Find lines with ????")
    print("  4. Replace ???? with correct code")
    print("  5. Run the exercise again")
    print("  6. Move to the next exercise")

    print("\n📚 Complete Learning Path:")
    print("  Foundation (001-010): Variables, functions, structs, traits, ownership, basic SIMD")
    print("  Advanced (011-023): SIMD, GPU, parallelization, ML, cryptography")
    print("  Total time: ~20-30 hours for complete mastery")

    print("\n🎯 Tips for Success:")
    print("  • Read the BACKGROUND and LEARNING OBJECTIVES")
    print("  • Don't skip exercises - each builds on the previous")
    print("  • Experiment with the code")
    print("  • Check the HINTS provided")
    print("  • Start with foundation exercises before advanced")

    print("\n🔥 Ready to start? Run: mojo exercises/exercise_001.mojo")


def main():
    """Main entry point."""
    var args = argv()

    if len(args) > 1:
        var command = args[1]

        if command == "modern":
            show_modern_exercises()
        elif command == "legacy" or command == "advanced":
            show_advanced_exercises()
        elif command == "help":
            show_help()
        else:
            print("❌ Unknown command:", command)
            print("💡 Valid commands: modern, legacy, help")
            return
    else:
        show_main_menu()

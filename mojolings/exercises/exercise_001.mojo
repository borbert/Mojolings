# Enhanced Mojo-lings: Complete Foundation Tutorial
#
# This comprehensive tutorial teaches Mojo from the ground up, building toward
# high-performance AI/ML and systems programming. Each exercise is carefully
# designed to introduce core concepts while building toward advanced applications.
#
# Learning Philosophy: Fix broken code, understand concepts, see immediate results
#

from collections import List
from memory import UnsafePointer
from python import Python
from algorithm import parallelize
from sys.info import simdwidthof
import time

# ==============================================================================
# EXERCISE 01: Hello, Mojo! - Your First Mojo Program
# ==============================================================================
#
# BACKGROUND:
# Every programming language journey starts with "Hello, World!" Mojo uses
# Python-compatible syntax for basic operations, making it easy for Python
# developers to get started. However, under the hood, Mojo compiles to
# highly optimized machine code.
#
# LEARNING OBJECTIVES:
# - Understand Mojo's Python compatibility
# - Learn basic print statement syntax
# - See how simple Mojo programs work
#
# TASK: Fix the broken print statement to display "Hello, Mojo!"


fn exercise_01_hello_mojo():
    """
    Exercise 1: Basic program structure and output.

    This exercise teaches the fundamental structure of a Mojo program and
    how to produce output. While this looks exactly like Python, Mojo
    compiles this to optimized machine code.
    """

    print("🔥 Exercise 1: Hello, Mojo!")
    print("=" * 40)

    # TODO: Fix this print statement to say "Hello, Mojo!"
    # HINT: Replace the blank with the correct word
    print("Hello, ____!")  # <-- Replace ____ with "Mojo"

    print("✅ Once fixed, this should print 'Hello, Mojo!'")
    print()


# SOLUTION for reference:
fn exercise_01_hello_mojo_solution():
    print("Hello, Mojo!")

def main():
    exercise_01_hello_mojo()

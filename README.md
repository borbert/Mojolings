## Mojo-Lings: A Hands-On Mojo Tutorial Inspired by Ziglings

Welcome to Mojo-Lings! This tutorial is modeled after the Ziglings approach: you’ll learn Mojo by fixing and extending small, focused code snippets. Each exercise targets a core language feature, with broken or incomplete code and detailed comments. Your job is to read, repair, and run each one—gaining practical Mojo mastery as you go.

**_Keep in mind the problem might be code only valid in previous versions of Mojo. This will help you learn what the most recent syntax and conventions._**

### Assumptions

- You have a decent understanding of [Python](https://docs.python.org/3/).
- You have read about [Mojo](https://www.modular.com/mojo) and have a general understanding of what it is and [why you would use it](https://docs.modular.com/mojo/why-mojo).
- You know how to get to the Modular docs and [Mojo Manual](https://docs.modular.com/mojo/manual/)
- You have tried and succesfully ran the [Get Started with Mojo](https://docs.modular.com/mojo/manual/get-started) section of the docs.
- I used [pixi](https://docs.modular.com/mojo/manual/get-started) as recomended in the Mojo documentation. I expect that you can use this to setup the environment.

### How to Use This Tutorial

- Read the intro and comments for each exercise.
- Fix or complete the code as instructed.
- Run your solution and check the output.
- Reflect on what you learned before moving to the next exercise.

## Getting Started

### Prerequisites

Before you begin the exercises, make sure you have:

- **Mojo installed** - Follow the [Get Started with Mojo](https://docs.modular.com/mojo/manual/get-started) guide
- **Git installed** - For cloning the repository
- **Basic Python knowledge** - Understanding of Python syntax and concepts

### Step-by-Step Setup Instructions

#### 1. Install Pixi (If Not Already Installed)

Pixi is the recommended package manager for Mojo projects. Install it using one of these methods:
On macOS/Linux:

```bash
curl -fsSL https://pixi.sh/install.sh | sh
```

On Windows (PowerShell):

```powershell
iwr -useb https://pixi.sh/install.ps1 | iex
```

Alternative package manager installations:

```bash
# macOS
brew install pixi

# Windows
winget install prefix-dev.pixi
```

After installation, restart your terminal or run the source command as instructed.

#### 2. Set Up the Environment (Optional but Recommended)

If you want to use pixi for environment management (recommended by Mojo docs):

**_Assumes you have pixi installed!_**

```bash
# Clone the repository
git clone https://github.com/borbert/Mojolings.git

# Navigate directly to the mojolings subdirectory
cd Mojolings/mojolings

# Initialize pixi in the current directory
pixi init . -c https://conda.modular.com/max-nightly/ -c conda-forge

# Install Mojo
pixi add modular

# Start the pixi shell
pixi shell
```

#### 3. Start Learning

```bash
# View tutorial options
mojo exercises/main.mojo

# Start with foundation exercises (recommended)
mojo exercises/main.mojo modern

# Begin with your first exercise
mojo exercises/exercise_001.mojo

# You'll see compilation errors - this is expected!
# Your job is to fix the code marked with ????
```

#### 4. Work Through the Exercises

For each exercise:

1. **Read the exercise description** - Each file has detailed comments explaining the concepts
2. **Find the TODOs** - Look for lines marked with `????` that need to be fixed
3. **Fix the code** - Replace `????` with the correct Mojo syntax
4. **Test your solution** - Run the exercise again to see if it works
5. **Move to the next exercise** - Progress through exercises in order

```bash
# Example workflow:
mojo exercises/exercise_001.mojo  # See the errors
# Edit the file to fix the ????
mojo exercises/exercise_001.mojo  # Test your fix
mojo exercises/exercise_002.mojo  # Move to next exercise
```

#### 6. Track Your Progress (Optional)

If you want to save your progress:

```bash
# Fork the repository first (on GitHub), then:
git remote set-url origin https://github.com/YOUR_USERNAME/Mojo-lings.git

# Commit your changes as you progress
git add .
git commit -m "Complete exercise_001: Hello Mojo"
git push origin main
```

## Exercise Structure

- **Foundation Exercises (001-010)**: Core language concepts

  - Variables, functions, structs, traits
  - Ownership, design patterns, Python interop
  - Basic performance optimization

- **Advanced Exercises (011-023)**: High-performance programming
  - SIMD vectorization, parallelization
  - GPU programming, memory optimization
  - Machine learning, cryptography applications

### Running Individual Exercises

```bash
# From the project root directory:
mojo exercises/exercise_001.mojo
mojo exercises/exercise_002.mojo
# ... and so on

# Or navigate to exercises directory:
cd exercises
mojo exercise_001.mojo
mojo exercise_002.mojo
```

### Need Help?

- **Exercise stuck?** Check the comments and hints in each file
- **Mojo syntax questions?** Refer to the [Mojo Manual](https://docs.modular.com/mojo/manual/)
- **Environment issues?** Review the [Mojo installation guide](https://docs.modular.com/mojo/manual/get-started)
- **Tutorial navigation?** Run `mojo exercises/main.mojo help`

## Exercises

- **Exercise 001: Hello, Mojo!** - Your first Mojo program and basic syntax
- **Exercise 002: Variables and Types** - Static vs dynamic typing with `var`
  and `let`
- **Exercise 003: Functions** - Understanding `def` vs `fn` functions
- **Exercise 004: Structs and Initialization** - Object-oriented programming
  basics
- **Exercise 005: Traits** - Interfaces and polymorphism
- **Exercise 006: Ownership and Borrowing** - Memory safety fundamentals
- **Exercise 007: Design Patterns** - Singleton pattern implementation
- **Exercise 008: Strategy Pattern** - Polymorphic algorithms and sorting
- **Exercise 009: Python Interoperability** - Using Python libraries in Mojo
- **Exercise 010: Basic Performance Optimization** - `def` vs `fn` performance
  comparison
- **Exercise 011: Parallelism** - Concurrent computation with `parallelize`
- **Exercise 012: SIMD Vectorization** - CPU acceleration fundamentals
- **Exercise 013: Vectorize** - Automatic SIMD optimization
- **Exercise 014: Parallelization Redux** - Multi-core processing power
- **Exercise 015: Tensor Operations** - AI/ML accelerated mathematics
- **Exercise 016: GPU Kernel Programming** - GPU programming with `@kernel`
- **Exercise 017: Memory Optimization Patterns** - Advanced memory management
- **Exercise 018: Advanced SIMD Algorithms** - Complex SIMD operations
- **Exercise 019: Heterogeneous Computing** - CPU + GPU coordination
- **Exercise 020: Performance Benchmarking** - Measuring and optimizing
  performance
- **Exercise 021: Real-World AI Application** - High-performance matrix
  multiplication
- **Exercise 022: Neural Network Layer** - Complete AI/ML implementation
- **Exercise 023: Cryptography and Blockchain** - SHA-256 and Merkle trees

### Contributing

We welcome contributions to Mojo-lings! Here's how you can help improve this
tutorial:

### Ways to Contribute

- **Fix bugs or errors** in existing exercises
- **Improve exercise explanations** and comments
- **Add new exercises** covering additional Mojo features
- **Update exercises** for newer Mojo versions
- **Enhance documentation** and setup instructions
- **Report issues** with exercises or setup process

#==============================================================================
# EXERCISE 15: Tensor Operations - AI/ML Accelerated Math
#==============================================================================
#
# BACKGROUND:
# Tensors are multi-dimensional arrays optimized for machine learning workloads.
# In Mojo 25.5, we use List for multidimensional arrays since the Tensor API
# has changed. This exercise teaches you matrix operations using nested Lists.
#
# KEY CONCEPTS:
# - Multi-dimensional arrays using List[List[Type]]
# - Element-wise operations (addition, multiplication)
# - Matrix reduction (summing all elements)
# - 3D array operations for batched processing
#
# LEARNING OBJECTIVES:
# - Create 2D matrices using nested Lists
# - Implement element-wise matrix operations
# - Understand matrix indexing and iteration
# - Practice 3D array manipulation
#
# TASK: Complete the missing matrix operations below!

# In Mojo 25.5, use List for multidimensional arrays
# Tensor API has changed - using List as alternative for this exercise

fn tensor_operations_tutorial():
    # TODO: Create and manipulate 2D arrays (matrix operations)
    
    # Create 2D matrices using List of Lists
    var rows = 3
    var cols = 4
    var matrix_a = List[List[Float32]]()
    var matrix_b = List[List[Float32]]()
    
    # TODO: Initialize matrices with data
    for i in range(rows):
        var row_a = List[Float32]()
        var row_b = List[Float32]()
        for j in range(cols):
            var value = Float32(i * 4 + j)
            row_a.append(???)  # <-- Add the value to row_a
            row_b.append(??? * 2.0)  # <-- Add value * 2.0 to row_b
        matrix_a.append(???)  # <-- Add row_a to matrix_a
        matrix_b.append(???)  # <-- Add row_b to matrix_b
    
    # TODO: Fix matrix operations
    # Element-wise addition
    var sum_matrix = List[List[Float32]]()
    for i in range(rows):
        var sum_row = List[Float32]()
        for j in range(cols):
            # TODO: Add corresponding elements from matrix_a and matrix_b
            sum_row.append(???[i][j] + ???[i][j])  # <-- Fix the matrix indexing
        sum_matrix.append(???)  # <-- Add sum_row to sum_matrix
    
    # TODO: Implement matrix sum reduction
    fn matrix_sum(matrix: List[List[Float32]]) -> Float32:
        var total: Float32 = 0.0
        
        # TODO: Sum all elements in the matrix
        for i in range(len(matrix)):
            for j in range(len(matrix[i])):
                total += ???[i][j]  # <-- Add matrix element to total
        
        return total
    
    # Test the operations
    print("Matrix A (3x4):")
    for i in range(rows):
        print("  Row", i, ":")
        for j in range(cols):
            print("   ", matrix_a[i][j])
    
    print("\\nMatrix B (3x4):")
    for i in range(rows):
        print("  Row", i, ":")
        for j in range(cols):
            print("   ", matrix_b[i][j])
    
    print("\\nSum Matrix (A + B):")
    for i in range(rows):
        print("  Row", i, ":")
        for j in range(cols):
            print("   ", sum_matrix[i][j])
    
    print("\\nTotal sum of A:", matrix_sum(matrix_a))

# ADVANCED: Create a 3D array for batched operations
fn advanced_tensor_operations():
    # TODO: 3D array: batch_size=2, height=3, width=4
    var batch_size = 2
    var height = 3
    var width = 4
    var tensor_3d = List[List[List[Float32]]]()
    
    # TODO: Initialize 3D array
    for batch in range(batch_size):
        var batch_data = List[List[Float32]]()
        for row in range(height):
            var row_data = List[Float32]()
            for col in range(width):
                var value = Float32(batch * 100 + row * 10 + col)
                row_data.append(???)  # <-- Add value to row_data
            batch_data.append(???)  # <-- Add row_data to batch_data
        tensor_3d.append(???)  # <-- Add batch_data to tensor_3d
    
    # TODO: Fill 3D tensor and compute batch statistics
    print("3D tensor shape: (", batch_size, ",", height, ",", width, ")")
    print("Sample values from batch 0:")
    for row in range(height):
        print("  Row", row, ":")
        for col in range(width):
            # TODO: Print the 3D tensor element at [batch=0][row][col]
            print("   ", ???[0][???][???])  # <-- Fix the 3D indexing
    
def main():
    tensor_operations_tutorial()
    advanced_tensor_operations()

# HINTS:
# =====
# 1. List.append(value) adds an element to the end of the list
# 2. Matrix indexing: matrix[row][col] accesses element at (row, col)
# 3. 3D array indexing: tensor[batch][row][col] accesses element at (batch, row, col)
# 4. Element-wise addition: result[i][j] = matrix_a[i][j] + matrix_b[i][j]
# 5. Matrix reduction: sum all elements using nested loops
# 6. List[List[Type]] creates a 2D array, List[List[List[Type]]] creates a 3D array
#
# EXPECTED OUTPUT:
# ===============
# Matrix A: 3x4 matrix with values 0, 1, 2, 3... (first row), 4, 5, 6, 7... (second row)
# Matrix B: Same as A but each element multiplied by 2
# Sum Matrix: Element-wise addition of A and B
# Total sum of A: Sum of all elements in matrix A
# 3D tensor: 2 batches, each with 3x4 matrix
#
# TROUBLESHOOTING:
# ===============
# - If you get indexing errors: Check that you're using the correct variable names
# - If append() fails: Make sure you're appending the right type (Float32, List[Float32], etc.)
# - If 3D indexing fails: Remember the order is [batch][row][col]
#
# SOLUTIONS:
# =========
# 1. row_a.append(value), row_b.append(value * 2.0)
# 2. matrix_a.append(row_a), matrix_b.append(row_b)
# 3. sum_row.append(matrix_a[i][j] + matrix_b[i][j])
# 4. sum_matrix.append(sum_row)
# 5. total += matrix[i][j]
# 6. row_data.append(value), batch_data.append(row_data), tensor_3d.append(batch_data)
# 7. print("   ", tensor_3d[0][row][col])
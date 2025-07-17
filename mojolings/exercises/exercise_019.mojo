# ==============================================================================
# EXERCISE 19: Heterogeneous Computing - CPU + GPU Coordination
# ==============================================================================
#
# Orchestrating work between CPU and GPU for optimal performance across
# different parts of an algorithm.
#
# In this example, we'll simulate a pipeline where:
# 1. The CPU does some preprocessing on a list of numbers.
# 2. The data is 'transferred' to the GPU (simulated).
# 3. The GPU performs a parallel-friendly computation (e.g., squaring numbers).
# 4. The data is 'transferred' back to the CPU (simulated).
# 5. The CPU does some postprocessing (e.g., summing the results).


def print_list(label, lst):
    print(label, end=" ")
    for i in range(len(lst)):
        if i > 0:
            print(",", end=" ")
        print(lst[i], end="")
    print("")


def heterogeneous_pipeline():
    # Example data: a list of numbers
    var data = [1, 2, 3, 4, 5]
    print_list("Initial data (CPU):", data)

    # CPU-intensive preprocessing: double each number (simulate branching logic)
    def cpu_preprocess(input):
        var out = []
        for x in input:
            # Simulate some complex logic
            if x % 2 == 0:
                out.append(x * 2)
            else:
                out.append(x * 3)
        print_list("After CPU preprocessing:", out)
        return out

    # Simulate data transfer to GPU
    def transfer_to_gpu(input):
        print("Transferring data to GPU...")
        # In real code, this would use a GPU array or buffer
        return input

    # GPU-intensive computation: square each number (parallelizable)
    def gpu_compute(input):
        var out = []
        for x in input:
            out.append(x * x)
        print_list("After GPU computation:", out)
        return out

    # Simulate data transfer back to CPU
    def transfer_to_cpu(input):
        print("Transferring data back to CPU...")
        return input

    # CPU-intensive postprocessing: sum the numbers
    def cpu_postprocess(input):
        var result = 0
        for x in input:
            result += x
        print("After CPU postprocessing (sum):", result)
        return result

    # Orchestrate the pipeline
    data = cpu_preprocess(data)
    data = transfer_to_gpu(data)
    data = gpu_compute(data)
    data = transfer_to_cpu(data)
    var final_result = cpu_postprocess(data)

    print("Heterogeneous pipeline completed! Final result:", final_result)


def main():
    heterogeneous_pipeline()

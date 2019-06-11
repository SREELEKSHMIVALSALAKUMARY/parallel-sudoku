# Parallel Sudoku

This is a java implementation of a parallel sudoku solver (it computes every possible solution) based on the fork-join paradigm. It also includes a sequential backtracking implementation in order to make benchmarking and speed-up analysis possible.

The program takes text files representing a sudoku grid as input:

    .....2...
    ..4...75.
    73.9..6..
    3.5..8...
    .6.1...85
    ..92.....
    .9..4.26.
    2.....17.
    ...3.....

And outputs in the following order:

- The solution space
- The completion percentage of the input grid
- The number of possible solutions to the sudoku

Some benchmark graphs:

![Execution time vs Solution space](/benchmarks/time_space.png)
![Speedup vs Number of processors](/benchmarks/speedup.png)

# Usage

Compile the main class as follows:

    javac Sudoku.java

Run any test by passing a text file in the specified format as parameter:

    java Sudoku $(PATH_TO_FILE)

Or use the grader.sh bash script to test the algorithm on any file present in the tests folder:

    ./grader.sh

# Features

- Fork-Join parallelization
- Sequential cutoff optimization
- Thread-halving optimization
- Bit masks optimization on candidates selection

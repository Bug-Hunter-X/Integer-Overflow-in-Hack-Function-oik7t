# Integer Overflow Bug in Hack

This repository demonstrates a subtle integer overflow bug in a simple Hack program. The `bar` function calculates `(x + 1) * 2`. If `x` is sufficiently large, this calculation might result in an integer overflow, producing an incorrect result.

## Bug Description

The bug lies in the lack of overflow checking.  Hack's integer type has a limited range, and exceeding this range leads to unexpected behavior (typically wrapping around).

## How to Reproduce

1. Compile and run `bug.hack`.
2. Observe the output for various inputs, including large positive integers.
3. Note any discrepancies between the expected and actual outputs.

## Solution

The `bugSolution.hack` file shows a possible fix, which includes adding checks for potential overflow before the operations that might cause it.  Alternatively, using a larger integer type (if available) might also solve the problem.
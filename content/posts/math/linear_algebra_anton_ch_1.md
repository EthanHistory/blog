---
title: "Linear_algebra_anton_ch_1-2"
date: 2023-04-09T18:31:36Z
draft: true
---

# Systems of Linear Equations and Matrixces

### Matrices
- Tool for developing programs to solve linear equations
- Mathematically rich and effective presentation to deal with linear equations

- linear equation of n variables
linear combination of variables and their coefficients in the left and a constant in the right

- homogeneous linear equation
linear equation where the constant term is zero.

- system of linear equations (linear system)
A finite set of linear equations

- Unknowns
variables

- Solution
the substitution for unknowns that meets the equations

- Geometrical understanding of the number of solution of linear system.

- Parametric equations

- Augmented matrix
matrix form representation of linear system


# Gaussian Elimination
A systematic procedure for solving systems of linear equations.

- row echelon form
    1. one and only leading 1 in each row
    2. rows with all-zeros are placed in the lowest rows.
    3. The higher the row is, The more the leading one are placed in the left side.

- reduced row echelon form
row echelon form + at most leading 1 in each column

- leading 1
number "1" in augmented matrix form which are present first from the left side in a row.

inconsistent / consistent system
if the number of solution is more than one, the system is called consistent, otherwise, it is called inconsistent.

- leading variables / free variables
the variables which have leading ones, otherwise they are free variables.

- general solution
a set of parametric equations from which all solutions can be obtained by assigning numerical values to the parameters


- Gauss-Jordan elimination
    (Forward phase to make row enchelon form)
    - step 1: Locate the leftmost column that doesn't consist entirely of zeros.
    - step 2: Interchange the top row with another row, if necessary, to bring a nonzero entry to the top of the column found in Step 1.
    - step 3: If the entry that is now at the top of the column found in Step 1 is a, multiplky the first row by 1/a in order to introduce a leading 1.
    - step 4: Add suitable multiples of the top row to the rows below so that all entires below the leading 1 become zeros.
    - step 5: Loop step from 1 to 4 again on the submatrix except the top row until you build row echelon form entirly.

    (Backward phase to make reduced row enchelon form)
    - step 6: Beginning with the last nonzero row and working upward, add suitable multiples of each row to the rows above to introduce zeros above the leading 1's.
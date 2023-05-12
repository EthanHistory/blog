---
title: "Linear_algebra_anton_ch_1 5"
date: 2023-04-11T17:38:59Z
draft: true
math: true
---

# Elementary matrices and a method for finding $A^{-1}$

- row operations
    ![](/row_operations.png)

- Matrices A and B are said to be **row equivalent** if either (hence each) can be obtained from the other by a sequence of elementary row operations.
- A matrix E is called an elementray matrix if it can be obtained from an identity matrix by performing a single elementary row operation.

- If the elementary matrix $E$ results from performing a certain row operation on $I_m$ and if A is an $m \times n$ matrix, then the product $EA$ is the matrix that results when this same row operation is performed on A.

For ($m \times n$) matrix A and elementary matrix E ($m \times m$), EA is just performing the row operation on A which was done on E.

- Every elementary matrix is invertible, and the inverse is also an elementary matrix.
$$
E_0E = I, EE_0 = I
$$

- Equivalent Statements
If $A$ is an $n \times n$ matrix, then the following statements are equivalent, that is, all true or all false.

1. A is invertible.
2. Ax = 0 has only the trivial solution.
3. The reduced row echelon form of $A$ is $I_n$
4. A is expressible as a product of elementary matrices.

- A method for inverting matrices
1. Find a sequence of elementary row operations that reduces A to the identity
2. Perform that same sequence of operations on $I_n$ to obtain $A^{-1}$

---
**How about the case where A is singular?**

You would stop inverting algorithm if there is a row of zeros in the process, that is, A is determined to be singluar

---
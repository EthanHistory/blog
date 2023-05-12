---
title: "Linear_algebra_anton_ch_1 3 and 1-4"
date: 2023-04-09T22:04:00Z
draft: true
math: true
---

# Matrices and Matrix Operations

- matrix  
a rectangular array of numbers

- entries  
the numbers in the array

- matrix equality  
Two matrices are defined to be equal if they have the same size and their corresponding entries are equal.

- Submatrices  
![](/submatrices.png)

- Matrix multiplication  
    1. Elemental-wise  
    ![](/elementalwisematmul.png)
    $$
    AB_{ij} = a_{i1}b_{1j} + a_{i2}b_{2j} + ... + a_{ir}b_{rj}
    $$

    2. column by column
    $$
    AB = A[b_1 b_2 ... b_n] = [Ab_1 Ab_2 ... Ab_n]
    $$

    In case of computing $Ab_i$, you can think of it as linear combination of all column vectors $A_r$ in A with coefficients of $b_i$, which means
    $$
    Ab_i = b_i1A_1 + b_i2A_2 + ... + b_irA_r
    $$

    3. row by row
    $$
    AB = \begin{bmatrix} a_1 \\\ a_2 \\\ ... \\\ a_m \end{bmatrix} B = \begin{bmatrix} a_1B \\\ a_2B \\\ ... \\\ a_mB \end{bmatrix}
    $$

    4. Column-Row Expansion
    Let's define $c_r$ is r-th column vector in A $(m \times r)$ and $r_r$ is r-th row vector in B $(r \times n)$. Then the column-row expansion of AB is,
    $$
    AB = c_1r_1 + c_2r_2 + ... + c_rr_r
    $$

- Matrix Form of a Linear sytstem
Consider a system of $m$ linear equations in $n$ unknowns:  
$$
a_{11}x_1 + a_{12}x_2 + ... + a_{1n}x_n = b_1 \\\
a_{21}x_1 + a_{22}x_2 + ... + a_{2n}x_n = b_2 \\\
... \\\
a_{m1}x_1 + a_{m2}x_2 + ... + a_{mn}x_n = b_m \\\
$$

Since two matrices are equal if and only if their corresponding entries are equal, we can replace the $m$ equations in this system by the single **matrix equation**


$$
\begin{bmatrix} 
a_{11} & a_{12} & ... & a_{1n} \\\
a_{11} & a_{12} & ... & a_{1n} \\\
... & ... & ... & ... \\\
a_{m1} & a_{m2} & ... & a_{mn} \\\
\end{bmatrix}
\begin{bmatrix} 
x_1 \\\
x_2 \\\
... \\\
x_n \\\
\end{bmatrix} =
\begin{bmatrix} 
b_1 \\\
b_2 \\\
... \\\
b_m \\\
\end{bmatrix}
$$

We can designate each matrix in the system for $A$, $x$, and $b$.
$$
Ax = b
$$

- If R is the reduced row echelon form of an $n \times n$ matrix A, then either R has a row of zeros or R is the identity matrix $I_n$.
If R doesn't have any zero rows, then R should have $n$ leading 1. The only one way to place all the leading 1 is making it identity matrix.


# Inverses; ALgebraic properties of matrices

- A square matrix with a row or column of zeros is singular.
Consider $n \times n$ matrix A and assume it has a inverse matrix B. Then lets say $c1$, $c2$, $0$ is the column vectors of A. By using the row-by-row multiplication rule, it becomes obvious that A can not have it's inverse with any matrix B.
$$
BA = B
\begin{bmatrix} 
c_1 & c_2 & 0
\end{bmatrix}=
\begin{bmatrix} 
Bc_1 & Bc_2 & 0
\end{bmatrix}
$$

- If $B$ and C are both inverses of the matrix A, then B = C
it means that a matrix A has only one inverse of it if it has any.

- If A and B are invertible matrices with the same size, then AB is invertible and
$$
(AB)^{-1} = B^{-1}A^{-1}
$$

- a matrix polynomial in A ($n \times n$)
$$
p(A) = a_0I + a_1A + a_2A^2 + ... + a_mA^m
$$

- polynomials in a square matrix are commutative  
Powers of a square matrix commute.
Therefore, for any polynomials $p_1$ and $p_2$ and square matrix A,
$$
p_1(A)p_2(A) = p_2(A)p_1(A)
$$

- If $A$ is an invertible matrix, then $A^T$ is also invertible and
$$
(A^T)^{-1} = (A^{-1})^T
$$
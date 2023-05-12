---
title: "Linear_algebra_anton_ch_2"
date: 2023-04-26T16:12:51Z
draft: true
math: true
---

# Determinants

## Inductive definition of determinants

### Determinants of two order matrixces
For a $2 \times 2$ matrix $A$,
$$
A = \begin{bmatrix} 
a_{11} && a_{12}
\\\ 
a_{21} && a_{22}
\end{bmatrix}
$$

The determinant of A is,
$$
det(A) = det \begin{bmatrix} 
a_{11} && a_{12}
\\\ 
a_{21} && a_{22}
\end{bmatrix} = a_{11}a_{22} - a_{12}a_{21}
$$

### Minor and Cofactor
Let's say $A$ is a square matrix.  
- **Minor of entry $a_{ij}$ ($M_{ij}$)** 
the determinant of the submatrix that remains after the $i$th row and $j$th column are deleted from $A$.
![](/minor_example.png)
- **Cofactor of entry $a_{ij}$ ($C_{ij}$)**  
The number $(-1)^{i+j}M_{ij}$


### Deriving determinant from cofactor expansions
If $A$ is an $n \times n$ matrix, then the number obtained by multiplying the entries in any row or column of A by the corresponding cofactors and adding the resulting products is called the **determinant of A**, and the sums themselves are called **cofactor expansions of A**. That is,
$$
det(A) = a_{1j}C_{1j} + a_{2j}C_{2j} + ... + a_{nj}C_{nj} \\\
det(A) = a_{i1}C_{i1} + a_{i2}C_{i2} + ... + a_{in}C_{in}
$$

### Smart choice of row or column in cofactor expansions
As explained in the previous section, you can calculate the determinant of a matrix using a cofactor expansion of any row or column. One of easy way to do that is selecting a row or column which has the most zeros in its elements; The cofactors of the zero elements will become also canceled by the zero elements.

### Determinant of triangular matrices

By using the trick we have learned from the previous section, we can easily derive the determinant of triangular matrices.

For example, let's calculate the determinant of a $4 \times 4$ lower triangular matrix A.

$$
A = \begin{bmatrix} 
a_{11} && 0 && 0 && 0
\\\ 
a_{21} && a_{22} && 0 && 0
\\\
a_{31} && a_{32} && a_{33} && 0
\\\
a_{41} && a_{42} && a_{43} && a_{44}
\end{bmatrix}
$$

If you calculate cofactor expensions along the first row,

$$
det(A) = det \begin{bmatrix} 
a_{11} && 0 && 0 && 0
\\\ 
a_{21} && a_{22} && 0 && 0
\\\
a_{31} && a_{32} && a_{33} && 0
\\\
a_{41} && a_{42} && a_{43} && a_{44}
\end{bmatrix}
= a_{11} \begin{bmatrix} 
a_{22} && 0 && 0
\\\
a_{32} && a_{33} && 0
\\\
a_{42} && a_{43} && a_{44}
\end{bmatrix}
$$

Again, choosing the first row of the submatrix, you would inductively recognize that the final result is the trace of the matrix $A$
$$
det(A) = trace(A) = a_{11}a_{22}a_{33}a_{44}
$$

Note that tt also applies to identity matrices, upper triangular matrices.

### Determinants of matrices with zero row or zero column

Let $A$ be a square matrix. If $A$ has a row of zeros or a column of zeros, then $det(A) = 0$

### Determinant of the transposed matrix.

Let $A$ be a square matrix. Then $det(A) = det(A^T)$


## Evaluating determinants by row reduction

In this section, I will explain how to evaluate a determinant by reducing the associated
matrix to row echelon form. In general, this method requires less computation than
cofactor expansion and hence is the method of choice for large matrices.

### Determinant after elementary row operations

Recall the [row operations](../linear_algebra_anton_ch_1-5/) we talk about in echelon form. Let's each elementary matrix of all row operations be $E_M$, $E_I$, and $E_A$. And we have $n \times n$ matrix $A$.

- $E_M$ (Multiply row $i$ by $k$)  
$$det(E_M A) = k det(A)$$
- $E_I$ (Interchange rows $i$ and $j$)
$$det(E_I A) = - det(A)$$
- $E_A$ (Add c time row $i$ to row $j$)
$$det(E_A A) = det(A)$$

## Determinant of matrix which has proportional rows or columns

If $A$ is a square matrix with two proportional rows or two proportional columns, then $det(A) = 0$. It is easy to understand because you can make a zero column or zero row by adding a row or column multiplied by $k$, which makes the row or coulmn zeros, to the row or column. Since a matrix with any zero row or column has zero determinant, $det(A)$ will be 0.

## Properties of determinants; Cramer's rule
Let's figure out that what properties a $n \times n$ matrix has in terms of determinant.

For the same order ($n \times n$) of square matrices $A$ and $B$
$$
det(kA) = k^ndet(A)
$$

$$
det(A+B) \neq det(A) + det(B)
$$

Let $A$ and $B$ differ only in a single row, say the $r$th, and assume that the $r$ th row of $C$ can be obtained by adding corresponding entries in the $r$th rows of $A$ and $B$. Then
$$
det(C) = det(A) + det(B)
$$

If $E$ is an elementary matrix with the same order, then
$$
det(EB) = det(E)det(B)
$$

A is invertible $\leftrightarrow$ $det(A) \neq 0$.

$$
det(AB) = det(A)det(B)
$$

$$
det(A^{-1}) = \frac{1}{det(A)}
$$

### Adjoint of a matrix
If $A$ is any $n \times n$ matrix and $C_{ij}$ is the cofactor of $a_{ij}$, then the matrix is called the **matrix of cofactors from $A$** and is denoted by $adj(A)$

### Cramer's Rule
If $Ax=b$ is a system of $n$ linear equations in $n$ unknowns such that $det(A) \neq 0$, then the system has a unique solution. This solution is
$$
x_i = \frac{A_i}{A} 
$$
where $A_i$ is the matrix obtained by replacing the entries in the $j$th column of A by the entries in the matrix $b$

### Equivalent Statements
If $A$ is an $n \times n$ matrix, then the following statements are equivalent.

1. $A$ is invertible.
2. $Ax = 0$ has only the trivial solution
3. The reduced row echelon form of $A$ is $I_n$.
4. $A$ can be expressed as a product of elementary matrices.
5. $Ax=b$ is consistent for every $n \times 1$ matrix $b$.
6. $Ax=b$ has exactly one solution for every $n \times 1$ matrix $b$.
7. $det(A) \neq 0$
---
title: "Linear_algebra_anton_ch_1 7"
date: 2023-04-16T06:40:33Z
draft: true
math: true
---

# Diagonal, Triangular, and Symmetric Matrices

## Diagonal matrix
A square matrix in which all the entries off the main diagonal are zero.

$$ D =
\begin{bmatrix} 
d_1 && 0 && ... && 0 && 0 
\\\ 
0 && d_2 && ... && 0 && 0
\\\
... && ... && ... && ... && ...
\\\
0 && 0 && ... && d_{m-1} && 0
\\\
0 && 0 && ... && 0 && d_m
\end{bmatrix}
$$

D is invertible if all the entries in the main diagonal are not zero.
$$ D^{-1} =
\begin{bmatrix} 
1/d_1 && 0 && ... && 0 && 0 
\\\ 
0 && 1/d_2 && ... && 0 && 0
\\\
... && ... && ... && ... && ...
\\\
0 && 0 && ... && 1/d_{m-1} && 0
\\\
0 && 0 && ... && 0 && 1/d_m
\end{bmatrix}
$$

$$ D^k =
\begin{bmatrix} 
d_1^k && 0 && ... && 0 && 0 
\\\ 
0 && d_2^k && ... && 0 && 0
\\\
... && ... && ... && ... && ...
\\\
0 && 0 && ... && d_{m-1}^k && 0
\\\
0 && 0 && ... && 0 && d_m^k
\end{bmatrix}
$$

## Triangular matrix
- lower triangular
A square matrix in which all the entries above the main diagonal are zero.

$$ LowT =
\begin{bmatrix} 
a_{11} && a_{12} && ... && a_{1m-1} && a_{1m}
\\\ 
0 && a_{22} && ... && a_{2m-1} && a_{2m}
\\\
... && ... && ... && ... && ...
\\\
0 && 0 && ... && a_{m-1m-1} && a_{m-1m}
\\\
0 && 0 && ... && 0 && a_{mm}
\end{bmatrix}
$$

- upper triangular
A square matrix in which all the entries below the main diagonal are zero.

$$ UpT =
\begin{bmatrix} 
a_{11} && 0 && ... && 0 && 0
\\\ 
a_{21} && a_{22} && ... && 0 && 0
\\\
... && ... && ... && ... && ...
\\\
a_{m-11} && a_{m-12} && ... && 0 && 0
\\\
a_{m1} && a_{m2} && ... && a_{mm-1} && a_{mm}
\end{bmatrix}
$$

### properties
Let's assume a lower triangular matrix $L$ and a upper triangular matrix $U$
1. $L^T$ is upper triangular, and $U^T$ is lower triangular.
2. $L_1L_2$ is lower triangular, and $U_1U_2$ is upper trriangular.
3. L and U are invertible if and only if its diagonal entries are not zero.
4. L^{-1} is lower triangular and U^{-1} is upper triangular

## Symmetric matrix
A square matrix A which satisfies $A = A^T$

### properties
Let's assume A and B are symmetric matrices and k is any scalar.
1. A^T is symmetric
2. $A+B$ and $A-B$ are symmetric
3. kA is symmetric
4. AB is symmetric if and only if A and B commute, that is AB = BA.
5. if A is an invertible symmetric matrix, then $A^{-1}$ is symmetric

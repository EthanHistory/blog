---
title: "Linear_algebra_anton_ch_1 6"
date: 2023-04-12T00:31:58Z
draft: true
math: true
---

- A system of linear equations has zero, one, or infinitely many solutions. There are no other possibilities

- If A is an invertible $n \times n$ matrix, then for each $n \time 1$ matrix b, the system of equations $Ax=b$ has exactly one solution, namely, $x=A^{-1}b$

- Linear systems with a common coefficient matrix (A)

When it comes to solving multiple linear systems, like below
$$
x_1 = A^{-1}b_1 \\\
x_2 = A^{-1}b_2 \\\
... \\\
x_k = A^{-1}b_k \\\
$$
A efficient way to do that is to form the partitioned matrix,
$$
\begin{bmatrix} A | b_1 | b_2 | ... | b_k \end{bmatrix}
$$
in which the coefficient matrix A is "augmented" by all $k$ of the matrices

- Two more equivalent statements
5. $Ax=b$ is consistent for every $n \times 1$ matrix $b$.
6. $Ax=b$ has exactly one solution for every $n \times 1$ matrix $b$.

- Let $A$ and $B$ be square matrices of the same size. If $AB$ is invertible, then $A$ and $B$ must also be invertible.

First, $Bx = 0$ has only the trivial solution. Otherwise, there is $x_1$ which is not the trivial solution and makes $Bx_1 = 0$. Then it means the system $ABx = 0$ has non-trivial solution, which doesn't make sence.

Second, if $AB$ and $B^{-1}$ are invertible, (AB)B^{-1} must be invertible. $AB$ is invertible by proposition, $B^{-1}$ is invertible since I showed that $B$ is invertible. On the other hand, A can be represented by the product of $AB$ and $B^{-1}$. Applying some operational rules, it is shown that $A$ is also invertible.
$$
(AB)B^{-1} = A(BB^{-1}) = AI = A
$$
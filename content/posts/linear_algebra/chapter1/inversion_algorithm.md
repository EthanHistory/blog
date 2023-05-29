---
title: "Inversion algorithm"
date: 2023-05-15T19:31:02-07:00
draft: true
---

For a square matrix $A$, let's denote the elementary matrices of successive row operations to reduce $A$ as $E_k$ (elemetary matrx for k-th row operation). Then we can find $A$,
$$
A^{-1} = E_k \dotsm E_2 E_1 I_n
$$

# Example
To find $A^{-1}$, we are going to adjoin identity matrix to the right side of $A$ and each row operation to reduce $A$ will also be applied to the right side of $A$. After you reached reduced row echelon form, which will be $I$, you got $A^{-1}$ on the right side. For example, let's say $A$ is,
$$
A = \begin{bmatrix} 
1 && 2 && 3
\\\ 
2 && 5 && 3
\\\
1 && 0 && 8
 \end{bmatrix}
$$

![](/posts/linear_algebra/chapter1/images/inversion_algorithm.png)


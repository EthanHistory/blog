---
title: "Exercise"
date: 2023-06-07T10:45:21+09:00
draft: true
---

# Problem 1-1
![](/posts/linear_algebra/chapter7/images/problem1_1.png)

## Solution
To determine whether a matrix $A$ is orthogonal, {{< tooltip "orthogonal_matrix" "the product of $A$ and $A^T$ must be an identity matrix." >}}
$$
AA^T = \begin{bmatrix} 
1 && 0
\\\ 
0 && -1
 \end{bmatrix}
\begin{bmatrix} 
1 && 0
\\\ 
0 && -1
 \end{bmatrix} =
\begin{bmatrix} 
1 && 0
\\\ 
0 && 1
 \end{bmatrix} = I
$$

$A$ is orthogonal and it's inverse is $A^T$.

# Problem 1-12
Under what conditions will a diagonal matrix be orthogonal?

## Solution
Let's say there is a $n \times n$ diagonal matrix A,
$$
A = \begin{bmatrix} 
a_1 && 0 && \dotsm && 0 && 0
\\\ 
0 && a_2 && \dotsm && 0 && 0
\\\
\dotsm && \dotsm && \dotsm && \dotsm && \dotsm
\\\
0 && 0 && \dotsm && a_{n-1} && 0
\\\
0 && 0 && \dotsm && 0 && a_n
 \end{bmatrix}
$$

For $A$ to be orthogonal, $AA^T$ must be an identity matrix,
$$
AA^T = \begin{bmatrix} 
a_1^2 && 0 && \dotsm && 0 && 0
\\\ 
0 && a_2^2 && \dotsm && 0 && 0
\\\
\dotsm && \dotsm && \dotsm && \dotsm && \dotsm
\\\
0 && 0 && \dotsm && a_{n-1}^2 && 0
\\\
0 && 0 && \dotsm && 0 && a_n^2
 \end{bmatrix} = I
$$

$A$ is a diagonal matrix if each element in the diagonal is 1 or -1.

# Problem 1-13
Let a rectangular x'y'-coordinate system be obtained by rotating a rectangular xy-coordinate system counterclockwise through the angle $\theta = \pi/3$.

(a) Find the x'y'-coordinates of the point whose xy-coordinates are (-2, 6).


(a) Find the xy'-coordinates of the point whose xy-coordinates are (5, 2).

## Solution (a)
Let's calculate the {{< tooltip "standard_matrix" "standard matrix" >}} A of the transformation explained in the problem.


$$
A 
$$
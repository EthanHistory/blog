---
title: "Chapter5"
date: 2023-05-12T16:02:06-07:00
draft: false
---

## Problem 1
![](/posts/linear_algebra/exercise/problem5_1_1.png)

### Solution
1. According to the defnition of {{< tooltip "eigenvalue_eigenvector" "eigenvalue and eigenvector" >}},
$$
Ax = 
\begin{bmatrix} 
1 && 2
\\\ 
3 && 2
\end{bmatrix}
\begin{bmatrix} 
1
\\\ 
-1
\end{bmatrix} =
\begin{bmatrix} 
-1
\\\ 
1
\end{bmatrix} =
-1 \begin{bmatrix} 
1
\\\ 
-1
\end{bmatrix}
$$
Therefore, the corresponding eigenvalue $\lambda$ is -1

## Problem 5 (a)
![](/posts/linear_algebra/exercise/problem5_1_5_(a).png)

### Solution
According to {{< tooltip "characteristic_equation" "characteristic equation" >}} of the matrix in 5-(a),
$$
det \begin{bmatrix} 
\lambda - 1 && 4
\\\ 
2 && \lambda - 3
\end{bmatrix} = \\\
(\lambda - 1)(\lambda - 3) - 8 = \lambda^2 - 4 \lambda - 5 = (\lambda - 5)(\lambda + 1) = 0
$$

Therefore, the eigenvalues are 5 and -1. Next let's calculate the eigenvectors with these eigenvalues. For the eigenvlaue $\lambda$ 5,
$$
\begin{bmatrix} 
1 && 4
\\\ 
2 && 3
\end{bmatrix}x =
\begin{bmatrix} 
1 && 4
\\\ 
2 && 3
\end{bmatrix}
\begin{bmatrix} 
v_1
\\\ 
v_2
\end{bmatrix} =
5 \begin{bmatrix} 
v_1
\\\ 
v_2
\end{bmatrix} \\\
v_1 = v_2 = t \\\
x = t \begin{bmatrix} 
1
\\\ 
1
\end{bmatrix}
$$

With the same procedure, you can calculate the eigenvalue for the eigenvalue -1
$$
x = t\begin{bmatrix} 
-2
\\\ 
1
\end{bmatrix}
$$
The {{< tooltip "eigenspace" "eigenspace" >}} of the matrix is the set of these two eigen vectors which you calculated. Since $\begin{bmatrix} 
1
\\\ 
1
\end{bmatrix}$ and $\begin{bmatrix} 
-2
\\\ 
1
\end{bmatrix}$ are linearly independent, they can be a basis for the eigenspace.

## Problem 17 (b)
![](/posts/linear_algebra/exercise/problem5_1_17_(b).png)

### Solution
According to the definition of {{< tooltip "eigenvalue_eigenvector" "eigenvalue and eigenvector" >}}
$$
D^2(sin \sqrt{w}x) = D(\sqrt{w}cos\sqrt{w}x) = -w sin\sqrt{w}x
$$

Therefore, the function $sin\sqrt{w}x$ is a eigenvector and the corresponding eigenvalue is $-w$. You can derive the eigenvalue for $cos\sqrt{w}x$ with the same procedure.

## Problem 2-1
![](/posts/linear_algebra/exercise/problem5_2_1.png)

Since $A$ and $B$ have different determinants,
$$
det(A) = -1 \\\
det(B) = -2
$$
They are not similar matrices.

# Problem 2-5 and 2-9
![](/posts/linear_algebra/exercise/problem5_2_5.png)

## Solution 2-5
According to the {{< tooltip "characteristic_equation" "characteristic equation" >}} of $A$,
$$
det(\lambda I - A) = \begin{vmatrix} 
\lambda -1 && 0
\\\ 
6 && \lambda + 1
\end{vmatrix} = (\lambda - 1)(\lambda + 1)= 0
$$

The eigenvalues are 1 and -1. The corresponding eigenvector is obtained from the same equation, replacing the $\lambda$ to each of 1 and -1. For example, in case of the eigenvalue 1, 
$$
\begin{bmatrix} 
0 && 0
\\\ 
6 && 2
\end{bmatrix}x_1 = \begin{bmatrix} 
0 && 0
\\\ 
6 && 2
\end{bmatrix}\begin{bmatrix} 
v_1
\\\ 
v_2
\end{bmatrix} = 0 \\\ 
3v_1 + v_2 = 0 \\\
x_1 = t\begin{bmatrix} 
1
\\\ 
-3
\end{bmatrix}
$$
where $t$ is any real value except 0. With the same procedure, the eigenvector corresponding the eigenvalue -1 is,
$$
x_2 = t'\begin{bmatrix} 
0
\\\ 
1
\end{bmatrix}
$$
Since the original matrix $A$ is $2 \times 2$ matrix and it has 2 eigenvectors, it has a square matrix $P$ which diagonalizes $A$. $P$ can be derived from the eigenvectors, that is,
$$
P = \begin{bmatrix} 
x_1 | x_2
\end{bmatrix} = 
\begin{bmatrix} 
1 && 0
\\\ 
-3 && 1
\end{bmatrix}
$$

You can show $P$ diagonalize $A$ by calculating $P^{-1}AP$,
$$
P^{-1}AP = \begin{bmatrix} 
1 && 0
\\\ 
3 && 1
\end{bmatrix}
\begin{bmatrix} 
-1 && 0
\\\ 
6 && 1
\end{bmatrix}
\begin{bmatrix} 
1 && 0
\\\ 
-3 && 1
\end{bmatrix}
$$

TODO: have to explain how you got $P^{-1}$

## Solution 2-5
(a)
According to the {{< tooltip "characteristic_equation" "characteristic equation" >}} of $A$,
$$
det(\lambda I - A) = \begin{vmatrix} 
\lambda -4 && 0 && 1
\\\ 
2 && \lambda - 3 && 2
\\\
1 && 0 && \lambda - 4
\end{vmatrix} = 
(\lambda -4) \begin{vmatrix} 
\lambda - 3 && 2
\\\ 
0 && \lambda - 4 \end{vmatrix} + 
\begin{vmatrix} 
2 && \lambda - 3
\\\ 
1 && 0 \end{vmatrix} \\\
= (\lambda - 4)^2(\lambda - 3) - (\lambda - 3)
= (\lambda - 3)^2(\lambda - 5) = 0
$$

The eigenvalues are 3 and 5.

(b)
When $\lambda = 3$,
$$
\lambda I - A = 
\begin{bmatrix} 
1 && 0 && 1
\\\ 
2 && 0 && 2
\\\
1 && 0 && 1
 \end{bmatrix}
$$

The $\lambda I - A$ has only one basis vector in its column and row space. Therefore the dimension of its column and row space is $R^1$ and therefore $rank(\lambda I - A) = 1$

When $\lambda = 5$,
$$
\lambda I - A = 
\begin{bmatrix} 
-1 && 0 && 1
\\\ 
2 && -2 && 2
\\\
1 && 0 && -1
 \end{bmatrix}
$$

After you did some row operations, you can figure out there are two leading 1's; that is, $rank(\lambda I - A) = 2$.

(c) In terms of the eigenvalue 3, I shown that the rank of $\lambda I - A$ is 1. Since the nullity (the dimension of eigenspace) is $n - rank(\lambda I - A) = 2$, there are two linearly independent eigenvectors. Though same process, you can derive that there are one eigenvector corresponding the eigenvalue 5. As a result, there are 3 linearly independent eigenvectors for $3 \times 3$ matrix $A$ and it means $A$ is diagonalizable.

# Problem 2-15-(b)
![](/posts/linear_algebra/exercise/problem5_2_15_(b).png)

## Solution
- The size of the matrix
You can infer the size of the matrix by the degree of the polynomial in the equation. It is 6.

- The possible dimensions of its eigenspaces
The possible dimension of a eiganspace associated with a eigenvalue is the algebraic multiplicity of the eigenvalue. Therefore, they are 2, 1, 3 and the possible dimensions of all eigensapces is 6.

# Problem 2-17

![](/posts/linear_algebra/exercise/problem5_2_17.png)

## Solution
Using {{< tooltip "characteristic_equation" "characteristic equation" >}}, you can calculate eigen values.
$$
\lambda = -3, 2
$$

And the corresponding eigenvectors are,
$$
x_1 = \begin{bmatrix} 
-1
\\\ 
1
 \end{bmatrix}, x_2 = \begin{bmatrix} 
3
\\\ 
2
 \end{bmatrix}
$$

Since $A$ has two dinstict eigenvalues, $A$ can be diagonalized. According to {{< tooltip "diagonalizable_matrix" "This post" >}}, the matrix $P$ which diagonalizes $A$ consists of eigenvectors and the diagonal matrix $P^{-1}AP$ contains eigenvalues on it's entries corresponding to eigenvectors; That is,
$$
P = \begin{bmatrix} 
-1 && 3
\\\ 
1 && 2
 \end{bmatrix} \\\
D = P^{-1}AP = \begin{bmatrix} 
-3 && 0
\\\ 
0 && 2
 \end{bmatrix}
$$

According to {{< tooltip "inversion_algorithm" "inversion algorithm" >}}, the inverse of $P$ is,
$$
P^{-1} = \frac{1}{5} \begin{bmatrix} 
-2 && 3
\\\ 
1 && 1
 \end{bmatrix}
$$

Now $A^10$ can be calculated with these matrices,
$$
A^{10} = (PDP^{-1})^{10} = PD^{10}P^{-1} = P \begin{bmatrix} 
3^{10} && 0
\\\ 
0 && 2^{10}
 \end{bmatrix}P^{-1}
$$

It is way easier than directly calculating A^{10} since you can get $D^{10}$ by just calculating powers of each it's entries.
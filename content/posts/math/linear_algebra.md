---
title: "linear_algebra"
date: 2023-01-30T05:57:36Z
math: true
tags: ["Math"]
---

# Linearity
Linearity is the property of a mathematical relationship (function) that can be graphically represented as a straight line. In mathmatics, a linear map (function) $f(x)$ is a function that satisfies the two properties

$$
f(x+y) = f(x) + f(y) \quad \text{additivity}
$$

$$
f(\alpha x) = \alpha f(x) \quad \text{homogeneity}
$$

However, not every term linear doesn't mean that it satisfies thses two properties. Sometimes, we call something linear because it can be represented as a straight line.

- assumptions
  - All vectors will be column vectors.

- **inner product or dot product**
For two vectors $u$ and $v$ in $\mathbb{R}^n$, the inner product of $u$ and $v$ is represented as
$$
    u^Tv = \sum_{i=1}^n{u_i v_i}
$$

- **Orthogonality**
  - two vectors $u$ and $v$ are *orthogonal* if $u^Tv = 0$. orthogonal vectors are geometrically perpendicular each other.

  - A matrix $Q$ is *orthogonal* if all of column vectors in it are orthogonal, which correspondingly satisfies,
$$
Q^T Q = QQ^T = I
$$

- **Orthonormal**
A set of vectors S is orthonormal if every vector in S has magnitude 1 and the set of vectors are mutually orthogonal


- **span**
  - the span of a set of vectors is the set of all linear combinations of the vectors.
  - the span of a set of vectors in $\mathbb{R}^n$ gives a subspace of $\mathbb{R}^n$.
  - 

- **linear indepedence**
a set of vectors is said to be linearly dependent if there exists nontrivial linear combination of the vectors that equals the zero vector. if not, they are linearly independent. Orthogonal vectors are always linearly independent.


row space of A = subspace of Rn spanned by the rows of A.
column space of A is the subspace of Rm spanned by the columns of A
null space of A = subspace of Rn consisting of solutions of the homogeneous linear system Ax = 0

if S is a subspace of Rn, then the number of vectors in a basis for S is called the dimension of S, denoted dim S

The rank of a matrix A is the dimension of its row and column spaces and is denoted by rank(A)

The nullity of a matrix A is the dimension of its null space and is denoted by nullity(A)

rank(A) + nullity(A) = n

The Fundamental Theorem of Invertible Matrices
- $A$ is invertible
- $A\vec{x}=\vec{b}$ has a unique solution for every $\vec{b}$ in $\mathbb{R}^n$.
- $A\vec{x}=0$ has only the trivial solution
- The reduced row echelon form of $A$ is $I_n$
- $A$ is a product of elementary matrices?
- rank(A) = n
- nullity(A) = 0
- The column vectors of A are linearly independent
- The column vectors of A span $\mathbb{R}^n$
- The column vectors of A form a basis for $\mathbb{R}^n$
- Same for row vectors

-  **Determinant**  
In mathematics, the determinant is a scalar value that is a function of the entries of a square matrix. Geometrically, it describes the n-dimensional volume scaling factor of the linear transformation produced by A.

- **Orthogonal projection**  
Orthogonal projection is a linear transformation that projects a vector onto a subspace, such that the projection is orthogonal (perpendicular) to the subspace. The result of the projection is a vector in the subspace that is closest to the original vector.


#
#
#
#
#
#
#
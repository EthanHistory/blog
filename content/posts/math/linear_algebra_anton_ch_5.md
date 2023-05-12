---
title: "Linear_algebra_anton_ch_5"
date: 2023-05-07T22:09:18Z
cover:
    image: "/area_of_parallelogram.png"
---

# Dimension
All bases for a finite-dimensional vector space have the same number of vectors.

Let $V$ be an n-dimensional vector space, and let $\\{v_1, v_2, \dotso, v_n \\} be any basis.
(a) If a set in $V$ has more than $n$ vectors, then it is linearly dependent.
(b) If a set in $V$ has fewer than $n$ vectors, then it does not span V.

The **dimension** of a finite-dimensional vector space $V$ is denoted by $dim(V)$ and is defined to be the number of vectors in a basis for $V$. In addition, the zero vector space is defined to have dimension zero.
$$
dim(R^n) = n
dim(P_n) = n+1
dim(M_{mn}) = mn
$$

## Plus/Minus Theorem
Let $S$ be a nonempty set of vectors in a vector space $V$.
(a) $S$ is a linearly independent set, and if $v$ is a vector in $V$ that is outside of $span(S)$, then the set $S \cup \\{v\\}$ is still linearly independent.

(b) If $v$ is a vector in $S$ that is expressible as a linear combination of other vectors in $S$, then $S$ and $S-\\{v\\}$ span the same space, that is,
$$
span(S) = span(S -\\{v\\})
$$

## Theorem 4.5.4
Let $V$ be an n-dimensional vector space, and let $S$ be a set in $V$ with exactly n vectors. Then $S$ is a basis for V if and only if $S$ spans $V$ or $S$ is linearly independent.

# Change of Basis

## The change-of-basis problem
If $v$ is a vector in a finite-dimensional vector space $V$, and if we change the basis for $V$ from a basis $B$ to a basis $B'$, how are the coordinate vectors $[v]_B$ and $[v]_{B'}$ related?

## Solution of the change-of-basis problem
If we change the basis for a vector space $V$ from an old basis $B= \\{u_1, u_2, \dotso, u_n \\}$ to a new basis $B'= \\{u'_1, u'_2, \dotso, u'_n \\}$, then for each vector $v$ in $V$, the old coordinate vector $[v]_B$ is related to the new coordinate vector $[v]_{B'}$ by the equation
$$
[v]_B' = P[v]_{B'}
$$
where the columns of $P$ are the coordinate vectors of the new basis vectors relative to the old basis; that is, the column vectors of $P$ are
$$
[u'_1]B, [u'_2]B, \dotso, [u'_n]B
$$
The matrix $P$ is called the **transition matrix** from $B'$ to $B$. Note that $P$ is invertible and $P^{-1}$ is the transition matrix from $B$ to $B'$ if $V$ is a finite-dimensional vector space.

## An efficient method for computing transition matrices for $R^n$
1. Form the matrix $[B' | B]$
2. Use elementary row operations to reduce the matrix to reduced row echelon form [I | P_{B \rightarrow B'}]
3. Extract the matrix P_{B \rightarrow B'}

## Theorem 4.6.2
Let $B' = \\{u_1, u_2, \dotso, u_n\\} be any basis for the vector space $R^n$ and let $S=\\{e_1, e_2, \dotso, e_n\\} be the standard basis for $R^n$. If the vectors in these bases are written in column form, then


# Rank, Nullity, and the Fundamental Matrix Spaces
### Dimension Theorem for Matrices
If $A$ is a matrix with n columns, then
$$
rank(A) + nullity(A) = n
$$

$rank(A) = \text{the number of leading variables in the general solution of } Ax=0$.
$nullity(A) = \text{the number of parameters in the general solution of } Ax=0$.

### Theorem 4.8.4
If $Ax=b$ is a consistent linear system of $m$ equations in $n$ unknowns, and if $A$ has rank $r$, then the general solution of the system contains $n - r$ parameters.

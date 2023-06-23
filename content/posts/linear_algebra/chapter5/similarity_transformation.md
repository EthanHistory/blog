---
title: "Similarity transformation"
date: 2023-05-14T15:44:34-07:00
draft: true
---

For a $n \times n$ matrix $A$ and a $n \times n$ invertible matrix $P$, transformations
$$
A \rightarrow P^{-1}AP
$$
in which the matrix $A$ is mapped into the matrix $P^{-1}AP. These are called **similarity transformations**.

## Similarity invariants
In general, those properties are preserved by similarity transformation.

1. Determinant
$$
det(A) = det(P^{-1}AP)
$$

2. Invertibility
$$
det(A) \neq 0 \Leftrightarrow det(P^{-1}AP) \neq 0
$$

3. Rank
$P$ is invertible matrix and can be decomposed to elementary matrices. Since multiplications of elementary matrix don't change row space, the row space of $P$ and $P^{-1}AP$ is same. Therefore the rank of these two matrices are same too. 
$$
rank(A) == rank(P^{-1}AP)
$$

4. Nullity
$A$ and $P^{-1}AP$ has the same dimension and rank. Therefore their nullity should be the same.
$$
null(A) = null(P^{-1}AP)
$$

5. Trace
Since the sum of eigenvalues are the same, trace should be the same.
$$
Tr(A) = Tr(P^{-1}AP)
$$

6. Characteristic polynomial
$A$ and $P^{-1}AP$ have the same characteristic polynomial.

7. Eigenvalues
$A$ and $P^{-1}AP$ have the same eigenvalues.

8. Eigenspace dimension
the eigenspaces corresponding to each eigenvalue from $A$ and $P^{-1}AP$ have the same dimension.


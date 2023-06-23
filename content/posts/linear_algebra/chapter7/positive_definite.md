---
title: "Positive_definite"
date: 2023-06-20T11:09:57+09:00
draft: true
---

A quadratic form $x^TAx$ is said to be  
**positive definite** if $x^TAx \gt 0$ for $x \neq 0$;  
**negative definite** if $x^TAx \lt 0$ for $x \neq 0$;  
**indefinite** if $x^TAx$ has both positive and negative values.

For symmetric matrix $A$,
1. All eigenvalues of $A$ are positive $\Leftrightarrow$ $x^TAx$ is positive definite
2. All eigenvalues of $A$ are negative $\Leftrightarrow$ $x^TAx$ is negative definite
3. $A$ has at least one positive eigenvalue and at least one negative eigenvalue.
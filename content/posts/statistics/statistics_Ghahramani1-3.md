---
title: "Statistics Ghahramani Ch 1.3"
date: 2023-04-05T21:00:42Z
draft: false
math: true
---

### Axioms
- $P(A) \ge 0$
- $P(S) = 1$
- $P(\bigcup_{i=1}^\infty A_i) = \sum_{i=1}^{\infty} P(A)$ if $A_i$ and $A_j$ are mutually exclusive for any $i$ and $j$

### Theorems
- $P(A^c) = 1 - P(A)$
- $P(B - A) = P(BA^c) = P(B) - P(A)$ if $A \le B$
- $P(A \cup B) = P(A) + P(B) - P(AB)$

- Inclusion-Exclusion Principle
$$
P(\bigcup_{i=1}^n A_i) = \sum_{i=1}^n P(A_i) - \sum_{i=1}^{n-1} \sum_{j=i+1}^{n} P(A_i A_j) + \sum_{i=1}^{n-2} \sum_{j=i+1}^{n-1} \sum_{k=j+1}^{n} P(A_i A_j A_k) - ... + (-1)^{n-1} P(A_1 A_2 ... A_n)
$$

- Boole's inequality (Proof)  
Using mathematical induction,  
when n = 1, it satisfies the ineqaulity
$$
P(\bigcup_{i=1}^{1} A_i) = \sum_{i=1}^{1} P(A_i) 
$$

Then, let's prove $n=k+1$ case assuming that it satisfies the inequality when $n = k$
By the third axiom, 
$$
P(\bigcup_{i=1}^{n} A_i) - P(\bigcup_{i=1}^{n} A_i A_{n+1}) \le P(\bigcup_{i=1}^{n} A_i)
$$

Then, based on assumption, we have
$$
P(\bigcup_{i=1}^{n} A_i) - P(\bigcup_{i=1}^{n} A_i A_{n+1}) \le \sum_{i=1}^{n} P(A_i) 
$$

Adding $P(A_{n+1})$ to both sides,
$$
P(\bigcup_{i=1}^{n} A_i) + P(A_{n+1})- P(\bigcup_{i=1}^{n} A_i A_{n+1}) \le \sum_{i=1}^{n} P(A_i) + P(A_{n+1}) = \sum_{i=1}^{n+1} P(A_i)
$$

Using the third theorem,
$$
P(\bigcup_{i=1}^{n+1} A_i) \le \sum_{i=1}^{n+1} P(A_i)
$$
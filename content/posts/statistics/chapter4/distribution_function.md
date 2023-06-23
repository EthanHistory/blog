---
title: "Distribution_function"
date: 2023-06-03T11:03:59+09:00
draft: true
---

If $X$ is a random variable, then the function $F$ defined on $(-\infty, +\infty)$ by $F(t) = P(X \le t)$ is called the **distribution function** of $X$.

- F is non-decreasing
- $\lim_{t \rightarrow \infty}F(t) = 1$
- $\lim_{t \rightarrow -\infty}F(t) = 0$
- F is right continuous; For every $t \in R$, $F(t+) = F(t).

For a point $a \in R$, P(X = a) = F(a) - F(a-) -- the difference between the right- and left-hand limits of $F$ at $a$.
If the function $F$ is continuous at $a$, these limits are the same and equal to $F(a)$. Hence $P(X=a) = 0$. Otherwise, $F$ has a **jump** at $a$, and the magnitude of the jump, $F(a) - F(a-)$, is the probability that $X = a$.



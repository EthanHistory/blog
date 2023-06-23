---
title: "Bernoulli random variables"
date: 2023-06-12T12:15:23+09:00
draft: true
---

## Definition
Experiments that have only two possible outcomes. One outcome is usually called a success, denoted by $s$. The other outcome is called a failure, denoted by $f$. The random variable defined by $X(s) = 1$ and $X(f) = 0$ is called a Bernoulli random variable.

## The probability mass function
$$
p(x)=\begin{cases}
1-p \equiv q & \text{if $x=0$}\\\
p & \text{if $x=1$} \\\
0 & \text{otherwise}
\end{cases}
$$

## Expectation
$$
E(X) = 0 \cdot P(X=0) + 1 \cdot P(X= 1) = p
$$

## Variance
$$
E(X^2) = 0 \cdot P(X=0) + 1 \cdot P(X=1) = p, \\\
Var(X) = E(X^2) - [E(X)]^2 = p - p^2 = p(1-p) \\\
\sigma_{X} = \sqrt{p(1-p)}
$$
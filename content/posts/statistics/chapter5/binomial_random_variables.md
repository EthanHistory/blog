---
title: "Binomial random variables"
date: 2023-06-12T12:15:35+09:00
draft: true
---

## Definition
If $n$ Bernoulli trials with probability of success $p$ are performed independently, then $X$, the number of successes, is said to be a binomial random variable with parameters $n$ and $p$.

## The probability mass function
$$
p(x)=\begin{cases}
\binom{n}{x}p^x (1-p)^{n-x} & \text{if $x=0,1,2, ..., n$}\\\
0 & \text{otherwise}
\end{cases}
$$

According to the binomial expansion theorem, One of the properties, sum of probability of all outcomes equals to one, holds.

---
**Binomial expansion theorem**

For any integer $n \ge 0$,
$$
(x+y)^n = \sum_{i=0}^n \binom{n}{i}x^{n-i}y^i = [p + (1-p)]^n = 1^n = 1
$$

---

## Expectation
$$
E(X) = \sum_{x=0}^n x\binom{n}{x}p^x (1-p)^{n-x} = \sum_{x=1}^n x \frac{n!}{x! (n-x)!} p^x (1-p)^{n-x} = \\\
 \sum_{x=1}^n \frac{n!}{(x-1)! (n-x)!} p^x (1-p)^{n-x} = np \sum_{x=1}^n \frac{(n-1)!}{(x-1)! (n-x)!} p^{x-1} (1-p)^{n-x} = \\\
 np \sum_{x=1}^n \binom{n-1}{x-1} p^{x-1} (1-p)^{n-x}
$$
Letting $i = x-1$,
$$ 
 np \sum_{i=0}^{n-1} \binom{n-1}{i} p^{i} (1-p)^{n-i} = np[p+(1-p)]^{n-1} = np
$$

## Variance

$$
E(X^2) = \sum_{x=0}^n x^2\binom{n}{x}p^x (1-p)^{n-x} = \sum_{x=1}^n x \frac{n!}{x! (n-x)!} p^x (1-p)^{n-x} = n^2p^2 - np^2 + np, \\\
Var(X) = E(X^2) - [E(X)]^2 = np(1-p) \\\
\sigma_{X} = \sqrt{np(1-p)}
$$
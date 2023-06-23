---
title: "Poisson_random_variables"
date: 2023-06-12T12:15:45+09:00
draft: true
---

## Definition
Approximation of binomial random variable. For a binomial random variable $X$ with parameters $n$ and $p$, when the number of trials is large $(n \rightarrow \infty)$, the probability of success is small $(p \rightarrow 0)$, and the average number of successes remains a fixed quantity of moderate value ($np = \lambda$ for some constant $\lambda$). 

---
**Poisson approximation**

Binomial variable was not good in use of real-world problems due to it's computational limiation; it was hard to compute $n!$ even when the value of $n$ grows a little. 
One of the well-known method to overcome this problem is Poisson random variable. It approximate a binomial random variable with some constraints: large $n$ and appreciable constant for $\lambda (np)$.

Let $X$ be a binomial random variable with parameters $(n, p)$; then

$$
P(X=i) = \binom{n}{i}p^i(1-p)^{n-i} = \frac{n!}{(n-i)! i!}\Bigl( \frac{\lambda}{n} \Bigr) \Bigl( 1 - \frac{\lambda}{n} \Bigr)^{n-i} \\\
= \frac{n(n-1)(n-2) \dotsm (n-i+1)}{n^i} \frac{\lambda^i}{i!} \frac{\Bigl( 1 - \frac{\lambda}{n} \Bigr)^n}{\Bigl( 1 - \frac{\lambda}{n} \Bigr)^i}
$$

With the constraints that I mentioned, you can see each part converges when $n$ is close to infinity.
$$
\lim_{n \rightarrow \infty} \frac{n(n-1)(n-2) \dotsm (n-i+1)}{n^i} = 1 \\\
\lim_{n \rightarrow \infty} \Bigl( 1 - \frac{\lambda}{n} \Bigr)^i = 1 \\\
\lim_{n \rightarrow \infty} \Bigl( 1 - \frac{\lambda}{n} \Bigr)^n = e^{-\lambda}
$$

Therefore,
$$
P(X=i) \rightarrow \frac{e^{-\lambda} \lambda^i}{i!}
$$

Poisson's approximation by itself is a probability mass function.
$$
\sum_{i=0}^{\infty} P(X=i) = \sum_{i=0}^{\infty} \frac{e^{-\lambda} \lambda^i}{i!} = e^{-\lambda} \sum_{i=0}^{\infty} \frac{\lambda^i}{i!} = e^{-\lambda} e^{\lambda} = 1
$$

---

## The probability mass function
A discrete random variable $X$ with possible values $0, 1, 2, 3, \dotso$ is called $Poisson$ with parameter $\lambda$, $\lambda \gt 0$, if
$$
P(X=i) = \frac{e^{-\lambda} \lambda^i}{i!}, \quad i=0, 1, 2, 3, \dotso
$$

## Expectation
$$
E(X) = \lambda
$$

## Variance
$$
Var(X) = \lambda
\sigma_{X} = \sqrt{\lambda}
$$
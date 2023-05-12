---
title: "Statistics_Ghahramani_Ch5"
date: 2023-04-28T17:45:52Z
draft: true
math: true
---

# Special discrete distributions

## Bernoulli and binomial random variables

### Bernoulli random variable
a type of discrete random variable with one parameter $p$ used in Bernoulli trials. $p$ indicates the possibility of success.

- Bernoulli trials
A simplest type of experiments where there are only two kinds of outcomes: success and failure.

- probability mass function 
$$
p(x)=\begin{cases}
1-p \equiv q & \text{if $x=0$}\\\
p & \text{if $x=1$} \\\
0 & \text{otherwise}
\end{cases}
$$

- Expectation of a Bernoulli random variable X
$$
E(X) = 0 \cdot P(X=0) + 1 \cdot P(X= 1) = p
$$

- Variance of a Bernoulli random variable X
$$
E(X^2) = 0 \cdot P(X=0) + 1 \cdot P(X=1) = p, \\\
Var(X) = E(X^2) - [E(X)]^2 = p - p^2 = p(1-p) \\\
\sigma_{X} = \sqrt{p(1-p)}
$$

### Binomial random variable
a discrete random variable with two parameters $n$ and $p$ used in a series of homogeneous but independent Bernoulli trials. $p$ indicates the possibility of success and $n$ indicates the number of trials. The outcome of the variable indicates the number of successes.

- probability mass function 
$$
p(x)=\begin{cases}
\binom{n}{x}p^x (1-p)^{n-x} & \text{if $x=0,1,2, ..., n$}\\\
0 & \text{otherwise}
\end{cases}
$$

According to the binomial expansion theorem, One of the properties holds.
$$
\sum_{x=0}^n p(x) = \sum_{x=0}^n \binom{n}{x}p^x (1-p)^{n-x} = 
$$

---
**Binomial expansion theorem**

For any integer $n \ge 0$,
$$
(x+y)^n = \sum_{i=0}^n \binom{n}{i}x^{n-i}y^i = [p + (1-p)]^n = 1^n = 1
$$

---

- Expectation of a Binomial random variable X
$$
E(X) = \sum_{x=0}^n x\binom{n}{x}p^x (1-p)^{n-x} = \sum_{x=1}^n x \frac{n!}{x! (n-x)!} p^x (1-p)^{n-x} = \\\
 \sum_{x=1}^n \frac{n!}{(x-1)! (n-x)!} p^x (1-p)^{n-x} = np \sum_{x=1}^n \frac{(n-1)!}{(x-1)! (n-x)!} p^{x-1} (1-p)^{n-x} = \\\
 np \sum_{x=1}^n \binom{n-1}{x-1} p^{x-1} (1-p)^{n-x}
$$
Letting $i = x-1$,
$$ 
 np \sum_{i=0}^{n-1} \binom{n-1}{i} p^{i} (1-p)^{n-i} = np[p+(1-p)]^{n-1} = np
$$

- Variance of a Bernoulli random variable X
$$
E(X^2) = \sum_{x=0}^n x^2\binom{n}{x}p^x (1-p)^{n-x} = n^2p^2 - np^2 + np \\\
Var(X) = E(X^2) - [E(X)]^2 = -np^2 + np = np(1-p) \\\
\sigma_{X} = \sqrt{np(1-p)}
$$

## Poisson random variables
### Poisson as an approximation to Binomial
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

A discrete random variable $X$ with possible values $0, 1, 2, 3, \dotso$ is called $Poisson$ with parameter $\lambda$, $\lambda \gt 0$, if
$$
P(X=i) = \frac{e^{-\lambda} \lambda^i}{i!}, \quad i=0, 1, 2, 3, \dotso
$$

- Expectation of a Poisson random variable $X$
$$
E\[X\] = \sum_{i=0}^{\infty} i P(X=i) = \sum_{i=1}^{\infty} i \frac{e^{-\lambda} \lambda^i}{i!} = \lambda e^{-\lambda} \sum_{i=1}^{\infty} \frac{\lambda^{i-1}}{(i-1)!} = \lambda e^{-\lambda} e^{\lambda} = \lambda
$$

- Variance of a Poisson random variable $X$
$$
E\[X^2\] = \sum_{i=0}^{\infty} i^2 P(X=i) = \sum_{i=1}^{\infty} i^2 \frac{e^{-\lambda} \lambda^i}{i!} = \lambda e^{-\lambda} \sum_{i=1}^{\infty} i \frac{\lambda^{i-1}}{(i-1)!} = \lambda e^{-\lambda} \sum_{i=1}^{\infty} \frac{1}{(i-1)!} \frac{d}{d \lambda}\lambda^{i} = \\\
\lambda e^{-\lambda} \frac{d}{d \lambda} \sum_{i=1}^{\infty} \frac{1}{(i-1)!} \lambda^{i} = \lambda e^{-\lambda} \frac{d}{d \lambda} \lambda \sum_{i=1}^{\infty} \frac{\lambda^{i-1}}{(i-1)!} = \lambda e^{-\lambda} \frac{d}{d \lambda} \lambda e^\lambda = \lambda e^{-\lambda} (e^\lambda + \lambda e^\lambda) = \lambda + \lambda^2 \\\
Var(X) = E\[X^2\] - E\[X\]^2 = (\lambda + \lambda^2) - \lambda^2 = \lambda
$$

### Poisson processes
- stationarity
For all $n \ge 0$, and for any two equal time intervals $\Delta_1$ and $\Delta_2$, the probability of $n$ events in $\Delta_1$ is equal to the probability of n events in $\Delta_2$.

- Independent Increments
For all $n \ge 0$, and for any time interval $(t, t+s)$, the probability of $n$ events in $(t, t+s) is independent of how many events have occurred earlier or how they have occurred.

- Orderliness
The occurrence of two or more events in a very small time interval is practically impossible, which mathematically means,
$$
\lim_{h \rightarrow 0} P(N(h) \gt 1)/h = 0
$$

## Other discrete random variables
### Geometric random variable
The number of independent Bernoulli trials, in which probability of success is $p$, $0 \lt p \lt 1$, until the first success occurs. 
- possible values is $\\{1, 2, 3, \dotsm\\}$
- probability mass function
$$
p(x)=\begin{cases}
(1-p)^{x-1}p, 0 \lt p \lt 1 & \text{if $x=1, 2, 3, \dotsm$}\\\
0 & \text{otherwise}
\end{cases}
$$

- expectation
$$
E\[X\] = \sum_{x=1}^{\infty} xp(1-p)^{x-1} = \frac{p}{1-p} \sum_{x=1}^{\infty} x(1-p)^x = \frac{p}{1-p} \frac{1-p}{[1-(1-p)]^2}  = \frac{1}{p}
$$
Where $\sum_{x=1}^{\infty} xr^x = \frac{r}{(1-r)^2}, |r| \lt 1$

- variance
$$
E\[X^2\] = \sum_{x=1}^{\infty} x^2p(1-p)^{x-1} = \frac{p}{1-p} \sum_{x=1}^{\infty} x^2(1-p)^x = \frac{2-p}{p^2}
$$
Where $\sum_{x=1}^{\infty} x^2r^x = \frac{r(r+1)}{(1-r)^3}, |r| \lt 1$

Therefore,
$$
Var(X) = E\[X^2\] - E\[X\]^2 = \frac{2-p}{p^2} - \Big( \frac{1}{p} \Big)^2 = \frac{1-p}{p^2}
$$

### Negative binomial random variable
Generalization of geometric random variables. The number of independent Bernoulli trials, in which probability of success is $p$, $0 \lt p \lt 1$, until the $r$th success occurs. 

- possible values is $\\{r, r+1, r+2, \dotsm\\}$
- probability mass function
$$
p(x)=\begin{cases}
\binom{x-1}{r-1} p^r(1-p)^{x-r}, 0 \lt p \lt 1 & \text{if $x=r,r+1,r+2, \dotsm$}\\\
0 & \text{otherwise}
\end{cases}
$$

- expectation
$$
E\[X\] = \frac{r}{p}
$$

- variance
$$
Var(X) = \frac{r(1-p)}{p^2}
$$

### Hypergeometric random variable
The number of defective items drawn from a sequence of trials when you draw $n$ items at random and without replacement from a box containing $D$ defective and $N-D$ nondefective items. Note that $n \le min(D, N-D)$.

- possible values is $\\{1, 2, 3, \dotsm, n\\}$

- probability mass function
$$
p(x)=\begin{cases}
\frac{\binom{D}{x}\binom{N-D}{n-x}}{\binom{N}{n}} & \text{if $x=0, 1, 2, \dotsm, n$}\\\
0 & \text{otherwise}
\end{cases}
$$

- expectation
$$
E\[X\] = \frac{nD}{N}
$$

- variance
$$
Var(X) = \frac{nD(N-D)}{N^2} \Big( 1 - \frac{n-1}{N-1} \Big)
$$


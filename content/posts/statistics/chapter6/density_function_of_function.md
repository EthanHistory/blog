---
title: "Density function of function"
date: 2023-06-22T14:43:56+09:00
draft: false
tags: ["statistics-ch6"]
---

Suppose that $f$, the probability density function of a random variable $X$, is known but the probability density function of $h(X)$, for some function of $X$, is needed.

There are two common methods for the evaluation of the probability density function of $h(X)$

## the method of distribution functions
To calculate $P(h(X) \le t)$,
1. Find a set $E$ for which $h(X) \le t$ if and only if $X \in E$
2. Compute $P(X \in E)$ from the distribution function of $X$
3. Do differentiation on $P(h(X) \le t)$


## the method of transformations
In this method, we find the pdf of $h(X)$ without obtaining its distribution function. Let $f_X$ be the pdf of $X$, let its set of possible values be $A$. For the invertible function h: $A \rightarrow R$, let $Y = h(X)$ be a random variable with the set of possible values $B = h(A) = \{h(a) : a \in A\}$

Then $f_Y$, the pdf of $Y$, is given by
$$
f_Y(y) = f_X(h^{-1}(y))|(h^{-1})'(y)|, y \in B
$$

This is because,
$$
F_Y(y) = P(h(X) \le y) = P(X \le h^{-1}(y)) = F_X(h^{-1}(y))
$$
, where F is the distribution function. If you differentiate the equation, you will get the pdf above.


## Example 1
The error of a measurement has the probability density function

$$
f(x)=\begin{cases}
1/2 & -1 \lt x \lt 1 \\\
0 & \text{otherwise}
\end{cases}
$$

Find the distribution and the pdf of the magnitude of the error.

### Solution
For the distribution function, G, of |X|,
$$
G(t) = P(|X| \le t) = P(-t \le X \le t) = \begin{cases}
0 & t \lt 0 \\\
\int_{-t}^{t} 1/2 dx = t & 0 \le t \lt 1 \\\
1 & t \ge 1
\end{cases}
$$

## Example 2
Let $X$ be a random variable with the probability density function
$$
f_X(x) =
\begin{cases}
2e^{-2x} & x \gt 0 \\\
0 & \text{otherwise}
\end{cases}
$$

Using the method of transformations, find the probability density function of $Y = \sqrt{X}$

For $x \gt 0$, $y \in (0, \infty)$
$$
f_Y(y) = f_X(h^{-1}(y))|h^{-1}'(y)| = 2e^{-2y^2}|2y|
$$
Since |2y| = 2y when y is bigger than 0,
$$ f_Y(y) =
\begin{cases}
4ye^{-2y^2} & y \gt 0 \\\
0 & \text{otherwise}
\end{cases}
$$


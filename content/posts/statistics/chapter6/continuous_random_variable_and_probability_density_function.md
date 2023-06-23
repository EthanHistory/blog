---
title: "Continuous random variable and probability density function"
date: 2023-06-22T13:14:39+09:00
draft: false
tags: ["statistics-ch6"]
---

## Definition 
Let $X$ be a random variable. Suppose that there exists a nonnegative real-value function $f : R \rightarrow \[0, \infty)$ such that for any subset of real numbers $A$ that can be constructed from intervals by a countable number of set operations,
$$
P(X \in A) = \int_{A} f(x)dx
$$

Here, **f** is called the probability density function of $X$.

## Properties of probability density function
1. $F(t) = \int_{-\infty}^t f(x)dx$  
2. $\int_{-\infty}^{\infty} f(x)dx = 1$
3. If f is continuous, then $F'(x) = f(x)$
4. For real numbers $a \le b$, $P(a \le X \le b) = P(a \lt X \le b) = P(a \le X \lt b) = P(a \lt X \lt b) = \int_a^b f(t) dt$

## Example
(example 6.1 in the textbook)

Experience has shown that while walking in a certain park, the time $X$, in minutes, between seeing two people smoking has a probability density function of the form

$$
f(x)=\begin{cases}
\lambda xe^{-x} & x \gt 0 \\\
0 & \text{otherwise}
\end{cases}
$$

### (a) Calculate the value of $\lambda$.
Due to the property of probability density function,
$$
\int_{-\infty}^{\infty} f(x)dx = \int_{0}^{\infty} \lambda xe^{-x} dx = 1
$$

The integration of the part is,
$$
\int xe^{-x} = -(x+1)e^{-1}
$$

Knowing that $\lim_{x \rightarrow \infty} (1+x)/e^{-x} = 0$
$$
\int_{0}^{\infty} \lambda xe^{-x} dx = \lambda \big[ -(1+x)e^{-x}\big]_0^{\infty} = \lambda = 1
$$

### (b) Find the distribution function of X
the distribution function of $X$, F, can be calculated by,

$$
F(t) = \int_{-\infty}^t f(t)dt = \int_{0}^t xe^{-x}dt = \big[ -(1+x)e^{-x}\big]_0^{t} = -(1+t)e^{-t} + 1
$$
Note that, here, $t \gt 0$.

For the distribution function for all t,
$$
f(x)=\begin{cases}
0 & t \lt 0 \\\
-(1+t)e^{-t} + 1 & t \ge 0
\end{cases}
$$


### (c) What is the probability that Jeff, who has just seen a person smoking, will see another person smoking in 2 to 5 minutes? In at least 7 minutes?
The first case indicates the probability,
$$
P(2 \le X \le 5) = \int_2^5 f(x)dx = F(5) - F(2) 
$$

And the second case,
$$
P(X \ge 7) = \int_7^{\infty} f(x)dx = 1 - F(7)
$$

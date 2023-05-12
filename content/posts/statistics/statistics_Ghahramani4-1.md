---
title: "Statistics_Ghahramani4 1"
date: 2023-04-24T16:20:49Z
draft: true
math: true
---

# Random variables

Let $S$ be the sample space of an experiment. A real-valued function $X: S \rightarrow R$ is called a **random variable** of the experiment if, for each interval $I \subset R$, $\\{s: X(s) \in I\\}$ is an event.

In probability, the set $\\{s: X(s) \in I\\}$ is often abbreviated as $\\{X \in I\\}$, or simply as $X \in I$.

# Distribution functions

If $X$ is a random variable, then the function $F$ defined on $(-\infty, +\infty)$ by $F(t) = P(X \le t)$ is called the distribution function of $X$ or **cumulative distribution function of $X$**. 

- properties
1. $F$ is non-decreasing  
if $t \lt u$, then $F(t) \le F(u)$

2. $\lim_{t \rightarrow \infty} F(t) = 1$
3. $\lim_{t \rightarrow -\infty} F(t) = 0$
4. $F$ is right continuous
$$
F(t+) = \lim_{n \rightarrow \infty} F(t_n) = F(t)
$$

# Discrete random variables
Whenever the set of possible values that a random variable $X$ can assume is at most countable (finite or countably infinite), $X$ is called **discrete**. To each discrete random variable, a real-valued function $p: R \rightarrow R$, defined by $p(x) = P(X = x)$, is assigned and is called the **probability mass function of X** (also probability function or discrete probability function)

- properties
1. $p(x) = 0$ if $x \notin \\{x_1, x_2, x_3, ...\\}$
2. $p(X_I) = P(X = x_i)$ and hence $p(x_i) \ge 0 \quad (i = 1, 2, 3, ...)$
3. $\sum_{i=1}^{\infty} p(x_i) = 1$

# Expectations of discrete random variables

Let $X$ be a discrete random variable with set of possible values $A$ and probability mass function $p(x)$, and let $g$ be a real-valued function. Then $g(X)$ is a random variable with
$$
E[g(X)] = \sum_{x \in A}g(x)p(x)
$$

- **Proof**
Let $S$ be the sample space. We are given that $g:R \rightarrow R$ is a real-valued function and $X : S \rightarrow A \subseteq R$ is a random variable with the set of possible values $A$. As we know, $g(X)$, the composition of $g$ and $X$,is a function from $S$ to the set $g(A) = \\{ g(x): x \in A \\}$. Hence $g(X)$ is a random variable with the possible set of values $g(A)$. Now, by the definition of expected value,
$$
E[g(X)] = \sum_{z \in g(A)}{zP(g(X) = z)}
$$

Let $g^{-1}(\\{z\\}) = \\{ x: g(x) = z \\}$, and notice that we are not claiming that $g$ has an inverse function. We are simply considering the set $\\{ x:g(x) = z \\}$, which is called the **inverse image** of $z$ and is denoted by $g^{-1}(\\{z\\})$. Now

$$
P(g(X)=z) = P(X \in g^{-1}(\\{z\\})) = \sum_{\\{x:x \in g^{-1}(\\{z\\})\\}}P(X=x) = \sum_{\\{x: g(x)=z\\}}p(x)
$$

Thus

$$
E[g(X)] = \sum_{z \in g(A)}{zP(g(X) = z)} = \sum_{z \in g(A)}z \sum_{\\{x: g(x)=z\\}}p(x) = \sum_{z \in g(A)} \sum_{\\{x: g(x)=z\\}}zp(x)
$$

$$
= \sum_{z \in g(A)} \sum_{\\{x: g(x)=z\\}}g(x)p(x) = \sum_{x \in A} g(x)p(x)
$$

I think the last euqation is more important than others where the nested sum shrink into one sum. This kind of trick comes from the fact that the function $g$ is injective but not bijective.

# Variances and moments of discrete random variables
Another important quantity in probability when it comes to error. Variance measures the average magnitude of the fluctuations of a random variable from its expected value. For technical reason, the variance of a random variable $X$ is defined as
$$
V(X) = E[(X-E[X])^2] = \sum_{x \in A} (x - E[X])^2p(x)
$$
And the square root of variance is called the **standard deviation of X**
$$
S(X) = \sqrt{V(X)}
$$

## concentration
Suppose that $X$ and $Y$ are two random variables with $E(X) = E(Y) = \mu$. If $X$ is more concentrated about $\mu$ than is $Y$, then $Var(X) \le Var(Y)$

## moments
![](/moments.png)

If $E(X^{n+1})$ exists, then $E(X^n)$ also exists. (Skip proof)

# Standardized random variables
Let $X$ be a random variable with mean $\mu$ and standard deviation $\sigma$. The random variable $X* = (X-\mu)/\sigma$ is called the **standardized** $X$. When standardizing a random variable $X$, we change the origin to $\mu$ and the scale to the units
of standard deviation. The value that is obtained for $X∗$ is independent of the units in which $X$
is measured.

```
### conversation with ChatGPT
Why the value of X* is indepedent of the units in which X is measured?

When standardizing a random variable X, we subtract the mean μ from X and divide the result by the standard deviation σ, as shown below:

X* = (X - μ)/σ

The resulting value X* is called the standardized value of X.

To see why X* is independent of the units in which X is measured, consider the units of the two terms in the numerator of the formula for X*:

(X - μ): The units of (X - μ) are the same as the units of X.

σ: The units of σ are the same as the units of X.

Therefore, the units of (X - μ)/σ cancel out, leaving X* as a dimensionless quantity.

For example, suppose X represents the height of a person in inches. If we standardize X using the formula above, the resulting X* will not have any units, regardless of whether we measure height in inches, feet, or any other unit of length.

In other words, X* is a measure of the distance between X and the mean in terms of the number of standard deviations away from the mean. This distance is a dimensionless quantity and is independent of the original units of X.

```
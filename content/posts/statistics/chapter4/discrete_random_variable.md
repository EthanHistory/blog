---
title: "Discrete_random_variable"
date: 2023-06-03T11:04:10+09:00
draft: true
---

Whenever the set of possible values that a random variable $X$ can assume is at most countable (finite or countably infinite), $X$ is called discrete.  

To each discrete random variable, a real-valued function $p: R \rightarrow R$, defined by $p(x) = P(X = x)$, is assigned and is called the **probability mass function** of $X$

The distribution function $F$ of a discrete random variable $X$, with the set of possible values $\\{x_1, x_2, x_3, \dotso \\}$, is a step function; that is, $F$ is constant in the intervals $[x_{n-1}, x_n)$ with jumps at $x_1, x_2, x_3, \dotso$ The magnitude of the jump at $x_i$ is p(x_i).

## Expected value
The expected value of a discrete random variable $X$ with the set of possible values $A$ and probability mass function p(x) is defined by
$$
E(X) = \sum_{x \in A}xp(x)
$$

If $g$ is a real-valued function, then $g(X)$ is a random variable with

$$
E[g(X)] = \sum_{x \in A}g(x)p(x)
$$

## linearity of expected value of discrete random variables
Let $X$ be a discrete random variable; $g_1, g_2, \dotsm, g_n$ be real-valued functions, and let $\alpha_1, \alpha_2, \dotsm, \alpha_n$. Then
$$
E[ \alpha_1 g_1(X) + \alpha_2 g_2(X) + \dotsm + \alpha_ng_n(X) ] \\\
= \alpha_1 E[g_1(X)] + \alpha_2 E[g_2(X)] + \dotsm + \alpha_3 E[g_n(X)]
$$

## Standard deviation and variance
Let $X$ be a discrete random variable with a set of possible values $A$, probability mass function $p(x)$, and $E(X) = \mu$. Then $\sigma_X$ and $Var(X)$, called the standard deviation and the variance of $X$, respectively, are defined by
$$
\sigma_X = \sqrt{E[(X-\mu)^2]} \\\
Var(X) = E[(X-\mu)^2] = E[X^2] - [E(X)]^2
$$

## Property of variance
$$
Var(aX + b) = a^2 Var(X)
$$
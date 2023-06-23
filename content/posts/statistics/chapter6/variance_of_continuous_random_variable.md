---
title: "Variance of continuous random variable"
date: 2023-06-23T13:14:44+09:00
draft: false
tags: ["statistics-ch6"]
---

## Definition
If $X$ is a continuous random variable with $E(X) = \mu$, then $Var(X)$ and $\sigma_X$, called the variance and standard deviation of $X$, respectively, are defined by 
$$
Var(X) = E[(X-\mu)^2] = \int_{-\infty}^{\infty} (x-\mu)^2 f(x) dx = E(X^2) - [E(X)]^2 \\\
\sigma_X = \sqrt{E[(X-\mu)^2]}
$$

Same as discrete random variable,
$$
Var(aX+b) = a^2 Var(X)
$$
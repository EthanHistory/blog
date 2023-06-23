---
title: "Expectation of continuous random variable"
date: 2023-06-23T13:14:32+09:00
draft: false
tags: ["statistics-ch6"]
---

## Definition
If $X$ is a continuous random variable with probability density function $f$, the expected value of $X$ is defined by
$$
E(X) = \int_{-\infty}^{\infty} xf(x)dx
$$

## Expectation using distribution function and probability
For any continuous random variable $X$ with distribution function $F$ and probability density function $f$,
$$
E(X) = \int_0^{\infty} \big[ 1 - F(t) \big] dt - \int_0^{\infty} F(-t)dt = \int_0^{\infty} P(X \gt t) dt - \int_0^{\infty} P(X \le -t)dt
$$

### Proof
$$
E(X) = \int_{-\infty}^{\infty} xf(x)dx = \int_{-\infty}^0 xf(x)dx + \int_0^{\infty} xf(x)dx \\\ = 
-\int_{-\infty}^0 \big( \int_0^{-x} dt \big) f(x)dx + \int_0^{\infty} \big( \int_0^x dt \big) f(x)dx \\\ =  -\int_0^{\infty} \big( \int_{-\infty}^{-t} f(x)dx \big) dt + \int_0^{\infty} \big( \int_t^{\infty} f(x)dx \big) dt \\\ = -\int_0^{\infty} F(-t)dt + \int_0^{\infty} \big[ 1 - F(t) \big] dt
$$

At the second equation from last, you need to change the order of integration


---
**Change of order of integration**
![](/posts/statistics/chapter6/images/change_of_order_of_integration.png)

---

## Expectation of function of random variable
Let $X$ be a continuous random variable with pdf $f(x)$; then for any function $h: R \rightarrow R$,
$$
E[h(X)] = \int_{-\infty}^{\infty} h(x)f(x)dx
$$

## Linearity of expectation
Let $X$ be a continous random variable with probability density function $f(x)$. Let $h_1, h_2, \dotso, h_n$ bt real-valued functions, and $\alpha_1, \alpha_2, \dotso, \alpha_n$ be real numbers, Then

$$
E[\alpha_1h_1(X) + \alpha_2 h_2(X) + \dotsm + \alpha_n h_n(X)]
$$

## Example
A point $X$ is selected from the interval $(0, \pi/4)$ randomly. Calculate $E(cos2X)$

### Solution
First calculate the distribution function of $X$.
$$
F(t) = P(X \le t)
\begin{cases}
0 & t \lt 0 \\\
\frac{t - 0}{\pi/4 - 0} = \frac{4t}{\pi} & 0 \le t \lt \pi/4 \\\
1 & t \ge \pi/4
\end{cases}
$$

Thus $f$ is
$$
f(t) = \begin{cases}
\frac{4}{\pi} & 0 \lt t \lt \pi/4 \\\
0 & \text{otherwise}
\end{cases}
$$

Then the first expectation will be,
$$
E(cos2X) = \int_{-\infty}^{\infty} cos2x f(x)dx = 
\int_{0}^{\pi/4} \frac{4}{\pi} cos2x dx = \big[ \frac{2}{\pi} sin2x \big]_0^{\pi/4} = \frac{2}{\pi}
$$
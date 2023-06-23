---
title: "Exercise"
date: 2023-06-05T20:29:18+09:00
draft: true
---
## Problem 3
A statistical survey shows that only 2% of secretaries know how to use the highly sophisticated word processor language TEX. If a certain mathematics department prefers to hire a secretary who knows TEX, what is the least number of applicants that should be interviewed so as to have at least a 50% chance of ﬁnding one such secretary?

### Solution
Let's say the number of applicants needed to be interviewed is X. X follows binomial distribution with the p (0.02). The probability of not getting an applicant who can use Tex is $q = 1-p = 0.98$. The probability of getting no applicant who can use Tex in $x$ interviews is $q^x$. Then, the probability of getting at least one applicant who can use Tex in $x$ interviews is $1 - q^x$. The problem want this probability be greater than 0.5; that is,
$$
1 - q^x \ge 0.5
$$

If you solve the inequality,
$$
q^x \le 0.5 \\\ 
x \le log_q 0.5 \\\
x \le \frac{log 0.5}{log q} \\\
x \le \frac{log 0.5}{log 0.98} \\\
x \le 34.3 \\\
$$
Therefore, the answer is 35.

## Problem 5
A professor has prepared 30 exams of which 8 are difﬁcult, 12 are reasonable, and 10 are easy. The exams are mixed up, and the professor selects four of them at random to give to four sections of the course he is teaching. How many sections would be expected to get a difﬁcult test?

## Solution
Let's call the number of sections which get a difficult test as X. X follows binomial distribution with n (4) and p (8/30) since there are four sessions and 8 difficult problems in 30 problems. We want to find the expected value of $X$; that is $E\[X\]$. The expectation for binomial random variable is $np$.
Therefore, the anwser is
$$
E[X] = np = 4 * \frac{8}{30} = 1.067
$$

## Problem 9
Experience shows that $X$, the number of customers entering a post ofﬁce, during any period of length $t$, is a random variable the probability mass function of which is of the form
$$
p(i) = k \frac{(2t)^i}{i!}, \qqad i = 0, 1, 2, \dotso
$$

(a) Determine the value of $k$
(b) Compute $P(X \lt 4)$ and P(X \gt 1).

### Solution (a)
By the definition of probability, the sum of all probability should be 1. 
$$
\sum_{i=0}^{\infty} p(i) = \sum_{i=0}^{\infty} k \frac{(2t)^i}{i!} = k \sum_{i=0}^{\infty} \frac{(2t)^i}{i!} = k e^{2t} = 1
$$

The answer is 
$k = e^{-2t}$

### Solution (b)

$$
P(X \lt 4) = p(0) + p(1) + p(2) + p(3) = e^{-2t} (1 + 2t + 2t^2 + 4t^3/3)
$$

$$
P(X > 1) = 1 - P(X = 0) - P(X = 1) = 1 - e^{-2t} (1 + 2t)
$$

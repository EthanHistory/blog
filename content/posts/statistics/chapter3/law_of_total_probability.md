---
title: "Law of total probability"
date: 2023-05-25T20:29:08-07:00
draft: false
tags: ["statistics-ch3"]
---

If $\\{B_1, B_2, \dotso, B_n\\}$ is a partition of the sample space of an experiment and $P(B_i) \gt 0$ for $i = 1, 2, \dotso, n$, then for any event $A$ of $S$,
$$
P(A) = P(A|B_1)P(B_1) + P(A|B_2)P(B_2) + \dotsm + P(A|B_n)P(B_n) \\\
= \sum^n_{i=1}P(A|B_i)P(B_i)
$$

# Example
An insurance company rents 35% of the cars for its customers from agency $\mathrm{I}$ and 65% from agency $\mathrm{II}$. If 8% of the cars of agency $\mathrm{I}$ and 5% of the cars of agency $\mathrm{II}$ break down during the rental periods, what is **the probability that a car rented by this insurance company breaks down?**

## Solution
Event $\mathrm{I}$: a car from agency $\mathrm{I}$ is rented by the insurance company.

Event $\mathrm{II}$: a car from agency $\mathrm{II}$ is rented by the insurance company. Since we suppose there are only two agencies, it is actaully $\mathrm{I}^c$

Event $A$: the rented car by the insurance company breaks down.

By the law of total probability,
$$
P(A) = P(A|\mathrm{I})P(\mathrm{I}) + P(A|\mathrm{II})P(\mathrm{II}) = 0.08 \times 0.35 + 0.65 \times 0.05 = 0.0605
$$
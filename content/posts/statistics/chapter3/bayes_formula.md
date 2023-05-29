---
title: "Bayes formula"
date: 2023-05-25T20:34:22-07:00
draft: false
tags: ["statistics-ch3"]
---

Let $\\{B_1, B_2, \dotso, B_n\\}$ be a partition of the sample space $S$ of an experiment. If for $i = 1, 2, \dotso, n$, $P(B_i) \gt 0$, then for any event $A$ of $S$ with $P(A) \gt 0$,

$$
P(B_k | A) = \frac{P(A|B_k)P(B_k)}{\sum^n_{i=1}P(A|B_i)P(B_i)} = \frac{P(A|B_k)P(B_k)}{P(A)}
$$

# Example
In a study conducted three years ago, 82% of the people in a randomly selected sample were found to have "good" financial credit ratings, while the remaining 18% were found to have "bad" financial credit ratings. Current records of the people from that sample show that 30% of those with bad credit ratings have since improved their ratings to good, while 15% of those with good credit ratings have since changed to having a bad credit rating.   
What **percentage of people with good credit ratings now had bad ratings three years ago**?

## Solution
Event $B$: a randomly selected person had bad ratings three years ago.

Event $G$: the person has improved their ratings to good.

the percentage can be calculated by $P(B|G)$

By the bayes formula,
$$
P(B|G) = \frac{P(G|B)P(B)}{P(G|B)P(B) + P(G|B^c)P(B^c)} = \frac{(0.30)(0.18)}{(0.30)(0.18)+(0.85)(0.82)} = 0.072
$$
---
title: "Statistics_Ghahramani3 1"
date: 2023-04-17T17:06:30Z
draft: true
math: true
---

# Conditional Probability
- definition
If $P(B) \le 0$, the conditional probability of A given B,
$$
P(A|B) = \frac{P(AB)}{P(B)}
$$


---
**Note**

An important feature of conditional probabilities (stated in the following theorem) is that
they satisfy the same axioms that ordinary probabilities satisfy. This enables us to use the
theorems that are true for probabilities for conditional probabilities as well.

Let $S$ the sample space of an experiment, and let $B$ be an event of $S$ with $P(B) \gt 0$
1. $P(A|B) \ge 0$ for any event $A$ of $S$
2. $(S|B) = 1$
3. If $A_i$, is a sequence of mutually exclusive events, then
$$
P \bigg( \bigcup_{i=1}^{\infty} A_i | B \bigg) = \sum_{i=1}^{\infty} P(A_i | B)
$$ 

---

# The multiplcation rule
If $P(A_1A_2A_3...A_{n-1}) > 0$, then
$$
P(A_1A_2A_3...A_{n-1}) = \\\
P(A_1)P(A_2 | A_1)P(A_3 | A_1A_2)...P(A_n | A_1A_2A_3...A_{n-1})
$$

# Bayes formula

# Independence

Two events $A$ and $B$ are independent if
$$
P(AB) = P(A)P(B)
$$

- If $A$ and $B$ are independent, then $A$ and $B^c$ are independent as well 
- If $A$ and $B$ are independent, then $A^c$ and $B^c$ are independent as well

---
**Mutually exclusive $\neq$ independence**

You may think $A$ and $B$ are independent of each other if $A$ and $B$ are mutually exclusive events each of which probability is positive. However, it is not but rather opposite: $A$ and $B$ are dependent. If $A$ occured, $P(B | A)$ is zero, that is, the event $B$ is dependent on $A$.

---


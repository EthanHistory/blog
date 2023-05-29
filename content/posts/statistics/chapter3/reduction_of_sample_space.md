---
title: "Reduction of sample space"
date: 2023-05-25T20:28:24-07:00
draft: false
tags: ["statistics-ch3"]
---

Let $B$ be an event of a sample space $S$ with $P(B) \gt 0$. For a subset $A$ of $B$, define $Q(A) = P(A|B)$.  
Then $Q$ is a function from the set of subsets of $B$ to [0, 1] and it satisties the axioms that probabilities do, and hence it is a probability function.  
Note that while $P$ is defined for all subsets of $S$, the probability function $Q$ is defined only for subsets of $B$. Therefore, for $Q$, the sample space is reduced from $S$ to $B$.  

The reduction of sample space is sometimes very helpful in calculating conditional probabilities.

# Example 1
A child mixes 10 good and three dead batteries. To ﬁnd the dead batteries, his father tests them one-by-one and without replacement.  
If the ﬁrst four batteries tested are all good, what is the probability that the ﬁfth one is dead?

## Solution
You can rephrase the problem in the reduced sample space where six good and three dead batteries are mixed. In that sample space, the probability of selecting a dead battery is $\frac{3}{9} = \frac{1}{3}$

# Example 3
A farmer decides to test four fertilizers for his soybean ﬁelds. He buys 32 bags of fertilizers, eight bags from each kind, and tries them randomly on 32 plots, eight plots from each of ﬁelds $A$, $B$, $C$, and $D$, one bag per plot. If from type I fertilizer one bag is tried on ﬁeld $A$ and three on ﬁeld $B$, what is the probability that two bags of type I fertilizer are tried on ﬁeld $D$?

## Solution (?)
$$
\frac{\binom{4}{2} \binom{12}{6}}{\binom{16}{8}} \sim 0.43
$$
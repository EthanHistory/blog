---
title: "Conditional probability"
date: 2023-05-25T20:25:26-07:00
draft: false
tags: ["statistics-ch3"]
---

If $P(B) \gt 0$, the conditional probability of $A$ given $B$, denoted by $P(A|B)$, is defined to be $P(A|B) = \frac{P(AB)}{P(B)}$.

# Example 1
From the set of all families with two children, *a family* is selected at random and is found to have a girl.  
What is **the probability that the other child of the family is a girl**?  
Assume that in a two-child family all sex distributions are equally probable.

## Solution
Let $B$ and $A$ be the events that the family has a girl and the family has two girls, respectively.  
We are interested in $P(A|B)$. Now, in a family with two children there are four equally likely possibilies: (boy, boy), (girl, girl), (boy, girl), (girl, boy), where by, say, (girl, boy), we mean that the older child is a girl and the younger is a boy.  
Thus $P(B) = \frac{3}{4}, P(AB) = \frac{1}{4}$. Hence,
$$
P(A | B) = \frac{P(AB)}{P(B)} = \frac{1/4}{3/4} = \frac{1}{3}
$$

# Example 2
From the set of all families with two children, *a child* is selected at random and is found to be a girl. What is the probability that the second child of this girl's family is also a girl? Assume that in a two-child family all sex distributions are equally probable.

## Solution
Let $B$ be the event that the child selected at random is a girl, and let $A$ be the event that the second child of her family is also a girl. $P(A)$ is same as that of **Example1**
Different from the **Example1**, in this case a child is randomly selected, which means $P(B) = \frac{1}{2}$. This makes the result probability different from that of **Example1**
$$
\frac{P(AB)}{P(B)} = \frac{1/4}{1/2} = \frac{1}{2}
$$




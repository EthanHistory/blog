---
title: "Axioms of probability"
date: 2023-05-24T10:16:49-07:00
draft: false
tags: ["statistics-ch1"]
---

Let $S$ be the sample space of a random phenomenon. Suppose that to each event $A$ of $S$, a number denoted by $P(A)$ is associated with $A$. If $P$ satisfies the following axioms, then it is called a **probability** and the number $P(A)$ is said to be the **probability of A**

- Axiom 1: $P(A) \ge 0$
- Axiom 2: $P(S) = 1$
- If $\\{A_1, A_2, A_3, \dotso \\}$ is a sequence of mutually exclusive events then 
$$
P \bigg( \bigcup^n_{i=1} A_i \bigg) = \sum^n_{i=1} P(A_i) \qquad (n = \infty)
$$
---
title: "Statistics Ghahramani Ch 1.5"
date: 2023-04-05T21:00:42Z
draft: false
math: true
---

### increasing / decreasing sequence
- increasing sequence $E_n$
$$
    E_n \subseteq E_{n+1} \text{ for all } n \ge 1
$$

For an increasing sequence of events, limitation of the sequence is defined as union of all events in the sequence.
$$
\lim_{n \to \infty} E_n = \bigcup_{i=1}^{\infty} E_i
$$

- decreasing sequence $E_n$
$$
    E_n \supseteq E_{n+1} \text{ for all } n \ge 1
$$

Similiary, for an decreasing sequence of events, limitation of the sequence is defined as intersection of all events
$$
\lim_{n \to \infty} E_n = \bigcap_{i=1}^{\infty} E_i
$$


### Continuity of Probability Function
For any increasing or decreasing sequence of events $E_n, n \ge 1$  
the probability function $P$ is continueous on R for the sequence, which mean
$$
\lim_{n \to \infty} P(E_n) = P(\lim_{n \to \infty} E_n)
$$
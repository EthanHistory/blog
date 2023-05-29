---
title: "Independence of events"
date: 2023-05-25T20:34:35-07:00
draft: false
tags: ["statistics-ch3"]
---

Two events $A$ and $B$ are called **independent** if
$$
P(AB) = P(A)P(B)
$$

If two events are not independent, they are called **dependent**.

---
**NOTE**  
Mutually exclusiveness and independence is not the same. Mutually exclusiveness means that there is no intersection between two events, whereas independence means that either of event has no effect to the other. 

---

# Example
In the experiment of drawing a card from an ordinary deck of 52 cards (4 types and 13 cards for each type), let $A$ and $B$ be the events of getting a heart and an ace, respectively.
Are the two events are independent?

## Solution
Event H: getting a heart  
Event A: getting a ace  

$$
P(HA) = 1/52 \\\
P(H) = 1/4 \\\
P(A) = 1/13 
$$

Since $P(HA) = P(H)P(A)$, they are independent events.
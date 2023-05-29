---
title: "The multiplication rule"
date: 2023-05-25T20:28:41-07:00
draft: false
tags: ["statistics-ch3"]
---
For n events $\\{A_i\\}$,
If $P(A_1A_2A_3 \dotsm A_{n-1}) \gt 0$, then
$$
P(A_1A_2A_3 \dotsm A_n) = \\\
P(A_1)P(A_2|A_1)P(A_3|A_1A_2) \dotsm P(A_n|A_1A_2A_3 \dotsm A_{n-1})
$$

# Example
A consulting firm is awarded 43% of the contracts it bids on. Suppose that Nordulf works for a division of the firm that gets to do 15% of the projects contracted for. If Nordulf directs 35% of the projects submitted to his division, what percentage of all bids submitted by the firm will result in contracts for projects directed by Nordulf?

## Solution
Event $A_1$: the firm is awarded a contract for some randomly selected bid.  
Event $A_2$: the contract will be sent to Nordulf's division.  
Event $A_3$: Nordulf will direct the project.  

The desired probability is calculated as follows:
$$
P(A_1A_2A_3) = P(A_1)P(A_2 | A_1)P(A_3 |A_1A_2) = 0.43 \times 0.15 \times 0.35 = 0.0226
$$
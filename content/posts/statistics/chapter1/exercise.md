---
title: "Exercise"
date: 2023-05-23T09:42:12-07:00
draft: false
tags: ["statistics-ch1"]
---

# Problem 1-2-13
When flipping a coin more than once, what experiment has a sample space defined by the following?
$$
S = \\{TT, HTT, THTT, HHTT, HHHTT, HTHTT, THHTT, \dotso\\}
$$

## Solution
You can see the pattern in the sample space where there are two consecutive tails in the end of each outcomes. Therefore, the experiment is flipping a coin until two tails appear consecutively.

# Problem 1-2-15
A limousine that carries passengers from an airport to three different hotels just left the airport with two passengers. Describe the sample space of the stops and the event that both of the passengers get off at the same hotel.

## Solution
Let's call each hotel $A$, $B$, $C$. Then, the sample space is $S = \\{AA, BB, CC, AB, BA, AC, CA, BC, CB\\}$. The event $E$ is $\\{AA, BB, CC\\}

# Problem 1-2-19
Find the simplest possible expression for the following events.
$$
(a) (E \cup F)(F \cup G) \\\
(b) (E \cup F)(E^c \cup F)(E \cup F^c)
$$

## Solution (a)
By distributive laws,
$$
(E \cup F)(F \cup G) = EG \cup F
$$

## Solution (b)
By the distributive and associative laws,
$$
(E \cup F)(E^c \cup F)(E \cup F^c) =
[(E \cup F)(E^c \cup F)](E \cup F^c) =
[(F \cup EE^c)](E \cup F^c) = \\\
F(E \cup F^c) = 
FE \cup FF^c =
FE
$$

# Problem 1-2-23
Let $E$, $F$, and $G$ be three events. Determine which of the following statements are correct and which are incorrect. Justify your answers.

$$
(a) (E-EF) \cup F = E \cup F
$$

## Solution
Since the difference can be rewritten as intersection
$E - F = EF^c$,
$$
(E - EF) \cup F =
[E(EF)^c]\cup F
$$

Apply De Morgan's second law,
$$
[E(EF)^c]\cup F = 
[E(E^c \cup F^c)] \cup F
$$

Apply distributive laws,
$$
[E(E^c \cup F^c)] \cup F =
(EE^c \cup EF^c) \cup F = 
EF^c \cup F = \\\
(E \cup F)(F^c \cup F) =
E \cup F
$$

# Problem 1-4-3 (?)
Suppose that 33% of the people have $O^+$ blood and 7% have $O^-$. What is the probability that the next president of the United States has type $O$ blood?

## Solution 
0.40

# Problem 1-4-5
The probability that an earthquake will damage a certain structure during a year is 0.015. The probability that a hurricane will damage the same structure during a year is 0.025. If the probability that both an earthquake and a hurricane will damage the structure during a year is 0.0073, what is the probability that next year the structure will not be damaged by a hurricane or an earthquake?

## Solution
Let's call the event where an earthquake will damage during a year $E$ and the event where a hurricane will do $H$. Then,
$P(E) = 0.015$, $P(H) = 0.025$, and $P(EH) = 0.0073$.

The problem asks $P((E \cup H)^c)$.
$$
P((E \cup H)^c) =
1 - P(E \cup H) =
1 - [P(E) + P(H) - P(EH)] =
1 - [0.015 + 0.025 - 0.0073] =
0.9673
$$

# Problem 1-4-41
Two numbers are successively selected at random and with replacement from the set \\{1, 2, \dotso, 100\\}. What is the probability that the first one is greater than the second?

## Solution

The number of all possible selected pair of numbers is $100 \times 100$ and each pair has same probability to be occured because you randomly selected from the set with replacement.  

If you select 100 for the first number, there are 99 numbers that are less than 100. If you select 99 for the first number, there are 98 numbers and so on. Finally, the number of pairs that you can satisfy the condition is $99 + 98 + 97 + \dotsm + 1 = \frac{99 \times 100}{2}$.  

By this theorem, you can calculate the probability of the event $A$ that the first number is greater than the second.
$$
N(A) = \frac{99 \times 100}{2} \\\
N = 100 \\\
P(A) = \frac{N(A)}{N} = \frac{99}{200}
$$

# Problem 1-5-1
A but arrives at a station every day at a random time between 1:00 P.M. and 1:30 P.M. What is the probability that a person arriving at this station at 1:00 P.M. will have to wait at least 10 minutes?

## Solution
2/3



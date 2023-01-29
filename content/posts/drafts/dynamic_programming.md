---
title: "Dynamic programming"
date: 2022-07-22T19:17:32+09:00
draft: true
---

A technique solving a problem by using solutions for the smaller problems

1. How to break the problem down into smaller pieces?
2. recursive relation doesn't represent the solution of the problem -> they are just memory to help DP.  

3. especially in array problems, sometime it is hard to break down the problem and define list or dictionary for memory

How can we get DP[n] from DP[n-1] and x
DP[n] ~ F(DP[n-1], x) ???? 
[ n-1 ] x 

Here, keep the number 2 in mind again, DP is not always the solution, it can be just memory to help for the solution
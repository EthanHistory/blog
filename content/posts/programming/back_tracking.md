---
title: "Backtracking"
date: 2022-07-06T09:22:25+09:00
draft: true
tags: ["algorithm"]
---

# Introduction
Backtracking is a very common algorithm in many algorithm problems. You would've known it in theory or at least heard it before. However, in my case, whenever I encountered the backtracking problems, it is more likely to struggle to solve them than apply backtracking to the problems. Therefore, I tried to fully understand the backtracking.

> **Wikipedia definition for "Backtracking"**
>
> Backtracking is a general algorithm for finding solutions to some computational problems, notably constraint satisfaction problems, that incrementally builds candidates to the solutions, and abandons a candidate ("backtracks") as soon as it determines that the candidate cannot possibly be completed to a valid solution.

The definition of backtracking contains the meaning of not only what is backtracking, but also when you can effectivly use backtracking algorithm.

Simply put, backtracking is a one of recursive algorithms to solve "imcremental searching problem" (not official name) more efficiently.
And the overall structure of backtracking is like below.
```python

def backtrack(candidate):
    # 1. Validate the candidate
    if is_solution(candidate):
        # Found solution!
        return 
    
    # 2. Iterate all possible candidates.
    for next_candidate in list_of_candidates:
        if is_valid(next_candidate):
            # 3. Try this partial candidate solution
            place(next_candidate)
            # 4. Given the candidate, explore further.
            backtrack(next_candidate)
            # 5. Restore the state before trying the partial candidate 
            remove(next_candidate)
```

Different from brute force searching algorithm, backtracking incrementally builds up the candidates. For the candidates are ancestors of many solutions, discarding even one candidate while backtracking makes us to skip unnecessary failure cases and can save much more time than brute force.

# Back Tracking VS Depth First Search (DFS)
If you know the above framework, you are able to initiate coding in most of back tracking problems. However, sometimes, you might have experienced failing to solve a back tracking problem which was actually  

    Backtracking can stop (finish) searching certain branch by checking the given conditions (if the condition is not met). However, in DFS, you have to reach to the leaf node of the branch to figure out if the condition is met or not, so you cannot stop searching certain branch until you reach to its leaf nodes.


# Reference
https://leetcode.com/problems/combinations/discuss/844096/backtracking-cheatsheet-simple-solution

https://leetcode.com/discuss/general-discussion/136503/what-is-difference-between-backtracking-and-depth-first-search
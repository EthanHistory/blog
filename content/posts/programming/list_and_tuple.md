---
title: "List And Tuple"
date: 2022-06-07T16:59:42-07:00
draft: False
tags: ["Python"]
---
# Intro
There are few primitive types, and lots of build-in types. However, only few types are frequently used in practice. It might be because other types only can be used in special cases but it is also true that I don't know how and when to use them correctly. Tuple is one of such cases. When I code with Python, mostly I use List to contain sequenal values and objects, but there have been few cases when I used Tuple. It seemed to me that Tuple is like old(?) type because Tuple is almost the same as List except that I can't change objects in a tuple. Judging by any perspective, it seemed to me that List is going to win against Tuple. Then why we should use Tuple and why does it exist?

# Difference and commonality between List and Tuple

## Commonality
First, Let's see what is different and same between these two types.  
Both of them are in ***sequence data types*** which contain strings, Unicode strings, lists, tuples, bytearrays, buffers, and xrange objects. Sequence data types support belows operations.

| Operation      | Result | 
| ----------- | ----------- | 
| x in s      | True if an item of s is equal to x, else False       |
| x not in s   | False if an item of s is equal to x, else True        |
| s + t   | the concatenation of s and t        |
| s * n, n * s   | equivalent to adding s to itself n times        |
| s[i]   | ith item of s, origin 0        |
| s[i:j]   | slice of s from i to j        |
| s[i:j:k]   | slice of s from i to j with step k        |
| len(s)   | length of s        |
| min(s)   | smallest item of s        |
| max(s)   | largest item of s        |
| s.index(x)   | index of the first occurrence of x in s        |
| s.count(x)   | total number of occurrences of x in s        |

## Functional distinction
However, Tuple is an **immutable** data type, which means you can't change this Tuple (adding or removing any element). It's very similar with const * T array in C++. You can change it's element but not Tuple itself. On the other hand, List is **mutable** data type as you can extend and shrink it.

## Semantic distinction
Apart from tuples being immutable there is also a semantic distinction and I think this is what I didn't think of. Tuple is heterogeneous data structure (i.e., its' entries/elements have different meanings). Immutable property of Tuple makes it gurantee to hold that structure. On the other hand, List contains homogeneous sequence so it takes more importance on ordering for interpreting a list.  
Putting it simply, Tuple has structure and List has order.


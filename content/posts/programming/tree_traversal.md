---
title: "Tree Traversal"
date: 2022-05-19T12:56:45-07:00
draft: false
tags: ["algorithm"]
---
## What is tree traversal?
Traversal is examining all the nodes/records/units in a data structure.
Unlike linear data structures (Array, Linked List, Queues, Stacks, etc) which have only one logical way, maybe two ways (forward, backward), Tree can be traversed in several ways. Each traversal method is different in term of their order of examining each node in a tree but the common property of tree traversal is they all are able to be defined recursively. 

## In-order / Pre-order / Post-order traversal
The first three way of traversing a Tree are "In-order / Pre-order / Post-order" traversal. They share the same recursive structure of traversing Tree, only different when they examine the root node.

the recursive structure is composed of below three operations.
    
    < Traverse a Tree >
    1. Examine the root node
    2. Traverse the left subtree
    3. Traverse the right subtree

    in-order : 2 -> 1 -> 3
    pre-order : 1 -> 2 -> 3
    post-order : 2 -> 3 -> 1

By the way, you can also use a stack to do these traversals as non-recursive way. Maybe it is not a coincidence that they look like Depth First Search algorithm in terms of relatedness with stack and top-down approach. So I guess some calls these traversals as Depth First Traversal.


## level-order traversal
Level-order traversal is another way of traversing a Tree, examining all the nodes in each level order. It can also be defined as recursive way but it doesn't share the three operations and not efficient due to duplicated operations. As opposed to Depth First Traversal, somtimes it is called Breadth First Traversal
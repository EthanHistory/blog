---
title: "BinarySearch"
date: 2022-07-15T14:32:09+09:00
draft: true
---

# BinarySearch a value
```python
# Python3
def binarySearch(nums: List[int], target: int) -> int:
    # initialize side pointers
    n, left, right = len(nums), 0, len(nums)-1

    # binary search the target value, shrinking search space into half in every step

    while left <= right:
        # the mid index between left and right
        mid = (left + right) // 2

        if target == nums[mid]:
            # Find the target
            return mid
        elif target > nums[mid]:
            left = mid + 1
        else:
            right = mid - 1
    
    # there is no target in the list
    return -1

# [left, right] is search space where the target may exist
# And this condition should be consistent in while loop
# That's why we update left = mid + 1 or right = mid - 1
# instead of left = mid or right = mid
# the value of the mid index is definitely not target casue we check it before

# TODO : How does this algorithm ensure convergence as you escape the while loop in any cases?
```

# BinarySearch the first value and the last value
https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/submissions/

```python
# this problem is extension of the binarySearch algorithm.
# values of the input list can be duplicated
# the objective is not only finding the index of target value,
# but also the first or the last index of the target value.
# ex) [1, 2, 3, 4, 4, 4, 4, 5]
# the first index of value 4 = 3
# the last index of value 4 = 6

def binarySearch(nums: List[int], target: int, first=True) -> int:
    # initialize side pointers
    n, left, right = len(nums), 0, len(nums)-1

    # binary search the target value, shrinking search space into half in every step

    while left < right:
        # the mid index between left and right
        mid = (left + right) // 2

        if target == nums[mid]
            # Instead of returning mid index,
            # Make one of side pointers keep tracking the target.
            if first:
                # the right index will is tracking the first target.
                # Give up the indices that bigger than mid,
                # of which values are second target, ..., last target
                right = mid
            else:
                left = mid
        elif target > nums[mid]:
            left = mid + 1
        else:
            right = mid - 1
    
    # If you are trying to find the first target,
    # the target may exist in the right index
    if first and nums[right] == target:
        return right
    elif (not first) and nums[left] == target:
        return left

    # there is no target in the list
    return -1

    # TODO : How does this algorithm ensure convergence as you escape the while loop in any cases?

```

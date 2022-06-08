---
title: "Bit operations"
date: 2022-06-07T11:45:19-07:00
draft: False
tags: ["python"]
---
# Intro
Bit operation is very easy concept so it is hard to forget what bit operations are there and how they are working. However, I forgot the notation of these operations in Python while solving some algorithm problems, which is the reason I am organizing this post.

# Bit operations in Python
- x << y  
Returns x with the bits shifted to the left by y places (and new bits on the right-hand-side are zeros). This is the same as multiplying x by 2**y.
You can also use
- x >> y  
Returns x with the bits shifted to the right by y places. This is the same as //'ing x by 2**y.
- x & y  
Does a "bitwise and". Each bit of the output is 1 if the corresponding bit of x AND of y is 1, otherwise it's 0.
- x | y  
Does a "bitwise or". Each bit of the output is 0 if the corresponding bit of x AND of y is 0, otherwise it's 1.
- ~ x  
Returns the complement of x - the number you get by switching each 1 for a 0 and each 0 for a 1. This is the same as -x - 1.
- x ^ y  
Does a "bitwise exclusive or". Each bit of the output is the same as the corresponding bit in x if that bit in y is 0, and it's the complement of the bit in x if that bit in y is 1.

Any of these operations except unary operation(~), you can apply them with assignment like this

    x <<= y
    x >>= y
    x &= y
    x |= y
    x ^= y

# Reference
https://wiki.python.org/moin/BitwiseOperators
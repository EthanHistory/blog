---
title: "Pointer VS Reference"
date: 2022-09-25T12:17:55-07:00
draft: False
tags: ["C++"]
---

# Intro   
I think "Pointer" would be one of the most complicate concepts when you start studying C++. Unlike python, explicitly managing the memory you use in your program is quite hard. Another thing that burden you and confuse you is the concept "Reference". One can use it to explain "memory address of variable" as well but what I am talking about now is a special alias in C++. the usage of Pointer and Reference are so similar so that you can easily fall into taking them as the same concept. However, in several aspects, you can understand how they are quite different through this post. You can also under stand some of terms that are used along with Pointer and Reference.

> Note: I may use exact sentences and example codes from the references to make my point more efficiently in some of bullet points.

# Assignment and Binding
You can think of binding as a label on a suitcase, and assignment as a suitcase.
A pointer can be re-assigned. However,
A reference can't be re-bound and must be bound at initialization
```c++
int x = 5;
int y = 6;
int *p;
p = &x;
p = &y;
*p = 10;
assert(x == 5);
assert(y == 10);
```

# Data type and Alias
Pointer is a special data type, which is it takes some of memory space to contain the address of other object that it points to. However, Reference is not a data type, but only an alias for an object.
```c++
int x = 0;
int &r = x;
int *p = &x;
int *p2 = &r;

assert(p == p2); // &x == &r
assert(&p != &p2);
```

# Nested indirection
You can have arbitrarily nested pointers to pointers offering extra levels of indirection. References only offer one level of indirection.
```c++
int x = 0;
int y = 0;
int *p = &x;
int *q = &y;
int **pp = &p;

**pp = 2;
pp = &q; // *pp is now q
**pp = 4;

assert(y == 4);
assert(x == 2);
```

# NULL
A pointer can be assigned nullptr, whereas a reference must be bound to an existing object. If you try hard enough, you can bind a reference to nullptr, but this is undefined and will not behave consistently.

# ++ operation
Pointers can iterate over an array; you can use ++ to go to the next item that a pointer is pointing to, and + 4 to go to the 5th element. This is no matter what size the object is that the pointer points to.

# Dereferencing
dereferencing is accessing the object that the pointer points to. A pointer needs to be dereferenced with * to access the memory location it points to, whereas a reference can be used directly.

# Array
References cannot be put into an array

In the C++ Standard §8.3.2/4:
> There shall be no references to references, no arrays of references, and no pointers to references.


# Temporary
Const references can be bound to temporaries
```c++
const int &x = int(12); // legal C++
int *y = &int(12); // illegal to take the address of a temporary.
```

> A temporary is an unnamed object (the results of some expressions), and is always an rvalue. Or perhaps one should better say that an expression which results in an rvalue is a temporary.

# References
1. https://stackoverflow.com/questions/57483/what-are-the-differences-between-a-pointer-variable-and-a-reference-variable

2. https://stackoverflow.com/questions/1164266/why-are-arrays-of-references-illegal

3. https://stackoverflow.com/questions/48100145/binding-vs-assignment
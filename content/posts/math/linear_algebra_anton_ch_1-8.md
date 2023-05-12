---
title: "Linear_algebra_anton_ch_1 8"
date: 2023-04-25T17:26:08Z
draft: true
math: true
---

# Matrix Transformations

## Vectors
- **vector**  
The elements of $R^n$. Vector is defined in a space so that we call a vector in $R^n$ (n-dimensional space).

- **comma-delimited form (column-vector form)**  
a matrix form of a n-dimensional vector in size of $n \times 1$

- **standard basis vectors**  
$n$ vectors in a n-dimensional space with all unit sizes, being perpendicular each other.

![](/standard_basis_vectors.png)

Since they are basis vectors in $R^n$, all vectors in $R^n$ are expressible in exactly one way as a linear combination of them. For example, if
$$
\vec{x} = \begin{bmatrix} 
x_1 \\\ x_2 \\\ ... \\\ x_{n-1} \\\ x_n 
\end{bmatrix}
$$

Then we can express $\vec{x}$ as
$$
\vec{x} = x_1e_1 + x_2e_2 + ... + x_ne_n
$$

## Functions and Transformations
- **function**  
a rule that associates with each element of a set $A$ one and only one element in a set $B$.

- **image and value**  
$b$ is the image of $a$ under f. If you think this relation like when you are taking photo with your camera, the camera is going to be $f$ and subject is $a$ and the image in the photo is $b$. On the other hand, if you think it in the perspective of $f$, you can say that $f(a)$ is the value of $f$ at $a$.

- **domain and codomain**  
The set $A$ is called domain of $f$ and the set $B$ is codomain of f.

- **range**  
The subset of the codomain that consists of all images of elements in the domain is called the range of f.

- **transformation**  
If $f$ is a function with domain $R^n$ and codomain $R^m$, then we say that $f$ is transformation from $R^n$ to $R^m$ or that $f$ maps from $R^n$ to $R^m$
$$
f: R^n \rightarrow R^m
$$

## Matrix transformation
Another perspective to view linear systems in matrix form,
$$
w = Ax
$$

In matrix transformation, we can denote it by
$$
T_A: R^n \rightarrow R^m
$$

- properties
1. $T_A(\vec{0}) = \vec{0}$
2. $T_A(k\vec{u}) = kT_A(\vec{u})$ 
3. $T_A(\vec{u} + \vec{v}) = T_A(\vec{u}) + T_A(\vec{v})$ 
4. $T_A(\vec{u} - \vec{v}) = T_A(\vec{u}) - T_A(\vec{v})$ 

### Which transformation can be matrix transformation?

Matrix transformations are not the only kinds of transformations. For example, a transformation $w_1 = x_1^2 + x_2^2$ can not be expressed as matrix transformation.
However, if the transformation satisfies additivity property (3) and homogenity property (2) then it is matrix transformation. These properties are called **linearity conditions** and a transformation that satisfies these conditions is called a **linear transformation**.

### One matrix, One linear transformation

If $T_A: R^n \rightarrow R^m$ and $T_B: R^n \rightarrow R^m$ are matrix transformations, and if $T_A(\vec{x}) = T_B(\vec{x})$ for every vector $x$ in $R^n$, then $A = B$ (I skipped the proof). Here, we call this only one matrix as **standard matrix**

### A procedure for finding standard matrices
Actually, this procedure is analoguous to the proof of the previous thorem. You can derive the standard matrix for a linear transformation by useing images of the standard basis vectors under the transformation.

$$
A = [T(e_1) | T(e_2) | ... | T(e_n)]
$$ 
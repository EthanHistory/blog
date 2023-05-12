---
title: "Linear_algebra_anton_ch_3"
date: 2023-05-03T01:09:14Z
draft: true
math: true
---

# Euclidean Vector Spaces
## Dot product
### definition
If $\vec{u}$ and $\vec{v}$ are nonzero vectors in $R^2$ or $R^3$, and if $\theta$ is the angle between $\vec{u}$ and $\vec{v}$, then the **dot product (Euclidean inner product)** of $\vec{u}$ and $\vec{v}$ is denoted by $\vec{u} \cdot \vec{v}$ and is defined as
$$
\vec{u} \cdot \vec{v} = \lVert u \rVert \lVert v \rVert cos \theta
$$

If $\vec{u} = 0$ or $\vec{v} = 0$, then we define $\vec{u} \cdot \vec{v}$ to be 0.

### Component form of dot product
If $\vec{u} = (u_1, u_2, \dotso, u_n)$ and $\vec{v} = (v_1, v_2, \dotso, v_n)$ are vectors in $R^n$, then the **dot product** of $\vec{u}$ and $\vec{v}$ is denoted by $\vec{u} \cdot \vec{v}$ and is defined by 
$$
$\vec{u} \cdot \vec{v}$ = u_1v_1 + u_2v_2 + \dotsm + u_nv_n
$$

### Properties

If $\vec{u}$, $\vec{v}$ and $\vec{w}$ are vectors in $R^n$, and if $k$ is a scalar, then:
1. $\vec{u} \cdot \vec{v} = \vec{v} \cdot \vec{u}$ (Symmetry)
2. $\vec{u} \cdot (\vec{v} + \vec{w}) = \vec{u} \cdot \vec{v} + \vec{u} \cdot \vec{w}$ (Distributive)
3. $k(\vec{u} \cdot \vec{v}) = (k\vec{u}) \cdot \vec{v}$ (Homogeneity)
4. $\vec{v} \cdot \vec{v} \ge 0$ and $\vec{v} \cdot \vec{v} = 0$ if and only if $\vec{v} = 0$ (Positivity)


### Paralleogram equation for vectors
If $\vec{u}$ and $\vec{v}$ are vectors in $R^n$, then
$$
\lVert \vec{u}+\vec{v} \rVert^2 + \lVert \vec{u}-\vec{v} \rVert^2 = 2 (\lVert \vec{u} \rVert^2 + \lVert \vec{v} \rVert^2)
$$

### Another euqation for dot product
If $\vec{u}$ and $\vec{v}$ are vectors in $R^n$, then
$$
\vec{u} \cdot \vec{v} = \frac{1}{4}(\lVert \vec{u}+\vec{v} \rVert^2 - \lVert \vec{u}-\vec{v} \rVert^2)
$$

### Dot product as matrix multiplication
 If $u$ and $v$ are $n \times 1$ matrices (column vectors) and $A$ is an $n \times n$ matrix, then

$$
u \cdot v = u^Tv = v^Tu \\\
Au \cdot v = v^T (Au) = (v^TA) u = (A^Tv)^T u = u \cdot A^Tv \\\
u \cdot Av = (Av)^Tu = (v^TA^T)u = v^T(A^Tu) = A^Tu \cdot v
$$

## Orthogonality
- orthogonal
Two nonzero vectors $\vec{u}$ and $\vec{v}$ in $R^n$ are said to **orthogonal (perpendicular)** if $\vec{u} \cdot \vec{v} = 0$. the zero vector in $R^n$ is orthogonal to every vector in $R^n$.

- normal
a nonzero vector that is orthogonal to the line or plane

- projection theorem
If $\vec{u}$ and $\vec{a}$ are vectors in $R^n$. and if $\vec{a} \neq 0$, then $\vec{u}$ can be expressed in exactly one way in the for $\vec{u} = \vec{w_1} + \vec{w_2}$, where $\vec{w_1}$ is a scalar multiple of $\vec{a}$ and $\vec{w_2}$ is orthogonal to $\vec{a}$.

- vector component of u along a
$$
proj_a \vec{u} = \frac{\vec{u} \cdot \vec{a}}{\lVert \vec{a} \rVert^2} \vec{a}
$$

- vector component of u orthogonal to a
$$
u - proj_a \vec{u} = u - \frac{\vec{u} \cdot \vec{a}}{\lVert \vec{a} \rVert^2} \vec{a}
$$

- Theorem of Pythagoras in $R^n$
If $\vec{u}$ and $\vec{v}$ are orthogonal vectors in $R^n$ with the Euclidean inner product, then
$$
\lVert \vec{u} + \vec{v} \rVert^2 = \lVert \vec{u} \rVert^2 + \lVert \vec{v} \rVert^2
$$

- distance between point and line in $R^2$
the point : $P_0(x_0, y_0, z_0)$
the line : $ax+by+c=0$
$$
D = \frac{ax_0+by_0+c}{\sqrt{a^2 + b^2}}
$$

- distance between point and plane in $R^3$
the point : $P_0(x_0, y_0, z_0)$
the plane : $ax+by+cz+d=0$
$$
D = \frac{ax_0+by_0+cz_0+d}{\sqrt{a^2 + b^2 + c^2}}
$$

## The geometry of linear systems

If $A$ is an $m \times n$ matrix, then the solution set of the homogeneous linear system $Ax = 0$ consists of all vectors in $R^n$ that are orthogonal to every row vector of $A$.

### The relationship between $Ax=0$ and $Ax=b$
A homogeneous linear system $Ax=0$ and A non-homogenous linear system $Ax=b$ has the same coefficient matrix ($A$). These systems are called corresponding linear systems.

The general solution of a consistent linear system $Ax=b$ can be obtained by adding any specific solution of $Ax=b$ to the general solution of $Ax=0$.

![](/relation_between_hom_non_hom_linear_system.png)

## Cross product
If $\vect{u}=(u_1, u_2, u_3)$ and $\vect{v}=(v_1, v_2, v_3)$ are vectors in **3-space**, then the **cross product u \times v** is the vector defined by
$$
\vec{u} \times \vec{v} = (u_2v_3 - u_3v_2, u_3v_1-u_1v_3, u_1v_2 - u_2v_1)
$$

### Relationships involving cross product and dot product
If $u$, $v$, and $w$ are any vectors in 3-space and $k$ in any scalar, then:
1. $u \cdot (u \times v) = 0$ ($u \times v$ is orthogonal to u)
2. $v \cdot (u \times v) = 0$ ($u \times v$ is orthogonal to v)
3. $\lVert u \times v \rVert^2 = \lVert u \rVert^2 \lVert v \rVert^2 - (u \cdot v)^2$ (Lagrange's identity)
4. $u \times (v \times w) = (u \cdot w)v - (u \cdot v) w$ (vector triple product)
4. $(u \times v) \times w = (u \cdot w)v - (v \cdot w) u$ (vector triple product)

Since $u \cdot v = \lVert u \rVert \lVert v \rVert cos \theta$,
$$
\lVert u \times v \rVert = \lVert u \rVert \lVert v \rVert sin \theta
$$

### Properties of Cross Product
If $u$, $v$, and $w$ are any vectors in 3-space and $k$ in any scalar, then:
1. $u \times v = -(\v \times u)$
2. $u \times (v+w) = u \times v + u \times w$
3. $(u+v) \times (w) = u \times w + v \times w$
4. $k(u \times v) = (ku) \times v = u \times (kv)$
5. $u \times 0 = 0 \times u = 0$
6. $u \times u = 0$

### Area of a parallelogram
If $u$ and $v$ are vectors in 3-space, then $\lVert u \times v \rVert$ is equal to the area of the parallelogram determined by $u$ and $v$.
![](/relation_between_hom_non_hom_linear_system.png)

### Scalar triple product
If $u$, $v$, and $w$ are vectors in 3-space, then
$$
u \cdot (v \times w) = u \cdot (\begin{vmatrix} v_2 && v_3 \\\ w_2 && w_3 \end{vmatrix} i - \begin{vmatrix} v_1 && v_3 \\\ w_1 && w_3 \end{vmatrix} j + \begin{vmatrix} v_1 && v_2 \\\ w_1 && w_2 \end{vmatrix} k) = \\\
\begin{vmatrix} v_2 && v_3 \\\ w_2 && w_3 \end{vmatrix} u_1 - \begin{vmatrix} v_1 && v_3 \\\ w_1 && w_3 \end{vmatrix} u_2 + \begin{vmatrix} v_1 && v_2 \\\ w_1 && w_2 \end{vmatrix} u_3 = \\\
\begin{vmatrix} u_1 && u_2 && u_3 \\\ v_1 && v_2 && v_3 \\\ w_1 && w_2 && w_3 \end{vmatrix}
$$
is called the scalar triple product of $u$, $v$, and $w$

### Geometric interpretation of determinants in 2-space and 3-space

1. The absolute value of the determinant
$$
det\begin{bmatrix} u_1 && u_2 \\\ v_1 && v_2 \end{bmatrix}
$$
is equal to the area of parallelogram in 2-space determined by the vectors
$$
u = (u_1, u_2) \\\
v = (v_1, v_2)
$$

2. The absolute value of the determinant
$$
det \begin{vmatrix} u_1 && u_2 && u_3 \\\ v_1 && v_2 && v_3 \\\ w_1 && w_2 && w_3 \end{vmatrix}
$$
is equal to the volume of the parallelepiped in 3-space determined by the vectors
$$
u = (u_1, u_2, u_3) \\\
v = (v_1, v_2, v_3) \\\
w = (w_1, w_2, w_3) 
$$
![](/volume_of_parallelepiped.png)


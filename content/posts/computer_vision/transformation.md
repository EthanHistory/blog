---
title: "2D Projective Transformations"
date: 2022-12-29T19:44:33Z
draft: false
math: true
tags: ["Computer Vision"]
---

![](/2d_projective_transformations.png)

# What is 2D Projective Transformations?
2D Projective Transformations is a group of linear transformations in projective space $P^2$. Each transformation is invariant on geometric properties.

# Prerequisites concepts
- projective space
- homogeneous coordinates
- matrix multiplication
- degree of freedom

# Hierarchy of transformations
![](/hierarchy_of_2d_coordinate_transformations.png)

Note that transformations except projective can also be described via $2 \times 3$ matrix, instead of $3 \times 3$. It is because they are 2D planar transformation in Euclidean space which doesn't require homogeneous coordinates.
If you want to describe them via $3 \times 3$, you can just add a additional row $(0, 0, 1)$ on the bottom.

## inverse transformation
inverse of a transformation is determined by the determinant of the transform matrix. For a arbitrary $3 \times 3$ matrix H, the determinant of H is following.
$$ 
det(H) = 
det \begin{bmatrix}a & b & c\\\ d & e & f \\\ g & h & i\end{bmatrix} = \\\
a \cdot det \begin{bmatrix} e & f \\\ h & i \end{bmatrix} - b \cdot det \begin{bmatrix} d & f \\\ g & i \end{bmatrix} + c \cdot det \begin{bmatrix} d & e \\\ g & h \end{bmatrix} = 
aei - afh -bdi + bfg + cdh - ceg
$$

Since the transformations except projective has $(0, 0, 1)$ as the last row, $g = 0, h =0, i = 1$, which means the determinant can be simplified by the following.
$$
det(H) = ae - bd
$$
And you can easily recognize that the determinant of thses transformations actaully depends on the determinant of its' left upper $2 \times 2$ submatrix $det\begin{bmatrix} a & b \\\ d & e \end{bmatrix}$.
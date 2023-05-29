---
title: "Standard_inner_product_on_matrix"
date: 2023-05-17T21:32:15-07:00
draft: true
---

If $U$ and $V$ are matrices in the vector space $M_{nn}$, then the standard inner product are defined by
$$
<U, V> = tr(U^TV)
$$

which is just the dot product of the corresponding entries in the two matrices. For example, if $U$ and $V$ are
$$
U = \begin{bmatrix} 
u_1 && u_2
\\\ 
u_3 && u_4
 \end{bmatrix}, V = \begin{bmatrix} 
v_1 && v_2
\\\ 
v_3 && v_4
 \end{bmatrix}
$$
Then the standard inner product of them is,
$$
<U, V> = u_1v_1 + u_2v_2 + u_3v_3 + u_4v_4
$$


---
title: "Chapter6 Exercise"
date: 2023-05-17T00:03:02-07:00
draft: true
---

# Problem 1-1
![](/posts/linear_algebra/chapter6/images/problem1_1.png)

## Solution
(a) 12
(b) Knowing that {{< tooltip "inner_product" "properties of inner products" >}},
$$
<kv, w> = k <v, w> = -18
$$

(c) Using another property,
$$
<u+v, w> = <u, w> + <v, w> = -3 - 6 = -9
$$

(d) According to the definition of {{< tooltip "norm_and_distance" "norm" >}},
$$
\lVert v \rVert = \sqrt{<v , v>} = \sqrt{30}
$$

(e) According to the definition of {{< tooltip "norm_and_distance" "distance" >}},
$$
d(u, v) = \lVert u-v \rVert = \sqrt{<u-v , u-v>} = \sqrt{11}
$$

(f) $\sqrt{203}$

# Problem 2-5
![](/posts/linear_algebra/chapter6/images/problem2_5.png)

## Solution
According to the definition of {{< tooltip "angle_between_vectors" "angle between vectors" >}} and {{< tooltip "standard_inner_product_on_matrix" "standard inner product on matrices" >}},

$$
cos \theta = \frac{<U, V>}{\lVert U \rVert \lVert V \rVert} = \frac{tr(U^TV)}{tr(U^TU) tr(V^TV)} = \frac{19}{520}
$$

# Problem 3-3-(a)
![](/posts/linear_algebra/chapter6/images/problem3_3.png)

## Solution
According to the definition of {{< tooltip "standard_inner_product_on_polynomials" "standard inner product on $P_n$" >}} and {{< tooltip "orthogonal_and_orthonormal" "orthogonality" >}}, you should show that each pair of vectors in $\\{p_1, p_2, p_3\\}$ to say that they are orthogonal. However, the standard inner product of $p_1$ and $p_2$ is not zero. 
$$
<p_1, p_2> = \frac{4}{9} - \frac{2}{9} - \frac{4}{9} = - \frac{2}{9}
$$
Therefore, they are not orthogonal.

# Problem 3-24-(a)
![](/posts/linear_algebra/chapter6/images/problem3_24.png)

## Solution
According to the {{< tooltip "projection_on_subspace" "projection on subspace," >}} you can calculate the projection of $b$ on subspace $W$ which $v_1$ and $v_2$ span.
$$
proj_W b = \frac{<b, v_1>}{\lVert v_1 \rVert^2}v_1 + \frac{<b, v_2>}{\lVert v_2 \rVert^2}v_2 = \frac{1}{4}v_1 + \frac{5}{4}v_2 = (\frac{3}{2}, \frac{3}{2}, -1, -1)
$$

# Problem 3-37
![](/posts/linear_algebra/chapter6/images/problem3_37.png)

## Solution
Let's say a new orthonormal basis as $\\{e_1, e_2, e_3\\}$, we can calculate these vectors by {{< tooltip "gram_schmidt_process" "Gram-Schmidt process" >}}; that is,
$$
p_1 = u_1 = (1, 1, 1) \\\
p_2 = u_2 - \frac{<u_2, p_1>}{\lVert p_1 \rVert^2}p_1 = (1, 1, 0) - (1, 1, 1) = (0, 0, -1) \\\
p_3 = u_3 - \frac{<u_3, p_1>}{\lVert p_1 \rVert^2}p_1 - \frac{<u_3, p_2>}{\lVert p_2 \rVert^2}p_2 = (1, 0, 0) - (\frac{1}{3}, \frac{1}{3}, \frac{1}{3}) + (0, 0, 0) = (\frac{2}{3}, -\frac{1}{3}, -\frac{1}{3})
$$

Then, we need to normalize to make them ortonormal.
$$
e_1 = \frac{p_1}{\lVert p_1 \rVert} = (\frac{1}{\sqrt{3}}, \frac{1}{\sqrt{3}}, \frac{1}{\sqrt{3}}) \\\ 
e_2 = \frac{p_2}{\lVert p_2 \rVert} = (0, 0, -1) \\\
e_3 = \frac{p_3}{\lVert p_3 \rVert} = (\frac{2}{\sqrt{6}}, -\frac{1}{\sqrt{6}}, -\frac{1}{\sqrt{6}})
$$



# Problem 3-49
![](/posts/linear_algebra/chapter6/images/problem3_49.png)

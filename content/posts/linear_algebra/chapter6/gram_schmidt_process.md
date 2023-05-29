---
title: "Gram_schmidt_process"
date: 2023-05-18T16:16:05-07:00
draft: true
---

To convert a basis $\\{u_1, u_2, \dotso, u_r\\}$ into an orthogonal basis $\\{v_1, v_2, \dotso, v_r\\}$, perform the following computations:

### step 1
$$
v_1 = u_1
$$

### step 2
$$
v_2 = u_2 - \frac{<u_2, v_1>}{\lVert v_1 \rVert^2}v_1
$$

### step 3
$$
v_3 = u_3 - \frac{<u_3, v_1>}{\lVert v_1 \rVert^2}v_1 - \frac{<u_3, v_2>}{\lVert v_2 \rVert^2}v_2
$$

(continue for $r$ steps)

### Optional step
To convert the orthogonal basis into an orthonormal basis $\\{q_1, q_2, \dotso, q_r\\}$, normalize the orthogonal basis vectors.
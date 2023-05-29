---
title: "Projection_on_subspace"
date: 2023-05-18T16:00:16-07:00
draft: true
---

Let $W$ be a finite-dimensional subspace of an inner product space $V$.

- If $S = \\{v_1, v_2, \dotso, v_r\\}$ is an orthogonal basis for $W$, and $u$ is any vector in $V$, then
$$
proj_W u = \frac{<u, v_1>}{\lVert v_1 \rVert^2}v_1 + \frac{<u, v_2>}{\lVert v_2 \rVert^2}v_2 + \dotsm + \frac{<u, v_r>}{\lVert v_r \rVert^2}v_r
$$


- If $S = \\{v_1, v_2, \dotso, v_r\\}$ is an orthonormal basis for $W$, and $u$ is any vector in $V$, then
$$
proj_W u = <u, v_1>v_1 + <u, v_2>v_2 + \dotsm + <u, v_r>v_r
$$
---
title: Finite Abelian Groups
date: 2019-12-02
math: true
---

Theorem 9.1 - The Fundamental Theorem of Finite Abelian Groups
: Every finite Abelian group $G$ is isomorphic to
$$\Z_{{p_1}^{n_1}} \times \Z_{{p_2}^{n_2}} \times ... \times \Z_{{p_k}^{n_k}}$$
where $p_1, p_2, ..., p_k$ are (not necessarily distinct) primes dividing $|G|$, and $n_1, n_2, ..., n_k$ are positive integers.<br/>
Moreover, the group $G$ is uniquely determines the number of terms ($k$), as well as the intergers $n_1, n_2, ..., n_k$.

### Example 1

Let $G$ be an Abelian group of order $8 = 2^3$. Then $G$ is isomorphic to one of

1. $\Z_{2^3}$ or
2. $\Z_{2^2} \times \Z_{2}$, or
3. $\Z_{2} \times \Z_{2} \times \Z_{2}$

Exercise: Prove that $G \times H \cong H \times G$ for any group $G, H$.

### Example 2

Let $G$ be an Abelian group of order $18 = 2 \cdot 3^2$. Then $G$ is isomorphic to exactly one of

1. $\Z_{2} \times \Z_{3^2}$, or
2. $\Z_{2} \times \Z_{3} \times \Z_{3}$

Consider $\Z_{18}$ or $\Z_{6} \times \Z_{3}$. On A4, we proved that $\Z_m \times \Z_n \cong Z_{mn}$ if and only if $\gcd(m,n) = 1$. Thus $\Z_{18} \cong \Z_2 \times \Z_{3^2}$ and $\Z_{6} \times \Z_{3} \cong \Z_{2} \times \Z_{3} \times \Z_{3}$.

### Example 3

Let $G$ be an Abelian group of order $200 = 2^3 \cdot 5^2$. Then $G$ is isomorphic to exactly one of:

1. $\Z_{2^3} \times \Z_{5^2}$, or
2. $\Z_{2^3} \times \Z_{5} \times \Z_{5}$, or
3. $\Z_{2^2} \times \Z_{2} \times \Z_{5^2}$, or
4. $\Z_{2^2} \times \Z_{2} \times \Z_{5} \times \Z_{5}$, or
5. $\Z_{2} \times \Z_{2} \times \Z_{2} \times \Z_{5^2}$, or
6. $\Z_{2} \times \Z_{2} \times \Z_{2} \times \Z_{5} \times \Z_{5}$

Exercise: Write down all Abelian groups of order $36$ up to isomorphism.

$36 = 2^2 \cdot 3^2$

$G$ is one of:

1. $\Z_{2^2} \times \Z_{3^2}$
2. $\Z_{2} \times \Z_{2} \times \Z_{3^2}$
3. $\Z_{2^2} \times \Z_{3} \times \Z_{3}$
4. $\Z_{2} \times \Z_{2} \times \Z_{3} \times \Z_{3}$

Exercise: Suppose Abelian group $G$ of order $36$ has exactly $3$ element of order $2$ and $2$ element of order $3$. Find a group that isomorphic to $G$.

Recall that $|(a_1, a_2, ..., a_n)| = \lcm(|a_1|,| a_2|,..., |a_n|)$.

$\Z_{4} \times \Z_{9}$ has one element $(2,0)$ of order 2.

For $\Z_{4} \times \Z_{3} \times \Z_{3}$, there are too many element of order $3$: $(0,1,0), (0,0,1), (0,1,1)$.

Similarly, $\Z_{2} \times \Z_{2} \times \Z_{3} \times \Z_{3}$ has $(0,0,1,0),(0,0,0,1),(0,0,1,1),...$ of order $3$.
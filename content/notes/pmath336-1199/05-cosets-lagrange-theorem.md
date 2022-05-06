---
title: Cosets and Lagrange’s Theorem
date: 2020-01-05
math: true
---

Recall in A1 we proved the following theorem.

Theorem
: Let $G$ be a group and $a \in G$ be any element. The map $\phi_a: G \to G$ where $\phi_a(x) = ax$ is a bijection.

We can think of $\phi_a$ as “sliding” the group elements around a group $G$.

Nature extension: “slide” and entire subgroup of $G$ by multiplying every element by a fixed group element.

## Cosets

A coset of a subgroup $H$ of group $G$ is a set obtained by “translating” $H$ by a group element $a$.

e.g.(1) $3\Z \le \Z$
$$\begin{aligned}
0+3\Z &= \{ ..., -6, -3, 0, 3, 6, ...\} \\\\
1+3\Z &= \{ ..., -5, -2, 1, 4, 7, ...\} \\\\
2+3\Z &= \{ ..., -4, -1, 2, 5, 8, ...\} \\\\
\end{aligned}$$
In total there are exactly $3$ different cosets of $3\Z$ in $\Z$. Note that two cosets are either identical or disjoint.

e.g.(2) $\lang 3 \rang = \{0,3\} \le \Z_6$
$$\begin{aligned}
0+\lang 3 \rang &= \{0, 3\} \\\\
1+\lang 3 \rang &= \{1, 4\} \\\\
2+\lang 3 \rang &= \{2, 5\} \\\\
\end{aligned}$$
The cosets cover all of $\Z_6$. We also see that all cosets have the same size. However, cosets are not necessarily subgroups.

e.g.(3) $H = \lang (1 2 3) \rang = \{e, (1 2 3), (1 3 2)\} \le S_3$
$$\begin{aligned}
(1 2 3)H &= \{(1 2 3), (1 3 2), e\} = H \\\\
(1 2) H &= \{(1 2), (2 3), (1 3)\} \\\\
\end{aligned}$$

Exercise: Show $eH = (1 2 3)H = (1 3 2)H = H$ and $(1 2)H=\{(1 2), (2 3), (1 3)\}$.

These are really left cosets because we are multiplying by $a$ on the left. We could just as easily discussed right cosets. Left and right cosets may not be the same when the group is non-Abelian. But the number of left cosets is always the number of right cosets. (see A3Q4)

Definition - Coset
: Let $G$ be a group and $H$ be a subgroup of $G$. Given $a \in G$ the set $aH = \{ah: h \in H\}$ is called a left coset of $H$ containing $a$. Similarly, $Ha = \{ha: h\in H\}$ is a right coset.
: We call $a$ a representative for $Ha$ or $aH$
: Finally, the index of $H$ in $G$ is the number of distinct left or right cosets of $H$ in $G$, denoted $|G:H|$.

Proposition 5.1
: Let $a, b \in G$ and $H \le G$.<br/>
1. $a \in aH$.<br/>
2. $aH = bH \iff b \in aH$.<br/>
3. $aH = bH \iff a^{-1}b \in H$.<br/>
4. $aH = bH$ or $aH \cap bH = \emptyset$.<br/>
5. $|aH| = |H|$.<br/>
6. $aH = Ha \iff aHa^{-1} = H$.<br/>
: Also, analogous statements hold for right cosets.

> Proof:
>
> 1. Since $H \le G$, $e \in H$. Then $a = ae \in aH$.
> 2. If $aH = bH$, by 1, $b \in bH = aH$. If $b \in aH$, then $b=ah$
>    for some $h \in H$, so $bH = (ah)H = a(hH) = aH$.
> 3. $aH = bH \iff b \in aH \iff b=ah \iff a^{-1}b \in H$
> 4. If $aH \cap bH = \emptyset$, we are done. Otherwise, there exists
>    $c \in aH \cap bH$. Then $c \in aH$ and $c \in bH$.
>    By 2, $aH = cH = bH$.
> 5. Since $h \mapsto ah$ is a bijection, $|aH| = |H|$.
> 6. $aH = Ha \iff (aH)a^{-1} = (Ha) a^{-1} \iff aHa^{-1} = H$.

## Lagrange’s Theorem

From proposition 5.1 we know:

1. Every element is $G$ belongs to some coset (for some $H$).
2. Any element in a coset is a representative for that coset. (e.g. for $H = \lang(1 2 3)\rang$, we showed that $(1 2)H = \{(1 2), (1 3), (2 3)\}$). By 2, $(1 2)H = (1 3)H = (2 3)H$.)
3. Two left cosets are either identical or disjoint.
4. All cosets are the same size.

Let $G$ be a finite group and $H \le G$. If $a_1 H, a_2 H,..., a_k H$ are distinct left cosets of $H$, then by 1, $G = a_1 H \cup a_2 H \cup ...\cup a_k H$. Since they are distinct,
$$\begin{aligned}
|G|
&= |a_1 H|+ |a_2 H|+...+ |a_k H| \\\\
&= |H|+|H|+...+|H| \\\\
&= k|H| \\\\
&= |G:H||H|
\end{aligned}$$
where $|G:H|$ is the index of $H$.

Theorem 5.2 - Lagrange’s Theorem
: Let $G$ be a finite group and $H \le G$, then $|H|$ divides $|G|$ and $|G:H| = |G|/|H|$.

## Corollaries

Corollary 5.3
: If $G$ is a finite group and $a \in G$, then $|a|$ divides $G$.

> Proof:
>
> Since $\lang a \rang \le G$, $|a| = |\lang a \rang|$ divides $|G|$
> by Lagrange.


Corollary 5.4
: If $G$ is a finite group and $a \in G$, then $a^{|G|} = e$

> Proof:
>
> By corollary 5.3, $|a|$ divides $|G|$. Thus
> $a^{|G|} = a^{q|a|} = (a^{|a|})^q  = e$.

Corollary 5.5
: If $G$ is a group of order $p$ and $p$ is prime, then $G$ is cyclic.

> Proof:
>
> Let $a \in G$ and $a \neq e$. By corollary 5.3, $|a|$ divides $|G| = p$. Since $p$ is a prime, either $|a| = 1$ or $|a| = p$. Since $a \neq e$, $|a| \neq 1$, so $|a| = p = |G|$. Thus, $G = \lang a \rang$.

Corollary 5.6 - Format’s Little Theorem
: If $a \in \Z$, $a \neq 0$, $p$ is a prime, and $p$ not divides $a$, then $a^{p-1} \equiv 1 \mod p$

> Proof:
>
> Consider $\Z_p^* =\{ 1 ,2, 3, ..., p-1\}$.
> If $p$ does not divide $a$, then $\gcd(p,1) = 1$, so $a \in \Z_p^*$.
> By corollary 5.4, $e = a^{|G|} = a^{p-1}$.
> That is $a^{p-1} \equiv 1 \mod p$.

Exercise: Let $G$ be a group of order $15$. Prove that if $\{e\} < H < G$, $\{e\} < K < G$, and $H \neq K$, then $H \cap K = \{e\}$.

Solution:

By Lagrange theorem, $|H|$ and $|K|$ divides $15$, but $H$ and $K$ are proper and non-trivial, $|H|$ and $|K|$ are either $3$ or $5$. Note that $H \cap K \le H$ and $H \cap K \le K$.

- If $|H| = |K| = 3$, then $|H \cap G| = 1 \text{or} 3$ by Lagrange. If $|H \cap K| = 3$, then $H = K$, contradiction. Thus $|H\cap K| = 1$
- If $|H| = |K| = 5$, similarly, $|H \cap K| = 1$.
- If one of $|H|$ and $|K|$ is $3$ and the other is $5$. $|H \cap K|$ has to divide both $3$ and $5$ by Lagrange. Thus $|H \cap K|= 1$.

Thus $H \cap K = \{e\}$.

## Applications

Q: Does the converse to Lagrange’s theorem hold? That is, is there a subgroup of order $d$ for every positive divisor $d$ of $|G|$?

No. There are groups without subgroups of order $d$.

Consider $A_4$, the alternating subgroup of $S_4$. $|A_4| = \frac{4!}{2} = 12$. We claim that $A_4$ does not have subgroup of order $6$.

In $S_4$, we have following cycle length configuration.

| Cycle length configuration | Order | Parity | Count |
|:--------------------------:|:-----:|:------:|:----:|
| $4$ | $4$ | Odd | $6$ |
| $3, 1$ | $3$ | Even | $8$ |
| $2, 2$ | $2$ | Even | $3$ |
| $2, 1, 1$ | $2$  | Odd | $6$ |
| $1, 1, 1, 1$ | $1$  | Even | $1$ |


Suppose to the contrary that $H$ is a subgroup of order $6$. We know that the number of left cosets of $H$ in $A_4$ is $|A_4:H| = \frac{12}{6} = 2$. Since $A_4$ contains $8$ $3$ -cycles, at lease one of them $\sigma$ is not in $H$. So $A_4 = H \cup \sigma H$.

Which one contains $\sigma^2$?

- If $\sigma^2 \in H$, then $(\sigma^2)^2 = \sigma^{3+1}= \sigma \in H$, contradiction.
- If $\sigma^2 \in \sigma H$, then there exists $h\in H$ such that $\sigma^2 = \sigma h$, so $h = \sigma \in H$ contradiction.

Therefore, there is no such subgroup.<br/>

Q: How many different legal operation can be done to the Rubik’s cube? Call this group of operations $R$?

Note that $R$ is a subgroup of $R’$, the group of symmetries of the Rubik’s cube where you’re allowed to take it apart and rebuild. How many elements are there in $R’$?

The cube has $8$ corners. We can mix them up in $8!$ ways. Each corner can be put on in $3$ different ways.

There are $12$ edges pieces which can be mixed up in $12!$ ways. There are $2$ ways to put on each edge piece.

Thus $|R’| = 8! \cdot 3^8 \cdot 12! \cdot 2^{12}$.

By Lagrange’s theorem, $|R|$ divides $8! \cdot 3^8 \cdot 12! \cdot 2^{12}$. $R$ has $12$ cosets in $R’$, because there are 12 legal moves. i.e. $|R’:R| = 12$.

Consequently, $|R| = \frac{|R’|}{|R’:R|} = 8! \cdot 3^8 \cdot 11! \cdot 2^{12}$, which is approximately 43 quintillion.

Lagrange’s theorem significantly restricts the possible subgroups of a group $G$. Using the next result, we can say even more.

Theorem 5.7
: Let $G$ be a finite group and $H,K \le G$. Consider set $HK = \{hk: h \in H, k\in K\}$. Then $|HK| = \frac{|H||K|}{|H \cap K|}$

> Proof:
>
> In total, we can build an element of $HK$ by choosing $h \in H$ and $k \in K$, in $|H||K|$ many ways. However, we may overcount as it could be that $hk=h’k’$ for some $h’ \in H, k’ \in K$.
>
> Suppose $hk = h’k’$, then $h’^{-1}h = k’k^{-1} = b$. Since $H, K$ are closed, $b \in H\cap K$. Then $h’ = hb^{-1},  k’ =bk$
>
> Thus for each pair of $h, k$, we can rewrite them as $(hb^{-1})(bk)$ in exactly $|H \cap K|$ ways. Hence $|HK| = \frac{|H||K|}{|H \cap K|}$
>

Caution: In general $HK$ is just a set, not necessarily a subgroup.

Consider the subgroup of $S_3$ given by $H = \lang (1 2) \rang = \{e, (1 2)\}$ and $K = \lang (1 3)\rang = \{e, (1 3)\}$.
$$|HK| = \frac{|H||K|}{|H \cap K|} = \frac{2 \times 2}{1} = 4$$
Since $|S_3| = 6$, by Lagrange, $HK$ is not a subgroup of $S_3$

Exercise: Prove that a group $G$ of order $100$ has at most one subgroup of order $25$.

Solution:

Suppose we have two subgroups $H,K$ and $|H| = |K| = 25$. We know that $H \cap K \le H, K$. By Lagrange, $|H \cap K|$ divides $25$, so it is one of $1, 5, 25$. Then,
$$|HK| = \frac{|H||K|}{|H \cap K|} = \begin{cases}
625 & |H\cap K| = 1 \\\\
125 & |H\cap K| = 5 \\\\
25 & |H\cap K| = 25 \\\\
\end{cases}$$
Since $HK \subseteq G$, $|HK| \le |G| = 100$. Thus, $|H \cap K| = 25$, and $H = K = H \cap K$. That is, there is at most one subgroup of order $25$.

Exercise: Prove that if $G$ is a group of order $66$, then $G$ has at most one subgroup of order $33$.

Solution:

Let $H,K \le G$ and $|H| = |K| = 33$. By lagrange, since $H \cap K \le H, K$, $|H \cap K|$ is one of $1, 3, 11, 33$. Then,
$$|HK| = \frac{33 \times 33}{|H \cap K|} = \begin{cases}
1089 & |H \cap K|=1 \\\\
363 & |H \cap K|=3 \\\\
99 & |H \cap K|=11 \\\\
33 & |H \cap K|=33 \\\\
\end{cases}$$
Since $HK \subseteq G$, $|HK| \le |G| = 66$. $|H \cap K|=33$, and $H = K = H \cap K$. Thus, there is at most one subgroup of order $33$.
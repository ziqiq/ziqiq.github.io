# The Symmetric Group

## The Cycle Notation

Now that we have seen more about groups in general, we can take a closer look at $S_n$.

Recall every $\sigma \in S_n$ can be describe using an array. e.g. $\sigma = \begin{pmatrix} 1&2&3&4&5&6 \\ 2&1&4&6&5&3 \end{pmatrix}$. If we look closely at $\sigma$, we notice something interesting.

![Cycle 214653](image/cycle-214653.png)

Each of these cycle can be written very compactly. $\sigma = (1 2)(3 4 6)(5)$.

e.g.

$\sigma = \begin{pmatrix} 1&2&3&4 \\ 4&3&2&1 \end{pmatrix} = (1 4)(2 3)$

$\tau = \begin{pmatrix} 1&2&3&4&5 \\ 4&5&3&2&1 \end{pmatrix} = (1 4 2 5)(3)$

Remark:

1. There are many ways to write a cycle. e.g. $(1 4 2 5) = (4 2 5 1)$. Our convention will be to start with the smallest integer.
2. Since out cycle are disjoint, we may switch them.
3. If a number is fixed, we often don’t write it. e.g. $(1 4 2 5)(3) = (1 4 2 5)$ in $S_5$.


e.g. Write all element of $S_3$ in cycle notation. Note $|S_3| = 3! = 6$.

| Array | Cycle |
|:-----:|:-----:|
|$\begin{pmatrix}1&2&3\\1&2&3\end{pmatrix}$| $(1)(2)(3)$ |
|$\begin{pmatrix}1&2&3\\1&3&2\end{pmatrix}$| $(1)(2 3)$ |
|$\begin{pmatrix}1&2&3\\2&1&3\end{pmatrix}$| $(1 2)(3)$ |
|$\begin{pmatrix}1&2&3\\2&3&1\end{pmatrix}$| $(1 2 3)$ |
|$\begin{pmatrix}1&2&3\\3&1&2\end{pmatrix}$| $(1 3 2)$ |
|$\begin{pmatrix}1&2&3\\3&2&1\end{pmatrix}$| $(1 3)(2)$ |

Definition - Cycle, Transposition, and Disjoint Cycles
: A permutation $\sigma \in S_n$ of the form $(a_1, a_2, ..., a_m)$ is called a cycle of length $m$ or **$m$ -cycle**.
: A $2$ -cycle $(a_1,a_2)$ is called a **transposition**.
: Two cycle are disjoint if $\forall a_i \in C_1 \, \forall b_j \in C_2 \; a_i \neq b_j$.

We can compose permutation in cycle notation by listing them one after the other and reading right to left.

e.g. If $\sigma = (1 2 4)(3 5) \in S_5$ and $\tau = (1 5)(2 3) \in S_5$, we have $\sigma \tau = (1 2 4)(3 5)(1 5)(2 3)$. We may simplify this by tracing the path of each element.

| $x$ | $(\sigma\circ\tau)(x)$ |
|:---:|:--:|
| $1$ | $1 \to 5 \to 3$ |
| $2$ | $2 \to 3 \to 5$ |
| $3$ | $3 \to 2 \to 4$ |
| $4$ | $4 \to 1$ |
| $5$ | $5 \to 1 \to 2$ |

Thus the disjoint representation is $\sigma\tau = (1 3 4)(2 5)$

Theorem 4.1
: Every permutation can be written as a product of disjoint cycles.

The proof is just like the example but more abstract.

In a disjoint cycle decomposition for some $\sigma \in S_n$, we can identify many important properties of $\sigma$.

e.g. What is the order of $\sigma = (1 2 3)$?

We see that $\sigma = (1 2 3)$, $\sigma^2 = (1 3 2)$ $\sigma^3 = (1)(2)(3)$. It’s the length of $\sigma$.

Proposition 4.2
: If $\sigma$ is an $m$ -cycle the $|\sigma| = m$.

Proof left as exercise.

e.g. If $\sigma = (1 3 2 4)$, $|\sigma| = 4$

Lemma 4.3
: Disjoint cycles commutes

> Proof:
> 
> Let $\alpha = (a_1 a_2 ... a_m)$ and $\beta = (b_1 b_2 ... b_m)$
> Let $x \in \{1, ..., n\}$
> If $x\in \alpha$, then $x \notin \beta$, so
> $$(\alpha\beta)(x) = \alpha(\beta(x))= \alpha(x) \\
> (\beta\alpha)(x) = \beta(\alpha(x))= \alpha(x)$$
> Hence, $(\alpha\beta)(x) = (\beta\alpha)(x)$.
> Similarly, if $x \in \beta$, then also
> $(\alpha\beta)(x) = (\beta\alpha)(x)$.


Theorem 4.4
: If $\beta_1 ... \beta_k$ are disjoint cycles in $S_n$ and $\sigma = \beta_1 ... \beta_k$, then $|\sigma| = \lcm (|\beta_1|, ..., |\beta_k|)$.

e.g. If $\sigma = (1 4 7)(3 8)(2 9 10)$, then $|\sigma| = \lcm(3, 2 ,3) = 6$.

e.g. If $\sigma = (1 2 3)(1 4)(2 4 3)(1 3 2)$, then $\sigma = (1 3 2 4)$ and $\sigma = \lcm(4) = 4$

> Proof:
> 
> Suppose that $\sigma = \beta_1 ... \beta_k$. We will prove this result for $k=2$.
> 
> Let $m = |\sigma|$ and $l = \lcm(|\beta_1|, |\beta_2|)$. It is sufficient to show that $m$ divides $l$ and $l$ divides $m$.
> 
> First, $e = \sigma^m = (\beta_1 \beta_2)^m = \beta_1^m \beta_2^m$. Since they are disjoint, $|\beta_1| \mid m$ and $|\beta_2| \mid m$. Hence, $l = \lcm(|\beta_1|, |beta_2|)$ divides $m$.
>
> Also $\sigma^l = (\beta_1 \beta_2)^l = \beta_1^l \beta_2^l = e e = e$.Hence $m$ divides $l$.
> 



Q: What are the possible order for elements in $S_7$?

It all comes down to the length of the cycles in the disjoint cycle decomposition for $\sigma in S_7$

| Cycle length configuration | Order |
|:--------------------------:|:-----:|
| $7$ | $7$ |
| $6, 1$ | $6$ |
| $5, 2$ | $10$ |
| $5, 1, 1$ | $5$ |
| $4, 3$ | $12$ |
| $4, 2, 1$ | $4$ |
| $4, 1, 1, 1$ | $4$ |
| $3, 3, 1$ | $3$ |
| $3, 2, 2$ | $6$ |
| $3, 2, 1, 1$ | $6$ |
| $3, 1, 1, 1, 1$ | $3$ |
| $2, 2, 2, 1$ | $2$ |
| $2, 2, 1, 1, 1$ | $2$ |
| $2, 1, 1, 1, 1, 1$ | $2$ |
| $1, 1, 1, 1, 1, 1, 1$ | $1$ |

Q: How many elements of order $3$ in $S_7$?

There are two possible configuration $3 3 1$ and $3 1 1 1 1$. For the first one, we can partition $7$ numbers in $\frac{1}{2} Cn(7,3) Cn(4,3) = 70$ ways. For the second one, it’s just $Cn(7,3) = 35$. Also, given $3$ distinct numbers, they can form $(3-1)! = 2$ different $3$ -cycles. Thus, in total we have $2 \times 2 \times 70 + 2 \times 35 = 350$.

## Even and Odd Permutation

Here is a cool observation:

- $(1 2 3 4 5) = (1 2)(2 3)(3 4)(4 5)$
- $(1 2 3)(4 5 6) = (1 2)(2 3)(4 5)(5 6)$

We see that these permutations can be written as products of non-disjoint transpositions.

Theorem 4.5
: Every $\sigma \in S_n$ can be written as a product of transposition.

> Proof:
>   
> It is sufficient to prove this for $\sigma$ a cycle in $S_n$, since every permutation is a product of cycles.
>
> $$(a_1 a_2 a_3... a_m) = (a_1 a_2)(a_2 a_3)...(a_{m-1} a_m)$$
> 

e.g. $(1 3 2)(1 4 3) = (1 3)(3 2)(1 4)(4 3)$.
If we convert it to disjoint representation first, we have $(1 3 2)(1 4 3) = (1 4 2)(3) = (1 4)(4 2)$

This shows that unlike the disjoint cycle decomposition, the break down into a product of transposition is SUPER NOT unique. However the same is the parity (odd/even) of the number of transposition.

Lemma 4.7
: If $\beta_1 ... \beta_m = e$ where $\beta_i$ is a transposition, then $m$ is even.

> Proof:
> 
> We cannot have $m=1$ transpositions.
> If we have $m=2$ transpositions then we are done.
> 
> Suppose $m>2$ is a fixed and the result holds for $k<m$.
> 
> Let $e = \beta_1 ... \beta_m$ where $\beta_m = (a b)$. Now look at $\beta_{m-1}\beta_m$. There are 3 possibilities:
> $$\beta_{m-1}\beta_m = \begin{cases} (a b)(a b) = e & \text{case 1}\\ (a c)(a b) = (a b c) = (a b)(b c) & \text{case 2}\\ (c d)(a b) = (a b)(c d) & \text{case 3}\end{cases}$$
> 
> For case 1, $\beta_1 ... \beta_{m-2} = e$ and $m-2$ is even by induction, so $m$ is also even.
>
> For case 2 and 3, we can move the last occurrence of $a$ to the left. Repeat this process. Eventually, we either delete two transpositions $(a x)(a y) = (a y)(y x)$ or we move the last occurrence of $a$ all the way to the left. If we delete it, we get $m-2$ transpositions and $m$ is even. Otherwise, $e = (a x_0)(x_1 y_1) ... (x_m y_m)$ where all $x$ and $y$ ’s are not $a$. This is a contradiction since $ea = x_0 \neq a$.

Theorem 4.6
: If $\sigma \in S_n$ is given by $\sigma = \beta_1 \beta_2 ... \beta_k = \gamma_1 \gamma_2 ... \gamma_m$ where $\beta_i$ and $\gamma_i$ are transpositions. Then either $k$ and $m$ are both even or they are both odd.

> Proof
> 
> Suppose $\sigma = \beta_1 \beta_2 ... \beta_k = \gamma_1 \gamma_2 ... \gamma_m$. Then $e = \beta_1^{-1} \beta_2^{-1} ... \beta_k^{-1} = \gamma_1 \gamma_2 ... \gamma_m$ There are $k+m$ transpositions. By lemma 4.7 $k+m$ is even. Thus, $k$ and $m$ are either both even or both odd.

We can now safely make the following definition.

Definition - Even and Odd Permutation
: A permutation $\sigma \in S_n$ is even if it can be written as a product of an even number of transpositions, and odd if it can be written as a product of an odd number of transpositions.

e.g.
- $(1 2 3 4) = (1 2)(2 3)(3 4)$ is an odd permutation.
- $(1 2 3 4 5) = (1 2)(2 3)(3 4)(4 5)$ is an even permutation.

Exercise: Show that

1. An $m$ -cycle is even if and only if $m$ is odd.
2. A product $\sigma = \sigma_1 \sigma_2$ is even if and only if $\sigma_1$ and $\sigma_2$ are both even or odd.
3. The set $A_n = \{ \sigma \in S_n : \sigma \text{ is even}\}$ forms a subgroup of $S_n$. $A_n$ is known as the **alternating group**.

 
\\[ \def{\im}{{\text{im}}}  \im\\]
# Homomorphisms and Isomorphisms

Up to now we have studied the structure of individual groups very carefully. In this section we will be interested in determining wither two different group essentially have same structure. (e.g. $\Z_2$ and $(\{\pm 1\}, \times)$)

Consider the groups $\Z_4=\{0,1,2,3\}$ and $\Z_8^* = \{1,3,5,7\}$. They are obviously different (at least on the surface, they have different operations). Even beyond the surface, these groups differ structurally.

- $\Z_4$ is cyclic, but $\Z_8^*$ is not!
- $\Z_4$ has two element of order $4$ and one element of order $2$, whereas $\Z_8^*$ has three elements of order $2$.
- $\Z_8^*$ has three different subgroups of order $2$, but $\Z_4$ has only $1$.

Therefore, they are _very_ different!

Now consider $\Z_4 = \{0,1,3,2\}$ and $\Z_{10}^* = \{1,3,7,9\}$. You can check that although these groups “look” different, beyond the surface, they are very similar.

- Both are cyclic.
- Both have the same number of elements of a given order.
- Same subgroup structure.

Essentially there groups are “the same”. How can we make this claim rigorous? We should find a function $\phi: \Z_4 \to \Z_{10}^*$ that reliable our element and preserve the theoretical properties of these two groups.

Such function must be **bijictive**, as it is relabelling. To preserve the group properties, we will also require that, for $a, b \in \Z_4$,
$$\phi(a+b) =\phi(a)\times \phi(n)$$
That is, $\phi$ preserve the group operation. For example, we can take:

| $a$ | $\phi(a)$ |
|:---:|:---------:|
| $0$ | $1$       |
| $1$ | $3$       |
| $2$ | $9$       |
| $3$ | $7$       |

This is bijective and we have $\phi(a+b)=\phi(a)\times\phi(b)$ for all $a,b \in \Z_4$.

## Definition, Properties, and First Example

Definition from A1 is:

> Two group $G, H$ are isomorphic if, after relabelling and reordering
> their elements, their Cayley tables are identical.

Definition - Homomorphism and Isomorphism
: Let $G, H$ be groups. If $\phi: G \to H$ satisfies $\phi(ab)=\phi(a)\phi(b)$ for all $a,b \in G$, then $\phi$ is called a **homomorphism**.
: If $\phi$ is a homomorphism and $\phi$ is bijective, we sat that $\phi$ is an **isomorphism**.
: If there is an isomorphism $\phi: G \to H$, we say that $G$ and $H$ are **isomorphic**, denoted $G \cong H$.

e.g. Consider the group $(\R, +)$ and $(\R_{>0}, \times)$, where $R_{>0}=\{x \in \R: x > 0\}$. We claim that they are isomorphic.

Let’s take $\phi: \R \to \R_{>0}$ by $\phi(a) = 2^a$. We know from calculus that this is a bijection. Is it operation preserving? $$\phi(a+b) = 2^{a+b} = 2^a 2^b = \phi(a) \phi(b)$$. Thus $\phi$ is an isomorphism.

e.g. If $G = \lang a \rang$ is any infinite cyclic group, then $G \cong \Z$.

Indeed, consider $\phi: \Z \to G$ given by $\phi(k) = a^k$. This $\phi$ is definitely subjective. Is this injective? Recall from Ch.2, if $a \in G$ and $|a|=\infty$, then $a^i =a^j$ if and only if $i=j$. To see that $\phi$ is injective, suppose $\phi(k)=\phi(m)$. Then $a^k=a^m$, and hence $k=m$. Thus $\phi$ is bijective. Also, $\phi$ is a homomorphism as $\phi(k+m) = a^{k+m} = a^k a^m = \phi(k)\phi(m)$.

e.g. If $G=\langle a\rangle$ is a cyclic group of order $n < \infty$, then $G \cong \Z_n$.

Exercise: Show the detail of this example.

Consequences:

- $\Z_{18}^* \cong \Z_6$ as $\Z_{18}^*$ is cyclic and of order $6$.
- Nth roots of unity $\le \mathbb{C}^*$ and $\cong \Z_n$.
- $n\Z \cong \Z$ for any $n \neq 0$.

Proposition 7.1
: Let $G,H,K$ be groups.  
1. If $G \cong H$, then $H \cong G$.  
2. If $G \cong H$ and $H \cong K$, then $G \cong K$.

> Proof:
> 
> (1)
> If $\phi: G \to H$ is an isomorphism, then $\phi^{-1}: H \to G$
> is an isomorphism.
> \
> (2)
> Suppose that $\phi: G \to H$ is an isomorphism and $\psi: H \to K$.
> Consider $\psi \circ \phi: G \to K$. On A1, we have proved that
> $\psi \circ \phi$ is bijective, so we only need to check that it is a
> homomorphism.


Theorem 7.2 - Properties of Isomorphism
: Let $G,H$ be groups and $\phi: G \to H$ is an isomorphism.
  Let $a,b\in G$.  
  1. $\phi(e) = e’$ where $e$ is the identity for $G$ and $e’$ is the identity for $H$.  
  2. $\phi(a^{-1}) = [\phi(a)]^{-1}$  
  3. For all $n \in \Z$, $\phi(a^n) = [\phi(a)]^n$  
  4. $a, b$ commute if and only if $\phi(a), \phi(b)$ commute.
  5. $|a|=|\phi(a)|$  
  6. $G$ is Abelian if and only if $H$ is Abelian.  
  7. $G$ is cyclic if and only if $H$ is cyclic.  
  8. If $K \le G$ then $\phi(K) = \{\phi(x): x \in G\} \le H$.  
  9. $\phi(Z(G)) = Z(H)$

> Proof:
> 
> (1)
> $\phi(e) = \phi(ee) = \phi(e) \phi(e)$. By cancellation,
> $\phi(e) = e’$.
>
> (2)
> $e’ = \phi(e) = \phi(aa^{-1}) = \phi(a)\phi(a^{-1})$. Thus,
> $\phi(a^{-1}) = [\phi(a)]^{-1}$.
> 
> (3)
> If $n=0$, we’re done by (1).  
> If $n>0$, $$\phi(a^n) = \phi(aa...a) =
> \phi(a)\phi(a)...\phi(a) = [\phi(a)]^{n}$$
> If $n<0$, then $$e’ = \phi(a^n a^{-n}) = \phi(a^n) \phi(a^{-n}) =
> \phi(a^n) [\phi(a)]^{-n}$$
> So $\phi(a^n) = [\phi(a)]^{n}$.
> 
> (4)
> Suppose that $ab=ba$, then $\phi(ab) = \phi(a)\phi(b) = \phi(b)\phi(a) 
> = \phi(ba)$. For the other direction use the inverse isomorphism
> $\phi^{-1}: H \to G$ and argue the same way.
> 
> (5)
> Note that $a^n = e$, $\phi(a^n) = \phi(e)$, $[\phi(a)]^n = e’$. Thus
> the smallest $n$ such that $a^n=e$ is the same as the smallest such 
> $n$ that $[\phi(a)]^n = e$, so $|a| = |\phi(a)|$.
> 
> (6) Follows from (4).
> 
> (7)(8) Exercise.
> 
> (9) Follows from (4).

Understanding there properties allow one to prove that certain groups are not isomorphic

e.g. $(\Z, +) \ncong (\mathbb{Q}, +)$. Because $\Z$ is cyclic, but $\mathbb{Q}$ is not. We proved that in A2.

e.g. $(\Z, +) \ncong (\mathbb{Q}, +)$. Because $-1 \in \mathbb{Q}^*$ has order $2$, but every $a\in \mathbb{Q}$ either has order $1$ ($a=0$) or infinite order ($a \neq 0$).

An isomorphism preserves group structure perfectly. A homomorphism preserves some of the group structure.

e.g. Consider $\phi: \Z \to \Z_2$ given by $\phi(n)=n \mod 2$. This is a homomorphism (but NOT isomorphism). $\phi(n+m) = (n+m) \mod 2 = n \mod 2 + m \mod 2 = \phi(n) + \phi(m)$. This $\phi$ ,however, forgets a lot about the structure of $\Z$ essentially. $\phi$ only cares of $n \in \Z$ is even or odd.

Definition - Kernel of Group Homomorphism
: Let $\phi: G \to H$ be a group homomorphism. The kernel of $\phi$ is the set $\ker(\phi) = \{ a\in G: \phi(a)=e\}$.

In the previous example, the kernel of $\phi$ is $\{n\in \Z: n = 0 \mod 2\} = 2\Z$.

Definition - Image of Group Homomorphism
: Let $\phi: G \to H$ be a group homomorphism. The image of $\phi$ is the set $\im(\phi) = \phi(G) = \{\phi(a)\in H: a \in G \}$

In the previous example, $\im(\phi) = \Z_2$.

e.g. If $\phi:G \to H$ is an isomorphism, them the kernel is $\ker(\phi) = \{e\}$ and the image is $\im(\phi)=H$.

e.g. Consider the homomorphism $\phi:G \to G$, and $\phi(a) = e$ for all $a\in G$. Here, $\ker(\phi)=G$ and $\im(\phi)=\{e\}$.

Definition - Trivial Homomorphism
: We call $\phi(a)=e$ **trivial homomorphism**.

e.g. For the absolute value $|\cdot|: \R^* \to \R^*$, $\ker(|\cdot|) = \{\pm 1\}$ and $\im(|\cdot|) = \R_{>0}$.

e.g. A vector space $V$ (e.g. $R^n$ or $\mathbb{C}^n$) is a group under addition. What are the homomorphisms $phi: V\to W$? It should satisfies $\phi(x+y) = \phi(x) + \phi(y)$. For example, all linear transformation $A:V\to W$ are homomorphisms. We can think of $\phi(x)=Ax$, multiplication by matrix. The image is $\{Ax: x\in V\} = \Range(A)$ and the kernel is $\{x\in V : Ax=0\} = \Null(A)$.

e.g. Consider the map $\sgn: S_n \to \Z_2$ given by $$\sgn(\sigma) = \begin{cases} 0 & \sigma \text{ is even} \\ 1 & \sigma \text{ is odd} \end{cases}$$

Note that $\sgn$ is a homomorphism because
$$\begin{aligned}
	\sgn(\sigma\tau) &=
\begin{cases} 0 & \sigma\tau \text{ is even} \\ 1 & \sigma\tau \text{ is odd} \end{cases} \\
&= \begin{cases} 0 & \sigma, \tau \text{ both even or odd} \\ 1 & \sigma,\tau \text{ have different parity} \end{cases} \\
&= \begin{cases} 0 & \sgn(\sigma)= \sgn(\tau) \\ 1 & \sgn(\sigma) \neq \sgn(\tau) \end{cases} \\
&=\sgn(\sigma) + \sgn(\tau)
\end{aligned}$$

Here $\ker(\sgn) = A_n$, the even permutations and $\im(\sgn)=\Z_2$

Theorem 7.3 - Properties of Homomorphism
: Let $\phi: G \to H$ be a group homomorphism and $a,b \in G$  
1. $\phi(e) = e$  
2. $\phi(a^n) = [\phi(a)]^n$ for any $n \in \Z$  
3. $|\phi(a)|$ divides $|a|$, if $|a| < \infty$  
4. $\ker(\phi) \trianglelefteq G$  
5. $\phi(a) = \phi(b)$ if and only if $a \ker(\phi) = b \ker(\phi)$  
6. $\phi$ is injective if and only if $\ker(\phi) = \{e\}$  
7. $\im(\phi) \le H$  
8. $\phi$ is subjective if and only if $\im(\phi) = H$

> Proof:
> 
> (1)(2)
> Proven in the same way as theorem 7.2.
> 
> (3)
> If $|a|=n$, then by (1) and (2), $[\phi(a)]^n = \phi(a^n) = \phi(e) = e$. Thus $|\phi(a)|$ divides $n=|a|$.
> 
> (4)
> As an exercise, prove that $\ker(\phi) \le G$. To see that $\ker(\phi) \trianglelefteq G$, we’ll use the normal subgroup test.
> Let $a \in G$ and $b\in \ker(\phi)$. Is $aba^{-1} \in \ker(\phi)$?
> We have $\phi(aba^{-1}) = \phi(a)\phi(b)[\phi(a)]^{-1} = \phi(a)e[\phi(a)]^{-1} = e$, so yes $aba^{-1} \in \ker(\phi)$. Thus, $a \ker(\phi) a^{-1} \subseteq \ker(\phi)$
>
> (7)(8) Exercise

Remark: What does property 5 say in the vector space context? Here we have a linear map $A:V \to W$. Property 5 says that two vectors $x, y \in V$ satisfy $Ax = Ay \iff x + \Null(A) = y + \Null(A) \iff x-y \in \Null(A) \iff x \in y+ \Null(A)$

Just like with isomorphism, knowing the properties of homomorphisms allows you to decide what homomorphism can exist between $G$ and $H$

Q: What are the homomorphisms $\phi:\Z_8 \to \Z_6$?

Note $\Z_8 = \langle 1 \rangle$, so if we know that $\phi(1)=a \in \Z_6$, then for any $k$, $$\phi(1^k) = \phi(1 \cdot ...\cdot 1) = \phi(1) ... \phi(1) = a^k$$ The question becomes, what is $\phi(1)$?

We know that $|\phi(1)|$ divides $|1| = 8$. But also, since $\phi(1) \in \Z_6$, by Lagrange’s theorem, $|\phi(1)|$ divides $|Z_6|=6$. Thus $|\phi(1)|$ divides $\gcd(6,8)$, so it is either $1$ or $2$.

- If $|\phi(1)| = 1$, $\phi(1) = 0$, and hence $\phi(k) = 0^k = 0$. Thus $\phi$ is the trivial homomorphism.
- If $|\phi(1)| = 2$, $\phi(1) = 3$, and hence $\phi(k) = 3^k$. (i.e. $3k \mod 6$)

Is the second case really a homomorphism?

If $k, m \in\Z_8$, then
$$\begin{aligned}
\phi(km) &= 3(k+m) \mod 6 \\
          &= 3k+ 3m \mod 6 \\
          &= 3k \mod 6 + 3m \mod 6 \\
          &= \phi(k) \phi(m)
\end{aligned}$$

We also must check that $\phi$ is well-defined in the sense that “ $x= y \mod 8 \Leftarrow \phi(x) = \phi(y) \mod 6$ “. To see that it is, suppose that $k=m \mod 8$. Then $8 \mid k-m$, so $k=m+8z$ for some $z\in\Z$. We have that 
$$\begin{aligned}
\phi(k) &= \phi(m+8z) \\
        &= 3(m+8z) \mod 6 \\
        &= 3m+24z \mod 8 \\
        &= 3m \mod 6 \\
        &= \phi(m) \\
\end{aligned}$$

This $\phi$ is indeed a homomorphism, but $\psi: \Z_8 \to \Z_6$ such that $\psi(1^k) = 2^k$ is NOT. You can check that $\psi(km) = \psi(k)\psi(m)$, but $\psi$ is not well-defined. Consider in $\Z_8$, $1^9 = 1$, but $\psi(1) = 2$, $\psi(1^9) = 2^9 = 1^{18} = 0$.

Remark: We must check “well-definedness” whenever the input to $\phi$ can be written in multiple ways (e.g. for cosets).

Q: What homomorphisms exists from $\Z_n \to \Z_m$?

1. Every such homomorphism is of the form $\phi(1^i)= a^i$ where $a= \phi(1)$.
2. All of these $\phi$ ’s satisfy $\phi(xy) = \phi(x)\phi(y)$ for any $x,y \in \Z_n$.
3. Which of these $\phi$ ’s are well-defined? $\phi$ definitely has to satisfy $0 = \phi(0) = \phi(1^n) = a^n$. That is $a \times n \equiv 0 \mod m$.

Exercise: Show that this is also sufficient: $\phi$ is well-defined when $a \times n \equiv 0 \mod m$.

Remark: If $\phi: G \to H$ is a homomorphism, then $\ker(\phi) \trianglelefteq G$ (proved in theorem 7.3). In fact, every normal subgroup arises in the way.

Theorem 7.4
: Let $G$ be a group and $N \trianglelefteq G$. Then there is a group $H$ and homomorphism $\phi: G \to H$ such that $\ker(\phi) = N$.

> Proof:
> 
> Let $H = G/N$ and define $\phi: G \to G/N$ by $\phi(a) = aN$.
> Then $\phi(ab) = (ab)N = (aN)(bN) = \phi(a) \phi(b)$. Thus $\phi$ is a 
> homomorphism.
> $$\ker\phi = \{a\in G: \phi(a) = N\} = \{a\in G: aN = N\} = N$$


## Isomorphism Theorems

If $\phi: G \to H$ is a group homomorphism, how can we “change” \phi into an isomorphism? A homomorphism may fail to be an isomorphism for two reasons:

1. $\phi$ is not surjective.
2. $\phi$ is not injective.

To fix (1), we can replace $H$ with $\im \phi$. This makes $\phi: G \to \im \phi$ surjective.

To fix (2), note that $\phi(a) = \phi(b) \iff a \ker \phi = b \ker \phi$ so the kernel may be preventing $\phi$ from being injective. Thus, we can replace $G$ with $G / \ker \phi$.

Theorem 7.5 - First Isomorphism Theorem
: If $\phi: G \to H$ is a group homomorphism, then $G / \ker \phi \cong \im \phi$.

> Proof:
> 
> Define a map $\psi: G / \ker \phi \to \im \phi$ by $\psi(a \ker \phi) = \phi(a)$. We claim that $\psi$ is a isomorphism.
> 
> First, note that $\psi(a \ker \phi) = \psi(b \ker \phi) \iff \phi(a) = \phi(b) \iff a \ker \phi = b \ker \phi$. Thus $\psi$ is well-defined and injective.
> 
> To see that $\psi$ is surjective, note that $\im \psi = \{\psi(a \ker \phi): a\in G\} = \{\phi(a): a \in G\} = \im \phi$. Thus, $\psi$ is surjective.
> Finally we check that $\psi$ is a homomorphism: $\psi((a \ker \phi)(b \ker \phi)) = \psi(ab \ker \phi) = \phi(ab) = \phi(a)\phi(b) =\psi(a \ker \phi)\psi(b \ker \phi)$.
> Thus $\psi$ is a homomorphism.
> 
> Thus $\psi$ is an isomorphism, so $G / \ker \phi \cong \im \phi$.


e.g. Let $G=S_n$ and consider the normal subgroup $A_n \trianglelefteq G$. Recall that the map $\sgn: S_n \to \Z_2$ given by $\sgn(\sigma) = \begin{cases} 0 & \sigma \text{ is even} \\ 1 & \sigma \text{ is odd} \end{cases}$ is a homomorphism. $\ker \sgn = A_n$ and $\im \sgn = \Z_2$. By the first isomorphism theorem, $S_n / \ker \sgn \cong \im \sgn$.

e.g. Prove that $\R^* / \{\pm1\} \cong \R_{>0}^*$.

Note that the absolute value function $|\cdot|: \R^* \to \R_{>0}^*$ is a homomorphism with $\ker |\cdot| = \{\pm 1\}$ and $\im |\cdot| = \R_{>0}^*$. Thus by the first isomorphism theorem, $\R^*/\{\pm1\} \cong \R_{>0}^*$.

If $G$ is a finite group, then by combining the first isomorphism theorem with Lagrange’s theorem, we get the following corollary.

Corollary 7.6
: Suppose that $G$ is a finite group and $\phi: G \to H$ is a group homomorphism. Then $|G| = |\ker \phi||\im \phi|$.

> Proof:
>
> By the first isomorphism theorem, $G / \ker \phi \cong \im \phi$. Thus $|G / \ker \phi| = | \im \phi|$, and hence by Lagrange, $\frac{|G|}{|\ker \phi|} = |\im \phi|$.

e.g. We showed that $S_n/A_n \cong \Z_2$ and thus $|S_n| = |A_n||\Z_2|$. $$|A_n| = \frac{n!}{2}$$

e.g. What homomorphism can we have from $G$ to $H$ if $|G| = 9$ and $|H|= 4$?

Suppose $\phi: G\to H$ is such a homomorphism. Since $\im \phi \le H$, we have that $|\im \phi|$ must divide $|H|=4$. But, since $|G| = |\ker \phi||\im \phi|$, we have that $|\im \phi|$ also divides $|G| = 9$. Thus , $|\im \phi| = 1$, so $\im \phi = \{e\}$. Thus $\phi$ is the trivial homomorphism.

## Correspondence Theorem

If $G$ is a group and $N \trianglelefteq G$, how do the subgroups of $G/N$ compare with the subgroups of $G$?

Suppose that $G$ is a group and $N \trianglelefteq G$. We want to know if there is a connection between the subgroups of $G$ and the subgroup of $G/N$.

Suppose that $H \le G$ and $N \subseteq H$. Convince yourself that $N \trianglelefteq H$. (Can you prove that?)

We claim $H/N \le G/N$. Indeed, we have:

- $eN \in H/N$, so $H/N \neq \emptyset$
- If $h_1 N, h_2 N \in H/N$, then $(h_1 N)(h_2 N) = h_1 h_2 N \in H/N$
- If $h H \in H/N$, then $(h N)^{-1} = h^{-1}N \in H/N$

By the subgroup test, $H/N \le G/N$.

Thus if $H \le G$ and $N \subseteq H$, we get a subgroup of $G/N$ for free!

Amazingly, every subgroup of $G/N$ arises in this way. That is, every subgroup $K \le G/N$ is given by $K = H/N$ for same $H \le G$ with $N \le H$.(Proof is in A5)

Theorem 7.7 - Correspondence Theorem
: Let $G$ be a group and $N \trianglelefteq G$. Then $K \le G/N$ if and only if $K = H/N$ for some $H \le G$ with $N \subseteq H$. Moreover, if $K_1 = H_1/N$ and $K_2 = H_2/N$ are subgroup of $G/N$, then $K_1 \subseteq K_2 \iff H_1 \subseteq H_2$.

e.g. Consider $G = S_n$ and $N = A_n$ what are the subgroups of $S_n/A_n$? By the correspondence theorem, the subgroups of $S_n/A_n$ are of the form $H/A_n$ where $H \le S_n$ and $A_n \subseteq H$. There are _two_ options for $H$: $S_n$ and $A_n$. There are not other options because if $A_n \subsetneq H$ then $|H| > \frac{n!}{2}$ get $|H|$ divides $|S_n| = n!$, so $H = S_n$. Thus the subgroups of $S_n/A_n$ are $S_n/A_n$ (whole quotient group) or $A_n/A_n=\{A_n\}$ (trivial group).

This makes sense because we showed that $S_n/A_n \cong \Z_2$ and $\Z_2$ has only $\{0\}$ and $\Z_2$ as subgroups!

## Automorphisms

Definition - Automorphism
: An automorphism is an isomorphism $\phi: G \to G$.

e.g. (1) Let $G$ be a gourd and define $\phi_e(a) = a$ for all $a \in G$. This is an automorphism of $G$, called the identity automorphism.

e.g. (2) Consider the group $(\mathbb{C}, +)$ and the map $\phi: \mathbb{C} \to \mathbb{C}$ given by $\phi(z) = \overline{z}$ (i.e. $\phi(a+ib) = \overline{a+ib} = a - ib)$. This is and automorphism of $\mathbb{C}$.

e.g. (3) Let $G$ be any group and $a\in G$. Define $\phi_a G \to G$ by $\phi_a(b) = aba^{-1}$. $\phi_a$ is called conjugation by $a$, and it is an automorphism. Indeed, if $b \in G$, then $\phi_a(bc) = a(bc)a^{-1} =   ab(a^{-1}a)ca^{-1} = \phi_a(b) \phi_a(c)$ Thus $\phi_a$ is a homomorphism.

Since left multiplication by $a$ and right multiplication by $a^{-1}$ are bijection (proof in A1), $\phi_a$ is a bijection. Thus $\phi_a$ is an automorphism.

For a concrete example, consider $G = GL_n(\R)$ and fix $A\in G$. Then $\phi_A(B) = ABA^{-1}$. From linear algebra, this is called a similarity (or change of basis).

Remark: $\phi_a$ is what we call an **inner automorphism**.

Definition
: We define $\Inn(G)$ to be the set of all inner automorphism of a group $G$. More generally, $\Aut(G)$ denoted the set of all automorphisms $\phi: G \to G$

Note: Are all automorphisms inner? NO.

For instance let $G$ be any Abelian group. In this case all inner automorphisms $\phi_a = \phi_e$ as $aba^{-1} = aa^{-1}b = b$. But we have seen an example of a non-trivial automorphism if Abelian group in e.g. (2). That automorphism is not inner.

One thing we can de with automorphisms that we can’t do with arbitrary isomorphisms is composition.

Theorem 7.8
: Let $G$ be a group. Then $\Aut(G)$ is a group under composition of automorphisms. Moreover, $\Inn(G) \trianglelefteq \Aut(G)$.

> Proof:
> 
> First we need to show $\Inn(G) \le \Aut(G)$.
> Since $\phi_e = (x \mapsto exe^{-1}) \in \Inn(G)$,
> $\Inn(G)$ is not empty.
> 
> - $\phi_a \phi_b = (x \mapsto axa^{-1})(x \mapsto bxb^{-1})
>   = (x \mapsto abxb^{-1}a^{-1}) = \phi_{ab} \in \Inn(G)$
> - Consider $\phi_a^{-1} = \phi_{a^{-1}} \in \Inn(G)$.
>   $\phi_a^{-1} \phi_a = (x \mapsto a^{-1}xa)(x \mapsto axa^{-1})
>   = (x \mapsto a^{-1}axa^{-1}a) = \phi_{e}$
>
> Thus, $\Inn(G) \le \Aut(G)$ by the subgroup test.
> 
> Let $\phi_a \in \Inn(G)$ be a inner automorphism and
> $\psi \in \Aut(G)$ be any automorphism.
> Then check $\psi \phi_a \psi^{-1}$ is an inner automorphism.
> $$\psi \phi_a \psi^{-1} = \psi (x \mapsto axa^{-1}) \psi^{-1} \\
> = \psi (x \mapsto a\psi^{-1}(x)a^{-1}) \\
> = x \mapsto \psi(a\psi^{-1}(x)a^{-1}) \\
> = x \mapsto \psi(a)\psi(\psi^{-1}(x))\psi(a^{-1}) \\
> = x \mapsto \psi(a)x\psi(a^{-1}) \\
> = \phi_{\psi(a)}$$
> Therefore, the composition $\psi \phi_a \psi^{-1}$ is also an inner automorphism $\in \Inn(G)$. Thus, $\psi \Inn(G) \psi^{-1} \subseteq \Inn(G)$, so $\Inn(G) \trianglelefteq \Aut(G)$ by the normal subgroup test.

Q: What is the $\Aut(\Z_6)$?

Note that if $\phi \in \Aut(\Z_6)$, then $|\phi(1)| = |1| = 6$, so $\phi(1)$ is a generator of $\Z_6$, so $\phi(1)$ is $1$ or $5$.

Once we know $\phi(1)$, we know $\phi(k)$ for any $k$. $\phi(1^k) = \phi(1)^k$. Thus, our automorphism are either $x \mapsto x$ or $1^k \mapsto 5^k$.

Recall A homomorphism $\phi: \Z_n \to \Z_m$ is of form $\phi(1^k) = a^k$ where $a = \phi(1)$, and this map is well-defined if and only if  $a^n = 0$.

These maps $\phi: \Z_6 \to \Z_6$ are well-defined as $a^6 = 0$. Thus $\Aut(Z_6) = \{x \mapsto x, 1^k \mapsto 5^k\}$

Note: this example suggests that there is a correspondence between $\Aut (\Z_n$)$ and the elements of $\Z_n^*$. Namely, $\phi \in \Aut(\Z_n) \iff \phi(1) \in \Z_n^*$.

Theorem 7.9
: For any $n \ge 2$, $\Aut(Z_n) \cong \Z_n^*$.

> Proof:
> 
> Define $\psi: \Aut(Z_n) \to \Z_n^*$ by $\psi(\phi) = \phi(1)$. Observe that since $|\psi(\phi)| = |\phi(1)| = |1| = n$, we have that $\psi(\phi)$ is a generator of $\Z_n$ and hence $\psi(\phi) \in \Z_n^*$
> Thus, the codon ain’t is correct.
> 
> To see that $\psi$ is a homomorphism, let $\phi_1 \phi_2 \in \Aut(G_n)$. $\psi(\phi_1 \phi_2) = (\phi_1 \circ \phi_2)(1) = \phi_1(\phi_2(1)) = \phi_1(1^{\phi_2(1)}) = phi_1(1)^{\phi_2(1)} = \phi_1(1)\phi_2(1) = \psi(\phi_1) \psi(\psi_2)$
>  
> Let’s show that $\psi$ is injective. If $\psi(\phi_1) = \psi(\phi_2)$, then $\phi_1(1) = \phi_2(1)$. It follows that $\phi_1(k) = k \phi_1(1) = k \phi_2(1) = \phi_2(k)$ for all $k \in \Z_n$. Hence $\phi_1 = \phi_2$, so $\psi$ is injective.
>
> To see that $\psi$ is surjective, let $a \in \Z_n^*$. Consider the map $\phi: \Z_n \to \Z_n$ given by $\phi(k) = ak \mod n$. 
>  
> Exercise: verify that $\phi$ is an automorphism of $\Z_n$ and $\psi(\phi) = a$ (so $\psi$ is surjective).
>  

Exercise: show that if $G \cong H$ then $\Aut(G) \cong \Aut(H)$

In particular, if $G = \Z_n$ and $H$ is a cyclic group of order $n$, then $G \cong H$, and hence $\Aut(H) \cong \Aut(\Z_n) \cong \Z_n^*$

 
## Finite Sets

Perhaps a good boss-level exercise would be the theorem 2.1.4 from Fischer's Linear Algebra.

Theorem:
Sind $X$ und $Y$ endliche Mengen mit gleich vielen Elementen, so sind für eine  Abbildung $f : X \to Y$ folgende Bedingungen äquivalent:
i) f ist injektiv,
ii) f ist surjektiv,
iii) f ist bijektiv.

Remark: This theorem admits different proofs (e.g. proof by contradiction using the pigeonhole principle, proof by induction, etc). These different proofs use different APIs of finite sets.

Remark: use the tactic `TFAE` to prove the equivalence of the conditions. (if it's nice to use)

Follow up: Find isomorphisms between finite dim vector spaces.

## Union of Subspaces
1. Prove that the union of two subspaces of a vector space is a subspace if and only if one of the
subspaces is contained in the other. (set-theoretic containment)

2. Prove that the union of two subspaces of a vector space is a subspace if and only if one of the
subspaces is in

3. Show that a vector space over an infinite field cannot be a finite union of proper subspaces.
` example {V : Type} [Module k V] (U W : submodule k V) : U ⊔ W = ⊤ ↔ U ≤ W ∨ W ≤ U := `

If $V$ is a vector space and $V = U \cup W$

Remark: This may not be suitable for a boss level exercise but it is a good exercise to understand the definition of a subspace.

* Explain how `U₁ ⊔ U₂` is described as `span (U₁ \cup U₂)`.
* (Maybe add indexed version)

## Decomposition into subspaces

When does a collection of subspaces form a decomposition of the entire space?

## The lattice of subspaces of a vector space and the modular law
1. Show that the subspaces of a vector space form a lattice under the inclusion order.
2. Show that the lattice of subspaces of a vector space satisfies the modular law.

Remark: This is a good example of a modular lattice
Remark: This is a good exercise to understand the lattice of subspaces of a vector space. **but do we want that?** (beyond first year)

* If it helps understanding stuff needed for the two questions above.

## Infinite Dimensional Vector Space

1. Show that $ℚ^n$ is a finite dimensional vector space over $ℚ$.
4. Show that $ℝ$ with its standard addition is an infinite dimensional vector space over $ℚ$.

Remark: Once of proof of the last part requires uncountability of $ℝ$: all finite linear combinations of rational is not going to span all of $ℝ$ because $ℝ$ is uncountable (we have this). [This is written in the game](Game/Levels/NewStuff/RealUncountable_01.lean)

Another proof uses the fact that $\log p_i$ are linearly independent over $ℚ$ where $p_i$ are prime numbers. This uses cardinality argument (cardinal_eq_of_finite_basis) and the unique factorization of integers into primes.

* UF in the integers is so fundamental that we should include it in the game! (separate world)

* ~Show that if $ℝ$ with its standard addition is a vector space over $ℚ$ then the scalar multiplication is given by the standard multiplication of real numbers.~ (working with non-trivial instances is probably to cumbersome)

## Proper Subspaces of $n \times n$ Matrices
1. Show that the space of $n \times n$ matrices with real entries is a vector space over $ℝ$. (`Fin n \to Fin n \to ℝ`) (`E_ij`)
2. Suppose $A$ is an $n \times n$ matrix with real entries. Show that the space generated by the powers of $A$, i.e. the set $\{I, A, A^2, A^3, \ldots\}$ is a proper subspace of the space of $n \times n$ matrices with real entries. ($n \ge 2$)
proof-sketch: any two matrix in the span of these vectors commute: S T = T S.



Remark: before Q1 maybe a few easier problems about matrices.
every matrix can be written as a sum of a symmetric (A^+ = A) and a skew-symmetric matrix. (maybe not)

* Working with concrete matrices would be important. Figure out how to deal with them efficiently!


## Van der Monde Matrix (?)
Fix $100$ distinct points $t_0, \ldots, t_{99}$ in the interval  $I = [ -1 ,1 ]$. Consider the map $L \colon \mathbb{R}^{200} \to \mathbb{R}^{100}$ defined by the assignment
$$ c = (c_0,...,c_{199}) \mapsto (p_c(t_0),...,p_c(t_{99})) $$
where  $p_c = \sum_{i=0}^{i=199} c_i x^i$, i.e. from vectors of coefficients of polynomials of degree $\leq 199$ to the vectors $(p_c(t_i))_{i=0}^{99}$ of values of such polynomials at nodes $t_i$.


1. Show that $L$ is linear.
2. Show that this map is represented, upon choosing the standard basis in $\mathbb{R}^{200}$ and $\mathbb{R}^{100}$, by the $100 \times 200$ _Vendermonde_ matrix.

$$ \begin{bmatrix}
1 & t_0 & t_0^2 & \dots & t_0^{199}\\
1 & t_1 & t_1^2 & \dots & t_1^{199}\\
1 & t_2 & t_2^2 & \dots & t_2^{199}\\
\vdots & \vdots & \vdots & \ddots &\vdots \\
1 & t_{99} & x_{99}^2 & \dots & t_{99}^{199}
\end{bmatrix} $$

3. Show that this map is never invertible.


## Quotients
1. Construction of the field $𝔽_p$ via quotient construction of its underlying cyclic group for a prime number p.
2. (Advanced) (Gaussian Coefficients) Let $V$ be an $n$-dimensional vector space over $𝔽_p$. Show that the number of subspaces of $V$ is given by the Gaussian Coefficients.

TODO: I will break down the question 2 into four separate parts (Sina.)

* Could use tensor product of vector spaces?
* (1st) Isomorphism theorem. Two questions about this: set, vector spaces

## Determinantes

## Trace
1. Show that the trace of a matrix, the sum of its diagonal entries, is a linear map from the space $n \times n$ matrices to the field of scalars.
2. Show that $\mathrm{tr} (A A^T) \ge 0$ and the equality holds if and only if $A = 0$.
3. Suppose $f$ is a linear transformation over the space of $n \times n$ matrices such that $f(A B) = f(B A)$ for all $A, B$. Show that there exists a scalar $c$ such that $f(A) = c \mathrm{tr}(A)$ for all $A$.
4. Show that for any matrix $A$ the map $\mathrm{tr}(A \; \bullet) : X \mapsto \mathrm{tr}(AX)$ is a linear map on the space of $n \times n$ matrices.
5. Show that the map above is a zero map if and only if $A = 0$.
6. Show that the map $A \mapsto \mathrm{tr}(A \; \bullet)$ is an isomorphism.
7. Use (4) to prove that every linear map on the space of $n \times n$ matrices is of the form $\mathrm{tr}(A \; \bullet)$ for some matrix $A$.
8. Suppose $A$ is an $m \times n$ and $B$ is an $n \times m$ matrix. Show that the trace of $AB$ is the same as the trace of $BA$.
9. Show that the trace of a matrix is the sum of its eigenvalues.

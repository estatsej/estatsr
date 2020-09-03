Teste F

O teste F é usado para analisar a variância entre dois grupos de dados diferentes e compará-los usando o teste de hipóteses.

As hipóteses podem ser definidas como:

$$\begin{cases}
    H_0: & \sigma_1^2 = \sigma_2^2 \\
    H_1: & \sigma_1^2 \neq \sigma_2^2
\end{cases}$$

A estatística teste é dada pela distribuição F de Snedecor

$$F = \frac{S_1^2}{S_2^2}$$

Onde $S_1^2$ é a variância amostral da população 1 e $S_2^2$ é a variância amostral da população 2, com $n_1-1$ graus de liberdade no numerador e $n_2-1$ graus de liberdade no denominador.

Para a tomada de decisão, é fixado um nível de significância $(\alpha)$, e comparado com o p-valor encontrado da seguinte forma:

$$\text{p-valor} = 2 \; min\{P[F > F_{obs}]; \; P[F < F_{obs}]\}$$.

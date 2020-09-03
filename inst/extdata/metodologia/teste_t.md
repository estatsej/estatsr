Teste T - Amostra Única

O teste T é usado para testar a hipótese de que a média populacional ($\mu$) assume um valor ($\mu_0$) supondo que os dados provém de uma distribuição normal.
As hipóteses podem ser definidas como:

$$\begin{cases}
    H_0: & \mu = \mu_0 \\
    H_1: & \mu \neq \mu_0
\end{cases}$$
A estatística teste é dada pela distribuição T de Student:

$$T = \frac{\overline{X} - \mu_0}{S / \sqrt{n}}$$

Onde $\overline{X}$ é a média amostral, $\mu_0$ o valor da hipótese nula, $S$ é a variância amostral, e $n$ é o tamanho da amostra. O valor da distribuição T vai ser dada com $n - 1$ graus de liberdade.
Para a tomada de decisão, é fixado um nível de significância ($\alpha$), e comparado com o p-valor encontrado da seguinte forma:

$$\text{p-valor} = P(T > T_{\alpha/2})$$

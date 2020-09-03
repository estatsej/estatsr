Teste T - Comparação de médias com variância igual

Dada duas populações independentes X e Y, o objetivo é comparar as médias populacionais $\mu_1$ e $\mu_2$, das respectivas populações.
O teste de hipótese seria:
$$\begin{cases}
    H_0: & \mu_1 = \mu_2 \\
    H_1: & \mu_1 \neq \mu_2
\end{cases}$$

Nele ultiliza-se duas variáveis independentes normalmente distibuídas quando as variâncias são iguais. A estatística do teste é dada por:

$$T = \frac{\overline{x} - \overline{y}}{\sqrt{s^2c\left(\frac{1}{n_x} + \frac{1}{n_y}\right)}}$$

Sendo:
$$s^2_c = \frac{(n_x - 1) s^2 x + (n_y - 1)s^2y}{n_x + n_y - 2}$$

Com os graus de liberdade definidos para o teste igual a: $$n_x + n_y - 2$$

O p-valor é determinado por:

$$\text{p-valor} = 2P(T > T_{obs} | H_0 )$$

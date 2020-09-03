Teste T - Comparação de médias com variâcia diferente

Neste teste ultiliza-se duas variáveis independentes, $X_1 ,..., X_n$ e $Y_1,..., Y_n$ que seguem uma distribuição normal, quando as variâncias são diferentes ($\sigma_1^2 \neq \sigma_2^2$), para comparação de medias.

As hipóteses testadas serão:

$$\begin{cases}
    H_0: & \mu_1 = \mu_2  \\
    H_1: & \mu_1 \neq \mu_2 \\
\end{cases}$$

Com estatistica teste dada por:

$$T=\frac{(\overline{X}-\overline{Y})-(\mu_{1}-\mu_{2})}{\sqrt{\frac{s_{1^{2}}}{n_{1}}+\frac{s_{2^{2}}}{n_{2}}}}\sim t_{\nu}$$\\

Ou seja, a variavel $T$ dada tem distribuição  $t$ de Student com $v$ graus de liberdade, onde:

$$\nu=\frac{(\frac{s_{1}^{2}}{n_{1}}+\frac{s_{2}^{2}}{n_{2}})}{\frac{\frac{s_{1}^{2}}{n_{1}}}{n_{1}-1}+\frac{\frac{s_{2}^{2}}{n_{2}}{}}{n_{1}-1}}$$

O p-valor é dado por:

$$p-valor=\mathbb{P}\left[ \left| t \right| \gt \left| T_{obs} \right|\left| H_{0} \right|\right]=2\mathbb{P}\left[ t\gt \left| T_{obs} \right|\left[ H_{0} \right] \right]$$

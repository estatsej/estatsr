Teste T Pareado 

Dada duas amostras aleatórias dependentes, $X_1 ,..., X_n$ e $Y_1,..., Y_n$, onde as observações são pareadas, isto é, é possível considerar apenas uma única amostra $D_1,...,D_n$, onde  $D_i = X_i – Y_i$, para  $i = 1,2,...,n$., e segue uma distribuição normal, $D_i \sim N(\mu_D, \sigma^2_D)$.

As hipóteses que serão testadas são:

$$\begin{cases}
    H_0: & \mu_D = 0 \\
    H_1: & \mu_D \neq 0 \\
\end{cases}$$

O parâmetro $\mu_D$ é estimado pela média amostral das diferenças 

$$\overline{D} = \frac{1}{n} \displaystyle\sum_{i=1}^{n}D$$

Neste caso a variância é desconhecida, sendo estimada através das diferenças:

$$S^2_D = \frac{1}{1-n} \displaystyle\sum_{i=1}^{n}(D- \overline{D} )^2$$

Assim $H_0$, a estatística do teste é dada pela distribuição t- student con n-1 graus de liberdade:

$$T = \frac{\overline{D}- \mu_D}{S_D/\sqrt{n}}$$

O p-valor é determiado por:

$$ \text{p-valor} = P[ t > T_{obs} | H_0 ]$$

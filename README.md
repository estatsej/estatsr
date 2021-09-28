# Estats R
Pacote de funções utilizadas pela [Estats Consultoria](https://estatsej.wixsite.com/consultoria)

## Instalação
```r
install.packages("devtools")
devtools::install_github("estatsej/estatsr")
```

***

## Exemplos

Em um documento `.Rmd` o código abaixo gera um arquivo com as metodologias.

````rmd
# Metodologia

`r estatsr::metodologia("Teste de hipotese", 2) # exemplo inline`

```{r, results = "asis", echo = FALSE}
# exemplo em bloco de código
estatsr::metodologia(c("teste f", "teste t"), 2, TRUE)
```
````

***


# TODO

- [X] Função para printar metodologias
- [X] Adicionar em metodologia opção de nível de cabeçalho
- [X] Banco de dados com as metodologias (inst/exdata/metodologia)
- [X] Adicionar função para criar projetos
- [X] Adicionar base de relatório Rmd
- [X] Adicionar argumento para codigo de bloco em metodologia (utilizando cat)

- teste

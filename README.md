# Estats R
Pacote de funções utilizadas pela [Estats Consultoria](https://estatsej.wixsite.com/consultoria)

## Instalação
```r
install.packages("devtools")
devtools::install_github("estatsej/estatsr")
```

## Exemplos
```r
estatsr::metodologia("Teste T")
```

```r
estatsr::metodologia(c("Teste de Hipotese", "Teste T"))
```

# TODO

- [X] Função para printar metodologias
- [X] Adicionar em metodologia opção de nível de cabeçalho
- [X] Banco de dados com as metodologias (inst/exdata/metodologia)
- [ ] Adicionar função para criar projetos
- [ ] Adicionar base de relatório Rmd

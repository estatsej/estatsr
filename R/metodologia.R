#'@title Metodologias
#'
#'@description Retorna a ou as metodologias pedidas
#'
#'@param metodologias Vetor de caracteres com os nomes das metodologias a serem retornadas (Strings não devem conter acentos)
#'
#'@export
#'
#'@examples
#' metodologia("teste de hipotese")
#' metodologia(c("Teste de hipotese", "Teste t))

metodologia <- function(metodologias)
{
  ret_ <- c()
  for(met in metodologias)
  {
    ret_ <- c(
      paste(
        readLines(
          system.file("extdata",
                      paste0(tolower(gsub(" ", "_", met)), ".md"),
                      package = "estatsr")
        ),
        collapse = "\n"
      )
    )
  }
  return(ret_)
}

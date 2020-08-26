#' @title Metodologias
#'
#' @description Retorna a ou as metodologias pedidas
#'
#' @param metodologias Vetor de caracteres com os nomes das metodologias a serem retornadas (Strings não devem conter acentos)
#' @param depth Número que determina o nível de cabeçalho da metodologia
#'
#' @return character
#'
#' @examples
#'  metodologia("teste de hipotese")
#'  metodologia(c("Teste de hipotese", "Teste t"))
#'
#' @export

metodologia <- function(metodologias, depth = 0)
{
  if(class(depth) != "numeric") stop("A variável depth precisa ser numérica!")
  if(!length(depth) == 1) stop("A variável depth precisa ser um único valor numérico!")
  ret_ <- c()
  for(met in metodologias)
  {
    ret_ <- c(
      ret_,
      paste(
        paste(rep("#", depth), collapse = ""),
        paste(
          readLines(
            system.file("extdata",
                        paste0(tolower(gsub(" ", "_", met)), ".md"),
                        package = "estatsr")
          ),
          collapse = "\n"
        )
      )
    )
  }
  if(length(ret_) > 1) ret_ <- paste(ret_, collapse = "\n\n")
  return(ret_)
}

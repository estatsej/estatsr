#' @title Metodologias
#'
#' @description Retorna a ou as metodologias pedidas
#'
#' @param metodologias Vetor de caracteres com os nomes das metodologias a serem retornadas (chamar estatsr::met_opts para todas as opções disponiveis)
#' @param depth Número que determina o nível de cabeçalho da metodologia
#' @param bloco Valor lógico que se definido como TRUE faz com que a função gere um texto para bloco de código, e se definido como FALSE gera texto para R inline
#'
#' @return character
#'
#' @examples
#'  metodologia("teste de hipotese")
#'  metodologia(c("Teste de hipotese", "Teste t"))
#'
#' @export

metodologia <- function(metodologias, depth = 0, bloco = FALSE)
{
  if(class(depth) != "numeric") stop("A variável depth precisa ser numérica!")
  if(!length(depth) == 1) stop("A variável depth precisa ser um único valor numérico!")
  ret_ <- c()
  for(met in metodologias)
  {
    if(grepl(".md$", met)) ext <- ""
    else ext <- ".md"
    ret_ <- c(
      ret_,
      paste(
        paste(rep("#", depth), collapse = ""),
        paste(
          readLines(
            system.file("extdata/metodologia",
                        paste0(tolower(gsub(" ", "_", met)), ext),
                        package = "estatsr"),
            encoding = "UTF-8"
          ),
          collapse = "\n"
        )
      )
    )
  }
  if(length(ret_) > 1) ret_ <- paste(ret_, collapse = "\n\n")
  if(bloco) cat(ret_)
  else return(ret_)
}


#' @title Metodologias Disponíveis
#'
#' @description Lista todas as metodologias disponíveis para ser utilizada em estatsr::metodologia
#'
#' @param totitle Determina como o vetor de caracteres sera retornado. Se determinado como FALSE retorna o nome dos arquivos.
#'
#' @return character
#'
#' @examples
#'  met_opts()
#'
#' @export

met_opts <- function(totitle = TRUE)
{
  ret_ <- dir(system.file("extdata/metodologia", package = "estatsr"))
  if(totitle) ret_ <- gsub("\\b([[:lower:]]){1}([[:lower:]]+)", "\\U\\1\\L\\2", gsub(".md$", "", gsub("_", " ", ret_), perl = TRUE), perl = TRUE)
  return(ret_)
}

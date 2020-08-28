#' @title Projeto
#'
#' @description Cria diretórios de projetos para consultorias e copia arquivos base de relatórios
#'
#' @param nome Nome da pasta do projeto a ser criada
#'
#' @examples
#'  projeto("056-Eduardo")
#'
#' @export

projeto <- function(nome)
{
  if(file.exists(nome)) stop("Um diretório com esse nome já existe.")
  if(regexpr("/", nome) != -1) stop("O nome do diretório não pode possuir barras (/)")  
  tryCatch(
    {
      for(pasta in c("", "/dados", "/src", "/relatorio", "/relatorio/input", "/documentos"))
      {
        dir.create(paste0(nome, pasta))
      }
      dir_ <- system.file("extdata/proj", package = "estatsr")
      files <- paste0(dir_, "/", list.files(dir_, include.dirs = TRUE))
      file.copy(files, paste0(nome, "/relatorio"), recursive = TRUE)
    },
    error = function(cond)
    {
      message(cond)
      return(FALSE)
    }
  )
}

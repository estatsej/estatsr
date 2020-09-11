#' @title Projeto
#'
#' @description Cria diretórios de projetos para consultorias e copia arquivos base de relatórios
#'
#' @param nome Nome da pasta do projeto a ser criada
#' @param caminho Caminho do diretório onde a nova pasta será criada. Por padrão é o diretório atual da sessão do R.
#'
#' @examples
#'  projeto("056-Eduardo")
#'  projeto("057-Samuel", "/home/samuel")
#'  projeto("058-Vitor", "C:\\Area De Trabalho")
#'
#' @export

projeto <- function(nome, caminho = ".")
{
  if(file.exists(nome)) stop("Um diretório com esse nome já existe.")
  if(regexpr("/", nome) != -1) stop("O nome do diretório não pode possuir barras (/)")  
  caminho <- gsub("(\\\\$|/$)", "", caminho)
  tryCatch(
    {
      for(pasta in c("", "/dados", "/src", "/relatorio", "/relatorio/input", "/documentos"))
      {
        dir.create(paste0(caminho, "/", nome, pasta))
      }
      dir_ <- system.file("extdata/proj", package = "estatsr")
      files <- paste0(dir_, "/", list.files(dir_, include.dirs = TRUE))
      file.copy(files, paste0(caminho, "/", nome, "/relatorio"), recursive = TRUE)
    },
    error = function(cond)
    {
      message(cond)
      return(FALSE)
    }
  )
}

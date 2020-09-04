#' @title Gerar Capa do Relatório
#'
#' @description Retorna string com código em LaTeX para gerar a capa do relatório de consultorias
#'
#' @param titulo String com o título do relatório
#' @param gerente String com o nome do gerente da consultoria
#' @param assessores Vetor de caracteres com os assessores da consultoria
#'
#' @return character
#'
#' @examples
#'  gerar_capa("Análise de alguma coisa", "Samuel Vianna Quintanilha", c("Ellen Beatriz Balan", "Larissa Rei Dos Santos"))
#'
#' @export

gerar_capa <- function(titulo, gerente, assessores, bloco = FALSE)
{
  ret_ <- glue::glue(
    "\\begin{titlepage}
    \\begin{center}
    
    \\vspace*{4.5cm}
    
    \\begin{Large}
    \\textbf{Relatório Final} \\\\ \n
    \\end{Large}
    
    \\begin{LARGE}
    \\textbf{`{titulo}`} \\\\ \n
    \\end{LARGE}
    
    \\end{center}
    
    \\vspace*{3cm}
    
    \\flushleft{
      \\begin{large}
      \\textbf{Responsáveis:} \\\\ \n
      \\end{large}
      Gerente: `{gerente}` \\\\\\ \n
      Assessores: \n
      `{paste(assessores, '', collapse = '\\\\\\\\ \n')}`
    }
    
    \\vfill
    
    \\begin{center}
    Maringá \\\\ \n
    \\today
    \\end{center}
    \\end{titlepage}",
    .open = "`{", .close = "}`"
  )
  if(bloco) cat(ret_)
  else return(ret_)
}

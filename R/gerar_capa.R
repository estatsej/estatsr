#' @title Gerar Capa do Relatório
#'
#' @description Retorna string com código em LaTeX para gerar a capa do relatório de consultorias
#'
#' @param titulo String com o título do relatório
#' @param gerente String com o nome do gerente da consultoria
#' @param assessores Vetor de caracteres com os assessores da consultoria
#' @param bloco Valor lógico que se definido como TRUE faz com que a função gere um texto para bloco de código, e se definido como FALSE gera texto para R inline
#'
#' @return character
#'
#' @examples
#'  gerar_capa("Análise de alguma coisa", "Samuel Vianna Quintanilha", c("Ellen Beatriz Balan", "Larissa Rei Dos Santos"))
#'
#' @export

gerar_capa <- function(subtitulo, gerente, assessores, titulo = "Relatório Final", bloco = FALSE)
{
  ret_ <- glue::glue(
    "\\begin{titlepage}
    \\begin{center}
    
    \\vspace*{4.5cm}
    
    \\begin{Large}
    \\textbf{`{titulo}`} \\\\ \n
    \\end{Large}
    
    \\begin{LARGE}
    \\textbf{`{subtitulo}`} \\\\ \n
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

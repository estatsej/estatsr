#' @import devtools

if(!require(ggthemr)) devtools::install_github("Mikata-Project/ggthemr")

theme_estats <- list(
  background = "#e7e1e1", 
  text = c(inner = "#585757", outer = "#585757"), 
  line = c(inner = "#67686A", outer = "#67686A"),
  gridline = "#67686A",
  swatch = structure(c(
    "#0b0e0a",
    "#9b3939", "#f76f57", 
    "#D21917", "#e65e62", 
    "#9e7575", "#4C8659",
    "#419053", "#0b0e0a"), class = "ggthemr_swatch"),
  gradient = c(low="#e5c8c8", high="#7c2323")
)

class(theme_estats) <- "ggthemr_palette"

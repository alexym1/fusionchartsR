#' Adding FusionCharts theme
#'
#' \url{https://www.fusioncharts.com/dev/themes/introduction-to-themes}
#'
#' @import htmlwidgets
#'
#' @param fusionPlot fusionPlot object got by \code{fusionPlot()}
#' @param theme Chart theme
#'
#'
#' @examples
#' library(fusionchartsR)
#' df <- data.frame(label = c("Venezuela", "Saudi", "Canada", "Russia"), value = c(290, 260,180, 115))
#' df %>%
#' fusionPlot(x = "label", y = "value", type = "pie2d") %>%
#' fusionTheme(theme = "gammel")
#'
#'
#' @export
fusionTheme <- function(fusionPlot, theme = c("fusion", "gammel", "candy", "zune", "ocean", "carbon", "umber")) {
  ThemeAttrs <- list()
  ThemeAttrs$theme <- match.arg(theme)
  fusionPlot$x$theme <- ThemeAttrs$theme
  return(fusionPlot)
}

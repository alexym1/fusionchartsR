#' Adding FusionCharts Div & Grid
#'
#' \url{https://www.fusioncharts.com/dev/chart-guide/chart-configurations/div-lines-and-grids} & 
#' \url{https://www.fusioncharts.com/dev/chart-guide/chart-configurations/vertical-div-lines}  
#'
#' @import htmlwidgets
#'
#' @param fusionPlot fusionPlot object got by \code{fusionPlot()}
#' @param adjustDiv Enable the automatic adjustment of horizontal lines
#' @param numDivLines Set the number of hozitontal lines
#' @param divLineColor Specify the hex code for the color of the hozitontal lines
#' @param divLineAlpha Set the transparency of the horizontal lines
#' @param divLineDashed Display the hozitontal lines as dashed
#' @param divLineDashLen Set the length of each dashed hozitontal lines
#' @param divLineDashGap Set the gap between the dashed hozitontal lines
#' @param numVDivLines Specify the number of vertical lines
#' @param vDivLineColor Set the color of the vertical lines
#' @param vDivLineThickness Set the thickness of the vertical lines
#' @param vDivLineAlpha Set the transparency of the vertical lines
#' @param vDivLineDashed Display the vertical lines as dashed
#' @param vDivLineDashLen Set the length of each dashed vertical lines
#' @param vDivLineDashGap Set the gap between the dashed vertical lines
#' @param showAlternateHGridColor Display the horizontal grid bands
#' @param alternateHGridColor Specify the hex code for the color of the horizontal grid
#' @param alternateHGridAlpha Set the transparency of the horizontal grid 
#' @param showAlternateVGridColor Display the vertical grid bands
#' @param alternateVGridColor Specify the hex code for the color of the vertical grid
#' @param alternateVGridAlpha Set the transparency of the vertical grid
#' 
#' @examples
#' library(fusionchartsR)
#' df <- data.frame(label = c("Venezuela", "Saudi", "Canada", "Russia"), value = c(290, 260,180, 115))
#' df %>%
#' fusionPlot(x = "label", y = "value", type = "column2d") %>%
#' fusionDiv(divLineColor = "#6699cc", divLineAlpha = "60", divLineDashed = TRUE) %>%
#' fusionTheme(theme = "fusion")
#'
#' @export
fusionDiv <- function(fusionPlot, adjustDiv = FALSE, numDivLines = "5", divLineColor = "#5a5a5a", divLineAlpha = "10", divLineDashed = FALSE,
                      divLineDashLen = "5", divLineDashGap = "6", numVDivLines = "5", vDivLineColor = "#F2F2F2", vDivLineThickness = "1",
                      vDivLineAlpha = "100", vDivLineDashed = FALSE, vDivLineDashLen = "5", vDivLineDashGap = "3", showAlternateHGridColor = FALSE,
                      alternateHGridColor = "#5a5a5a", alternateHGridAlpha = "1", showAlternateVGridColor = FALSE, alternateVGridColor = "#5a5a5a",
                      alternateVGridAlpha = "3") {
  DivAttrs <- list()
  DivAttrs$adjustDiv <- as.numeric(adjustDiv)
  DivAttrs$numDivLines <- numDivLines
  DivAttrs$divLineColor <- divLineColor
  DivAttrs$divLineAlpha <- divLineAlpha
  DivAttrs$divLineDashed <- as.numeric(divLineDashed)
  DivAttrs$divLineDashLen <- divLineDashLen
  DivAttrs$divLineDashGap <- divLineDashGap
  DivAttrs$numVDivLines <- numVDivLines
  DivAttrs$vDivLineColor <- vDivLineColor
  DivAttrs$vDivLineThickness <- vDivLineThickness
  DivAttrs$vDivLineAlpha <- vDivLineAlpha
  DivAttrs$vDivLineDashed <- as.numeric(vDivLineDashed)
  DivAttrs$vDivLineDashLen <- vDivLineDashLen
  DivAttrs$vDivLineDashGap <- vDivLineDashGap
  DivAttrs$showAlternateHGridColor <- as.numeric(showAlternateHGridColor)
  DivAttrs$alternateHGridColor <- alternateHGridColor
  DivAttrs$alternateHGridAlpha <- alternateHGridAlpha
  DivAttrs$showAlternateVGridColor <- as.numeric(showAlternateVGridColor)
  DivAttrs$alternateVGridColor <- alternateVGridColor
  DivAttrs$alternateVGridAlpha <- alternateVGridAlpha
  
  fusionPlot$x$adjustDiv <- DivAttrs$adjustDiv
  fusionPlot$x$numDivLines <- DivAttrs$numDivLines
  fusionPlot$x$divLineColor <- DivAttrs$divLineColor
  fusionPlot$x$divLineAlpha <- DivAttrs$divLineAlpha
  fusionPlot$x$divLineDashed <- DivAttrs$divLineDashed
  fusionPlot$x$divLineDashLen <- DivAttrs$divLineDashLen
  fusionPlot$x$divLineDashGap <- DivAttrs$divLineDashGap
  fusionPlot$x$numVDivLines <- DivAttrs$numVDivLines
  fusionPlot$x$vDivLineColor <- DivAttrs$vDivLineColor
  fusionPlot$x$vDivLineThickness <- DivAttrs$vDivLineThickness
  fusionPlot$x$vDivLineAlpha <- DivAttrs$vDivLineAlpha
  fusionPlot$x$vDivLineDashed <- DivAttrs$vDivLineDashed
  fusionPlot$x$vDivLineDashLen <- DivAttrs$vDivLineDashLen
  fusionPlot$x$vDivLineDashGap <- DivAttrs$vDivLineDashGap
  fusionPlot$x$showAlternateHGridColor <- DivAttrs$showAlternateHGridColor
  fusionPlot$x$alternateHGridColor <- DivAttrs$alternateHGridColor
  fusionPlot$x$alternateHGridAlpha <- DivAttrs$alternateHGridAlpha
  fusionPlot$x$showAlternateVGridColor <- DivAttrs$showAlternateVGridColor
  fusionPlot$x$alternateVGridColor <- DivAttrs$alternateVGridColor
  fusionPlot$x$alternateVGridAlpha <- DivAttrs$alternateVGridAlpha
  
  return(fusionPlot)
}
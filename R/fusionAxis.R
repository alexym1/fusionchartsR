#' Adding FusionCharts axis
#'
#' \url{https://www.fusioncharts.com/dev/chart-guide/chart-configurations/axes}
#'
#' @import htmlwidgets
#'
#' @param fusionPlot fusionPlot object got by \code{fusionPlot()}
#' @param xAxisName Specify the title of the X-axis of the chart
#' @param yAxisName Specify the title of the Y-axis of the chart
#' @param AxisNameFont Set the font family of axis
#' @param AxisNameFontSize Set the font size (between 0 and 72) of axis
#' @param AxisNameFontColor Set the font color of axis in hex code
#' @param AxisNameFontBold Set the font style to bold
#' @param AxisNameFontItalic Set the font style to italic
#'
#' @examples
#' library(fusionchartsR)
#' df <- data.frame(label = c("Venezuela", "Saudi", "Canada", "Russia"), value = c(290, 260, 180, 115))
#' df %>%
#'   fusionPlot(x = "label", y = "value", type = "column3d") %>%
#'   fusionAxis(xAxisName = "Countries", yAxisName = "Numbers", AxisNameFontSize = "20") %>%
#'   fusionCustomAxis(xAxisPosition = "top", yAxisPosition = "right") %>%
#'   fusionTheme(theme = "gammel")
#'
#' @export
fusionAxis <- function(fusionPlot, xAxisName = "Change X axis", yAxisName = "Change Y axis", AxisNameFont = "Arial",
                       AxisNameFontSize = "12", AxisNameFontColor = "#999999", AxisNameFontBold = TRUE, AxisNameFontItalic = FALSE) {
  AxisAttrs <- list()
  AxisAttrs$xAxisName <- xAxisName
  AxisAttrs$xAxisNameFont <- AxisNameFont
  AxisAttrs$xAxisNameFontSize <- AxisNameFontSize
  AxisAttrs$xAxisNameFontColor <- AxisNameFontColor
  AxisAttrs$xAxisNameFontBold <- as.numeric(AxisNameFontBold)
  AxisAttrs$xAxisNameFontItalic <- as.numeric(AxisNameFontItalic)

  AxisAttrs$yAxisName <- yAxisName
  AxisAttrs$yAxisNameFont <- AxisNameFont
  AxisAttrs$yAxisNameFontSize <- AxisNameFontSize
  AxisAttrs$yAxisNameFontColor <- AxisNameFontColor
  AxisAttrs$yAxisNameFontBold <- as.numeric(AxisNameFontBold)
  AxisAttrs$yAxisNameFontItalic <- as.numeric(AxisNameFontItalic)


  fusionPlot$x$xAxisName <- AxisAttrs$xAxisName
  fusionPlot$x$xAxisNameFont <- AxisAttrs$xAxisNameFont
  fusionPlot$x$xAxisNameFontSize <- AxisAttrs$xAxisNameFontSize
  fusionPlot$x$xAxisNameFontColor <- AxisAttrs$xAxisNameFontColor
  fusionPlot$x$xAxisNameFontBold <- AxisAttrs$xAxisNameFontBold
  fusionPlot$x$xAxisNameFontItalic <- AxisAttrs$xAxisNameFontItalic

  fusionPlot$x$yAxisName <- AxisAttrs$yAxisName
  fusionPlot$x$yAxisNameFont <- AxisAttrs$yAxisNameFont
  fusionPlot$x$yAxisNameFontSize <- AxisAttrs$yAxisNameFontSize
  fusionPlot$x$yAxisNameFontColor <- AxisAttrs$yAxisNameFontColor
  fusionPlot$x$yAxisNameFontBold <- AxisAttrs$yAxisNameFontBold
  fusionPlot$x$yAxisNameFontItalic <- AxisAttrs$yAxisNameFontItalic

  return(fusionPlot)
}

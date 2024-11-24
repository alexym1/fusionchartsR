#' Adding FusionCharts tooltip
#'
#' \url{https://www.fusioncharts.com/dev/chart-guide/chart-configurations/tool-tips}
#'
#' @import htmlwidgets
#'
#' @param fusionPlot fusionPlot object got by \code{fusionPlot()}
#' @param showToolTip Display tooltip
#' @param toolTipBorderColor Specify the color of the tooltip border
#' @param toolTipBgColor Specify the hex code for the tooltip background color
#' @param toolTipBgAlpha Set the tooltip background color transparency
#' @param showToolTipShadow Enable tooltip shadow
#'
#' @examples
#' library(fusionchartsR)
#' df <- data.frame(label = c("Venezuela", "Saudi", "Canada", "Russia"), value = c(290, 260, 180, 115))
#' df %>%
#'   fusionPlot(x = "label", y = "value", type = "doughnut2d") %>%
#'   fusionTooltip(toolTipBgColor = "#3526ad", toolTipBgAlpha = "50", showToolTipShadow = FALSE) %>%
#'   fusionTheme(theme = "fusion")
#'
#' @export
fusionTooltip <- function(fusionPlot, showToolTip = TRUE, toolTipBorderColor = "#666666",
                          toolTipBgColor = "#ffffff", toolTipBgAlpha = "100",
                          showToolTipShadow = TRUE) {
  TooltipAttrs <- list()
  TooltipAttrs$showToolTip <- as.numeric(showToolTip)
  TooltipAttrs$toolTipBorderColor <- toolTipBorderColor
  TooltipAttrs$toolTipBgColor <- toolTipBgColor
  TooltipAttrs$toolTipBgAlpha <- toolTipBgAlpha
  TooltipAttrs$showToolTipShadow <- as.numeric(showToolTipShadow)


  fusionPlot$x$showToolTip <- TooltipAttrs$showToolTip
  fusionPlot$x$toolTipBorderColor <- TooltipAttrs$toolTipBorderColor
  fusionPlot$x$toolTipBgColor <- TooltipAttrs$toolTipBgColor
  fusionPlot$x$toolTipBgAlpha <- TooltipAttrs$toolTipBgAlpha
  fusionPlot$x$showToolTipShadow <- TooltipAttrs$showToolTipShadow


  return(fusionPlot)
}

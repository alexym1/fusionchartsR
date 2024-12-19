#' Adding FusionCharts legend
#'
#' \url{https://www.fusioncharts.com/dev/chart-guide/chart-configurations/legend}
#'
#' @import htmlwidgets
#'
#' @param fusionPlot fusionPlot object got by \code{fusionPlot()}
#' @param showLegend Show the legend
#' @param interactiveLegend Enable interactive legend
#' @param legendPosition Specify the position of the legend
#' @param legendAllowDrag Make the legend draggable
#' @param legendIconScale Specify the legend icon size (values from "1" to "5")
#' @param reverseLegend Reverse the order of datasets
#' @param legendCaption Specify the legend caption value
#' @param legendCaptionBold Set the legend caption font style to bold
#' @param legendCaptionFont Specify the legend caption font
#' @param legendCaptionFontSize Specify the legend caption font size
#' @param legendCaptionFontColor Specify the hex color code for the caption font legend
#'
#' @examples
#' library(fusionchartsR)
#' df <- data.frame(label = c("Venezuela", "Saudi", "Canada", "Russia"), value = c(290, 260, 180, 115))
#' df %>%
#'   fusionPlot(x = "label", y = "value", type = "doughnut2d") %>%
#'   fusionLegend(legendCaption = "LegendCaption", legendCaptionFontSize = "24") %>%
#'   fusionTheme(theme = "fusion")
#'
#' @export
fusionLegend <- function(fusionPlot, showLegend = TRUE, interactiveLegend = TRUE, legendPosition = c("bottom", "left", "right"),
                         legendAllowDrag = FALSE, legendIconScale = "1", reverseLegend = FALSE, legendCaption = "",
                         legendCaptionBold = TRUE, legendCaptionFont = "Arial", legendCaptionFontSize = "14", legendCaptionFontColor = "#333333") {
  LegendAttrs <- list()
  LegendAttrs$showLegend <- as.numeric(showLegend)
  LegendAttrs$interactiveLegend <- as.numeric(interactiveLegend)
  LegendAttrs$legendPosition <- match.arg(legendPosition)
  LegendAttrs$legendAllowDrag <- as.numeric(legendAllowDrag)
  LegendAttrs$legendIconScale <- legendIconScale
  LegendAttrs$reverseLegend <- as.numeric(reverseLegend)
  LegendAttrs$legendCaption <- legendCaption
  LegendAttrs$legendCaptionBold <- as.numeric(legendCaptionBold)
  LegendAttrs$legendCaptionFont <- legendCaptionFont
  LegendAttrs$legendCaptionFontSize <- legendCaptionFontSize
  LegendAttrs$legendCaptionFontColor <- legendCaptionFontColor

  fusionPlot$x$showLegend <- LegendAttrs$showLegend
  fusionPlot$x$interactiveLegend <- LegendAttrs$interactiveLegend
  fusionPlot$x$legendPosition <- LegendAttrs$legendPosition
  fusionPlot$x$legendAllowDrag <- LegendAttrs$legendAllowDrag
  fusionPlot$x$legendIconScale <- LegendAttrs$legendIconScale
  fusionPlot$x$reverseLegend <- LegendAttrs$reverseLegend
  fusionPlot$x$legendCaption <- LegendAttrs$legendCaption
  fusionPlot$x$legendCaptionBold <- LegendAttrs$legendCaptionBold
  fusionPlot$x$legendCaptionFont <- LegendAttrs$legendCaptionFont
  fusionPlot$x$legendCaptionFontSize <- LegendAttrs$legendCaptionFontSize
  fusionPlot$x$legendCaptionFontColor <- LegendAttrs$legendCaptionFontColor

  return(fusionPlot)
}

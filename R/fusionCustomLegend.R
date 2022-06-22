#' Customing FusionCharts legend
#' 
#' \url{https://www.fusioncharts.com/dev/chart-guide/chart-configurations/legend}
#'
#' @import htmlwidgets
#'
#' @param fusionPlot fusionPlot object got by \code{fusionPlot()}
#' @param plotHighlightEffect Enable highlighting of corresponding data series after hover over a legend text
#' @param plotHighlightEffectColor Specify the color
#' @param plotHighlightEffectAlpha Specify the opacity
#' @param drawCustomLegendIcon Enable drawing of a custom legend icon
#' @param legendIconBgColor Specify the hex color code for the background of the legend icon
#' @param legendIconAlpha Set the legend icon transparency (0 to 100)
#' @param legendIconBgAlpha Set the legend icon background transparency
#' @param legendIconBorderColor Specify the hex color code for the border of the legend icon
#' @param legendIconBorderThickness Set the thickness of the legend icon border
#' @param legendIconSides Set the number of sides for the legend icon
#' @param legendIconStartAngle Set the starting angle for drawing the legend icon
#' @param legendScrollBgColor Specify the background color of the scroll bar
#' @param legendBgColor Specify the background color for the legend
#' @param legendBgAlpha Specify the background transparency for the legend
#' @param legendBorderColor Specify the border color for the legend
#' @param legendBorderThickness Specify the border thickness for the legend
#' @param legendBorderAlpha Specify the border transparency for the legend
#' @param legendCaptionAlignment Specify the horizontal alignment of the legend caption
#' @param legendShadow Enable the legend shadow
#' @param legendItemFontBold Display legend keys in bold
#' @param legendItemFont Specify the legend item font
#' @param legendItemFontSize Specify the legend item font size (0 to 72)
#' @param legendItemFontColor Specify the legend item font color
#' @param legendItemHover Enable hover effect to legend item
#' @param legendItemHoverFontColor Specify the legend item font color on hover
#' 
#' @examples
#' library(fusionchartsR)
#' df <- data.frame(label = c("Venezuela", "Saudi", "Canada", "Russia"), value = c(290, 260,180, 115))
#' df %>%
#' fusionPlot(x = "label", y = "value", type = "doughnut2d") %>%
#' fusionCustomLegend(plotHighlightEffect = TRUE) %>%
#' fusionTheme(theme = "fusion")
#'
#' @export
fusionCustomLegend <- function(fusionPlot, plotHighlightEffect = FALSE, plotHighlightEffectColor = "#7f7f7f", plotHighlightEffectAlpha = "60",
                               drawCustomLegendIcon = TRUE, legendIconBgColor = NULL, legendIconAlpha = "100", legendIconBgAlpha = "100",
                               legendIconBorderColor = "#123456", legendIconBorderThickness = "0", legendIconSides = "1", legendIconStartAngle = "45",
                               legendScrollBgColor = "#5A5A5A", legendBgColor = "#CCCCCC", legendBgAlpha = "0", legendBorderColor = "#666666",
                               legendBorderThickness = "0", legendBorderAlpha =  "40", legendCaptionAlignment = c("center", "left", "right"), 
                               legendShadow = FALSE, legendItemFontBold = FALSE, legendItemFont = "Arial", legendItemFontSize = "14",
                               legendItemFontColor = "#5A5A5A", legendItemHover = FALSE, legendItemHoverFontColor = "#cccccc"){
  CustomLegendAttrs <- list()
  
  if(isTRUE(plotHighlightEffect)){
    plotHighlightEffect <- paste0("fadeout", "|color=", plotHighlightEffectColor, ", alpha=", plotHighlightEffectAlpha)
  } 
  else {
    plotHighlightEffect <- ""
  }
  
  CustomLegendAttrs$plotHighlightEffect <- plotHighlightEffect
  CustomLegendAttrs$drawCustomLegendIcon <- as.numeric(drawCustomLegendIcon)
  
  if(is.null(legendIconBgColor)){
    CustomLegendAttrs$legendIconBgColor <- ""
  }
  else {
    CustomLegendAttrs$legendIconBgColor <- legendIconBgColor
  }

  CustomLegendAttrs$legendIconAlpha <- legendIconAlpha
  CustomLegendAttrs$legendIconBgAlpha <- legendIconBgAlpha
  CustomLegendAttrs$legendIconBorderColor <- legendIconBorderColor
  CustomLegendAttrs$legendIconBorderThickness <- legendIconBorderThickness
  CustomLegendAttrs$legendIconSides <- legendIconSides
  CustomLegendAttrs$legendIconStartAngle <- legendIconStartAngle
  CustomLegendAttrs$legendScrollBgColor <- legendScrollBgColor
  CustomLegendAttrs$legendBgColor <- legendBgColor
  CustomLegendAttrs$legendBgAlpha <- legendBgAlpha
  CustomLegendAttrs$legendBorderColor <- legendBorderColor
  CustomLegendAttrs$legendBorderThickness <- legendBorderThickness
  CustomLegendAttrs$legendBorderAlpha <- legendBorderAlpha
  CustomLegendAttrs$legendCaptionAlignment <- match.arg(legendCaptionAlignment)
  CustomLegendAttrs$legendShadow <- as.numeric(legendShadow)
  CustomLegendAttrs$legendItemFontBold <- as.numeric(legendItemFontBold)
  CustomLegendAttrs$legendItemFont <- legendItemFont
  CustomLegendAttrs$legendItemFontSize <- legendItemFontSize
  CustomLegendAttrs$legendItemFontColor <- legendItemFontColor
  
  if(isTRUE(legendItemHover)){
    CustomLegendAttrs$legendItemHoverFontColor <- legendItemHoverFontColor
  }
  else {
    CustomLegendAttrs$legendItemHoverFontColor <- ""
  }
  
  fusionPlot$x$plotHighlightEffect <- CustomLegendAttrs$plotHighlightEffect
  fusionPlot$x$drawCustomLegendIcon <- CustomLegendAttrs$drawCustomLegendIcon
  fusionPlot$x$legendIconBgColor <- CustomLegendAttrs$legendIconBgColor
  fusionPlot$x$legendIconAlpha <- CustomLegendAttrs$legendIconAlpha
  fusionPlot$x$legendIconBgAlpha <- CustomLegendAttrs$legendIconBgAlpha
  fusionPlot$x$legendIconBorderColor <- CustomLegendAttrs$legendIconBorderColor
  fusionPlot$x$legendIconBorderThickness <- CustomLegendAttrs$legendIconBorderThickness
  fusionPlot$x$legendIconSides <- CustomLegendAttrs$legendIconSides
  fusionPlot$x$legendIconStartAngle <- CustomLegendAttrs$legendIconStartAngle
  fusionPlot$x$legendScrollBgColor <- CustomLegendAttrs$legendScrollBgColor
  fusionPlot$x$legendBgColor <- CustomLegendAttrs$legendBgColor
  fusionPlot$x$legendBgAlpha <- CustomLegendAttrs$legendBgAlpha
  fusionPlot$x$legendBorderColor <- CustomLegendAttrs$legendBorderColor
  fusionPlot$x$legendBorderThickness <- CustomLegendAttrs$legendBorderThickness
  fusionPlot$x$legendBorderAlpha <- CustomLegendAttrs$legendBorderAlpha
  fusionPlot$x$legendCaptionAlignment <- CustomLegendAttrs$legendCaptionAlignment
  fusionPlot$x$legendShadow <- CustomLegendAttrs$legendShadow
  fusionPlot$x$legendItemFontBold <- CustomLegendAttrs$legendItemFontBold
  fusionPlot$x$legendItemFont <- CustomLegendAttrs$legendItemFont
  fusionPlot$x$legendItemFontSize <- CustomLegendAttrs$legendItemFontSize
  fusionPlot$x$legendItemFontColor <- CustomLegendAttrs$legendItemFontColor
  fusionPlot$x$legendItemHoverFontColor <- CustomLegendAttrs$legendItemHoverFontColor
  

  return(fusionPlot)
  
}
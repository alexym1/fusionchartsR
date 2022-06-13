#' Adding FusionCharts palette
#'
#' \url{https://www.fusioncharts.com/dev/chart-guide/chart-configurations/data-plot}
#'
#' @import htmlwidgets
#'
#' @param fusionPlot fusionPlot object got by \code{fusionPlot()}
#' @param palettecolors Specify your custom palette for data plots
#' @param usePlotGradientColor Use the gradient effect
#' @param plotGradientColor Specify the hex code of the gradient color
#' @param plotFillAngle Set the fill angle for the gradient (0 to 360)
#' @param plotFillRatioStart Specify the start of the gradient effect
#' @param plotFillRatioEnd Specify the end of the gradient effect
#' @param plotFillAlpha Set the transparency of the gradient fill
#' @param showPlotBorder Show the plot border
#' @param drawFullAreaBorder To set the top border of the area chart (only works if showPlotBorder = TRUE)
#' @param inheritPlotBorderColor Enable the plot border to inherit the color of an area plot
#' @param plotBorderDashed Make the border dashed
#' @param plotBorderDashLen Set the length of each dash in plot-border (in pixels)
#' @param plotBorderDashGap Set the gap between two consecutive dashes in plot border (in pixels)
#' @param plotBorderThickness Set the thickness of the plot border
#' @param plotBorderColor Set the color of the plot border
#' @param useRoundEdges Enable rounded edges (2D Column or Bar charts only)
#' @param plotHoverEffect Enable hover effects for the data plots
#' @param plotFillHoverColor Set the hover color for data plots in hex code format
#' @param plotFillHoverAlpha Set the transparency for hover color for data plots
#' @param plotBorderHoverColor Set the hover border color
#' @param plotBorderHoverAlpha Set the transparency of hover border for data plots
#' @param plotBorderHoverThickness Set the hover border thickness (in pixels)
#' @param plotBorderHoverDashed Make dashed borders on hover
#' @param plotBorderHoverDashLen Set the length of each dash for all data plots on hover
#' @param plotBorderHoverDashGap Set the gap between two consecutive dashes for all data plots on hover(in pixels)
#' 
#' @examples
#' library(fusionchartsR)
#' df <- data.frame(label = c("Venezuela", "Saudi", "Canada", "Russia"), value = c(290, 260,180, 115))
#' 
#' df %>%
#' fusionPlot(x = "label", y = "value", type = "pie2d") %>%
#' fusionTheme(theme = "gammel")
#' 
#' df %>%
#' fusionPlot(x = "label", y = "value", type = "pie2d") %>%
#' fusionPalette(palettecolors = c("5d62b5", "29c3be", "f2726f")) %>%
#' fusionTheme(theme = "gammel")
#'
#' @export
fusionPalette <- function(fusionPlot, palettecolors = NULL, usePlotGradientColor = FALSE, plotGradientColor = "#003366",
                            plotFillAngle = "0", plotFillRatioStart = "90", plotFillRatioEnd = "100", plotFillAlpha = "100",
                            showPlotBorder = FALSE, drawFullAreaBorder = FALSE, inheritPlotBorderColor = FALSE,
                          plotBorderDashed = FALSE, plotBorderDashLen = "4", plotBorderDashGap = "4", plotBorderThickness = "1",
                          plotBorderColor = "#666666", useRoundEdges = FALSE, plotHoverEffect = FALSE, plotFillHoverColor = "#5D62B5",
                          plotFillHoverAlpha = "100", plotBorderHoverColor = "#000000", plotBorderHoverAlpha = "100", plotBorderHoverThickness = "1",
                          plotBorderHoverDashed = TRUE, plotBorderHoverDashLen = "6", plotBorderHoverDashGap = "2"){
  
  PaletteAttrs <- list()
  PaletteAttrs$palettecolors <- palettecolors
  PaletteAttrs$usePlotGradientColor <- as.numeric(usePlotGradientColor)
  PaletteAttrs$plotGradientColor <- plotGradientColor
  PaletteAttrs$plotFillAngle <- plotFillAngle
  
  PaletteAttrs$plotFillRatio <- paste0(plotFillRatioStart,",", plotFillRatioEnd)
  PaletteAttrs$plotFillAlpha <- plotFillAlpha
  PaletteAttrs$showPlotBorder <- as.numeric(showPlotBorder)
  PaletteAttrs$drawFullAreaBorder <- as.numeric(drawFullAreaBorder)
  PaletteAttrs$inheritPlotBorderColor <- as.numeric(inheritPlotBorderColor)
  PaletteAttrs$plotBorderDashed <- as.numeric(plotBorderDashed)
  PaletteAttrs$plotBorderDashLen <- plotBorderDashLen
  PaletteAttrs$plotBorderDashGap <- plotBorderDashGap
  PaletteAttrs$plotBorderThickness <- plotBorderThickness
  PaletteAttrs$plotBorderColor <- plotBorderColor
  PaletteAttrs$useRoundEdges <- as.numeric(useRoundEdges)
  PaletteAttrs$plotHoverEffect <- as.numeric(plotHoverEffect)
  PaletteAttrs$plotFillHoverColor <- plotFillHoverColor
  PaletteAttrs$plotFillHoverAlpha <- plotFillHoverAlpha
  PaletteAttrs$plotBorderHoverColor <- plotBorderHoverColor
  PaletteAttrs$plotBorderHoverAlpha <- plotBorderHoverAlpha
  PaletteAttrs$plotBorderHoverThickness <- plotBorderHoverThickness
  PaletteAttrs$plotBorderHoverDashed <- as.numeric(plotBorderHoverDashed)
  PaletteAttrs$plotBorderHoverDashLen <- plotBorderHoverDashLen
  PaletteAttrs$plotBorderHoverDashGap <- plotBorderHoverDashGap
  
  
  fusionPlot$x$palettecolors <- PaletteAttrs$palettecolors
  fusionPlot$x$usePlotGradientColor <- PaletteAttrs$usePlotGradientColor
  fusionPlot$x$plotGradientColor <- PaletteAttrs$plotGradientColor
  fusionPlot$x$plotFillAngle <- PaletteAttrs$plotFillAngle
  fusionPlot$x$plotFillRatio <- PaletteAttrs$plotFillRatio
  fusionPlot$x$plotFillAlpha <- PaletteAttrs$plotFillAlpha
  fusionPlot$x$showPlotBorder <- PaletteAttrs$showPlotBorder
  fusionPlot$x$drawFullAreaBorder <- PaletteAttrs$drawFullAreaBorder
  fusionPlot$x$inheritPlotBorderColor <- PaletteAttrs$inheritPlotBorderColor
  fusionPlot$x$plotBorderDashed <- PaletteAttrs$plotBorderDashed
  fusionPlot$x$plotBorderDashLen <- PaletteAttrs$plotBorderDashLen
  fusionPlot$x$plotBorderDashGap <- PaletteAttrs$plotBorderDashGap
  fusionPlot$x$plotBorderThickness <- PaletteAttrs$plotBorderThickness
  fusionPlot$x$plotBorderColor <- PaletteAttrs$plotBorderColor
  fusionPlot$x$useRoundEdges <- PaletteAttrs$useRoundEdges
  fusionPlot$x$plotHoverEffect <- PaletteAttrs$plotHoverEffect
  fusionPlot$x$plotFillHoverColor <- PaletteAttrs$plotFillHoverColor
  fusionPlot$x$plotFillHoverAlpha <- PaletteAttrs$plotFillHoverAlpha
  fusionPlot$x$plotBorderHoverColor <- PaletteAttrs$plotBorderHoverColor
  fusionPlot$x$plotBorderHoverAlpha <- PaletteAttrs$plotBorderHoverAlpha
  fusionPlot$x$plotBorderHoverThickness <- PaletteAttrs$plotBorderHoverThickness
  fusionPlot$x$plotBorderHoverDashed <- PaletteAttrs$plotBorderHoverDashed
  fusionPlot$x$plotBorderHoverDashLen <- PaletteAttrs$plotBorderHoverDashLen
  fusionPlot$x$plotBorderHoverDashGap <- PaletteAttrs$plotBorderHoverDashGap
  
  return(fusionPlot)
}

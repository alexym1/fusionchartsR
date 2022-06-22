#' Adding FusionCharts canvas
#'
#' \url{https://www.fusioncharts.com/dev/chart-guide/chart-configurations/canvas}
#'
#' @import htmlwidgets
#'
#' @param fusionPlot fusionPlot object got by \code{fusionPlot()}
#' @param showCanvasBg Show the canvas background
#' @param canvasbgColorFirst Specify the hex code of the first canvas background color
#' @param canvasbgColorSecond Specify the hex code of the second canvas background color
#' @param canvasBgDepth Set the depth of the canvas background
#' @param canvasbgAlpha Set the transparency of the background color
#' @param canvasBgRatioStart Set the first value of the canvas background ratio (in percentage)
#' @param canvasBgRatioEnd Set the second value of the canvas background ratio (in percentage)
#' @param canvasBgAngle Specify canvas background angle (in degrees)
#' @param showCanvasBorder Show the canvas border
#' @param canvasBorderColor Set the border color
#' @param canvasBorderAlpha Set the transparency of the border
#' @param canvasBorderThickness Set the thickness of the border
#' @param showCanvasBase Show the canvas base
#' @param canvasBaseDepth Set the height of the canvas base
#' @param canvasBaseColor Specify the hex code of the base color
#' 
#' @examples
#' library(fusionchartsR)
#' df <- data.frame(label = c("Venezuela", "Saudi", "Canada", "Russia"), value = c(290, 260,180, 115))
#' df %>%
#' fusionPlot(x = "label", y = "value", type = "column2d") %>%
#' fusionCanvas(showCanvasBorder = TRUE, canvasBorderThickness = "4", canvasBorderAlpha = "80") %>%
#' fusionTheme(theme = "fusion")
#'
#' @export
fusionCanvas <- function(fusionPlot, showCanvasBg = FALSE, canvasbgColorFirst = "#5a5a5a", canvasbgColorSecond = NULL,
                         canvasBgDepth = "0", canvasbgAlpha = "100", canvasBgRatioStart = "40", canvasBgRatioEnd = "60", canvasBgAngle = "0",
                         showCanvasBorder = FALSE, canvasBorderColor = "#666666", canvasBorderAlpha = "80", 
                         canvasBorderThickness = "1", showCanvasBase = FALSE, canvasBaseDepth = "5", canvasBaseColor = "#aaaaaa"){
  CanvasAttrs <- list()
  CanvasAttrs$showCanvasBg <- as.numeric(showCanvasBg)
  
  if(!is.null(canvasbgColorFirst) & is.null(canvasbgColorSecond)){
    CanvasAttrs$canvasbgColor <- canvasbgColorFirst
  }
  else if(is.null(canvasbgColorFirst) & !is.null(canvasbgColorSecond)){
    CanvasAttrs$canvasbgColor <- canvasbgColorSecond
  }
  else if(is.null(canvasbgColorFirst) & is.null(canvasbgColorSecond)){
    CanvasAttrs$canvasbgColor <- "#ffffff"
  }
  else {
    CanvasAttrs$canvasbgColor <- paste0(canvasbgColorFirst, ",", canvasbgColorSecond)
  }
  
  CanvasAttrs$canvasBgDepth <- canvasBgDepth
  CanvasAttrs$canvasbgAlpha <- canvasbgAlpha
  CanvasAttrs$canvasBgRatio <- paste0(canvasBgRatioStart,",", canvasBgRatioEnd)
  CanvasAttrs$canvasBgAngle <- canvasBgAngle
  CanvasAttrs$showCanvasBorder <- as.numeric(showCanvasBorder)
  CanvasAttrs$canvasBorderColor <- canvasBorderColor
  CanvasAttrs$canvasBorderAlpha <- canvasBorderAlpha
  CanvasAttrs$canvasBorderThickness <- canvasBorderThickness
  CanvasAttrs$showCanvasBase <- as.numeric(showCanvasBase)
  CanvasAttrs$canvasBaseDepth <- canvasBaseDepth
  CanvasAttrs$canvasBaseColor <- canvasBaseColor
  
  
  fusionPlot$x$showCanvasBg <- CanvasAttrs$showCanvasBg
  fusionPlot$x$canvasbgColor <- CanvasAttrs$canvasbgColor
  fusionPlot$x$canvasBgDepth <- CanvasAttrs$canvasBgDepth
  fusionPlot$x$canvasbgAlpha <- CanvasAttrs$canvasbgAlpha
  fusionPlot$x$canvasBgRatio <- CanvasAttrs$canvasBgRatio
  fusionPlot$x$canvasBgAngle <- CanvasAttrs$canvasBgAngle
  fusionPlot$x$showCanvasBorder <- CanvasAttrs$showCanvasBorder
  fusionPlot$x$canvasBorderColor <- CanvasAttrs$canvasBorderColor
  fusionPlot$x$canvasBorderAlpha <- CanvasAttrs$canvasBorderAlpha
  fusionPlot$x$canvasBorderThickness <- CanvasAttrs$canvasBorderThickness
  fusionPlot$x$showCanvasBase <- CanvasAttrs$showCanvasBase
  fusionPlot$x$canvasBaseDepth <- CanvasAttrs$canvasBaseDepth
  fusionPlot$x$canvasBaseColor <- CanvasAttrs$canvasBaseColor
  
  
  return(fusionPlot)

}
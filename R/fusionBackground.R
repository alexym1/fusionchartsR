#' Adding FusionCharts borders & background
#' 
#' \url{https://www.fusioncharts.com/dev/chart-guide/chart-configurations/border-and-background}
#'
#' @import htmlwidgets
#' 
#' @param fusionPlot fusionPlot object got by \code{fusionPlot()}
#' @param showBorder Show the chart border
#' @param borderColor Specify the color of the border
#' @param borderThickness Set the thickness of the border
#' @param borderAlpha Set the transparency of the border
#' @param bgColorStart,bgColorEnd Set the hex codes of the starting and ending gradient colors
#' @param bgAlphaStart,bgAlphaEnd Set the transparency of the starting ending gradient colors
#' @param bgratioStart,bgratioEnd Set the radius of gradient colors
#' @param bgAngle Set the angle in degrees of gradient colors
#' 
#' @examples
#' library(fusionchartsR)
#' df <- data.frame(label = c("Venezuela", "Saudi", "Canada", "Russia"), value = c(290, 260,180, 115))
#' df %>%
#' fusionPlot(x = "label", y = "value", type = "column3d") %>%
#' fusionBackground(showBorder = TRUE, bgColorStart = "#DDDDDD") %>%
#' fusionTheme(theme = "fusion")
#'
#' @export
fusionBackground <- function(fusionPlot, showBorder = FALSE,  borderColor = "#666666", borderThickness = "4", borderAlpha = "80", 
                             bgColorStart = "#ffffff", bgColorEnd = NULL, bgAlphaStart = "50", bgAlphaEnd = NULL, bgratioStart = "60", bgratioEnd = "40",
                             bgAngle = "180"){
  
  BorderBackgroundAttrs <- list()
  BorderBackgroundAttrs$showBorder <- as.numeric(showBorder)
  BorderBackgroundAttrs$borderColor <- borderColor
  BorderBackgroundAttrs$borderThickness <- borderThickness
  BorderBackgroundAttrs$borderAlpha <- borderAlpha
  
  if(!is.null(bgColorStart) & is.null(bgColorEnd)){
    BorderBackgroundAttrs$bgColor <- bgColorStart
  }
  else if(is.null(bgColorStart) & !is.null(bgColorEnd)){
    BorderBackgroundAttrs$bgColor <- bgColorEnd
  }
  else if(is.null(bgColorStart) & is.null(bgColorEnd)){
    BorderBackgroundAttrs$bgColor <- "#ffffff"
  }
  else {
    BorderBackgroundAttrs$bgColor <- paste0(bgColorStart, ",", bgColorEnd)
  }
  
  
  if(!is.null(bgAlphaStart) & is.null(bgAlphaEnd)){
    BorderBackgroundAttrs$bgAlpha <- bgAlphaStart
  }
  else if(is.null(bgAlphaStart) & !is.null(bgAlphaEnd)){
    BorderBackgroundAttrs$bgAlpha <- bgAlphaEnd
  }
  else if(is.null(bgAlphaStart) & is.null(bgAlphaEnd)){
    BorderBackgroundAttrs$bgAlpha <- "100"
  }
  else {
    BorderBackgroundAttrs$bgAlpha <- paste0(bgAlphaStart, ",", bgAlphaEnd)
  }
  
  
  if(!is.null(bgratioStart) & is.null(bgratioEnd)){
    BorderBackgroundAttrs$bgratio <- bgratioStart
  }
  else if(is.null(bgratioStart) & !is.null(bgratioEnd)){
    BorderBackgroundAttrs$bgratio <- bgratioEnd
  }
  else if(is.null(bgratioStart) & is.null(bgratioEnd)){
    BorderBackgroundAttrs$bgratio <- "180"
  }
  else {
    BorderBackgroundAttrs$bgratio <- paste0(bgratioStart, ",", bgratioEnd)
  }
  
  BorderBackgroundAttrs$bgAngle <- bgAngle
  # BorderBackgroundAttrs$bgImage <- bgImage
  # BorderBackgroundAttrs$bgImageAlpha <- bgImageAlpha
  # BorderBackgroundAttrs$bgImageScale <- bgImageScale
  # BorderBackgroundAttrs$bgImageVAlign <- bgImageVAlign
  # BorderBackgroundAttrs$bgImageHAlign <- bgImageHAlign
  # BorderBackgroundAttrs$bgImageDisplayMode <- match.arg(bgImageDisplayMode)

  
  
  fusionPlot$x$showBorder <- BorderBackgroundAttrs$showBorder
  fusionPlot$x$borderColor <- BorderBackgroundAttrs$borderColor
  fusionPlot$x$borderThickness <- BorderBackgroundAttrs$borderThickness
  fusionPlot$x$borderAlpha <- BorderBackgroundAttrs$borderAlpha
  fusionPlot$x$bgColor <- BorderBackgroundAttrs$bgColor
  fusionPlot$x$bgAlpha <- BorderBackgroundAttrs$bgAlpha
  fusionPlot$x$bgratio <- BorderBackgroundAttrs$bgratio
  fusionPlot$x$bgAngle <- BorderBackgroundAttrs$bgAngle
  # fusionPlot$x$bgImage <- BorderBackgroundAttrs$bgImage
  # fusionPlot$x$bgImageAlpha <- BorderBackgroundAttrs$bgImageAlpha
  # fusionPlot$x$bgImageScale <- BorderBackgroundAttrs$bgImageScale
  # fusionPlot$x$bgImageVAlign <- BorderBackgroundAttrs$bgImageVAlign
  # fusionPlot$x$bgImageHAlign <- BorderBackgroundAttrs$bgImageHAlign
  # fusionPlot$x$bgImageDisplayMode <- BorderBackgroundAttrs$bgImageDisplayMode

  
  return(fusionPlot)
  
}
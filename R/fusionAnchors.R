#' Adding FusionCharts anchors 
#'
#' \url{https://www.fusioncharts.com/dev/chart-guide/chart-configurations/anchors-and-lines}
#'
#' @import htmlwidgets
#'
#' @param fusionPlot fusionPlot object got by \code{fusionPlot()}
#' @param drawAnchors Show the anchors
#' @param showvalues Show the values of the anchors
#' @param anchorSides Specify the number of sides to define the shape of the anchor
#' @param anchorRadius Set the radius of the anchor
#' @param anchorAlpha Set the transparency of the anchor
#' @param anchorBorderThickness Set the thickness of the anchor border
#' @param anchorBorderColor Set the hex code for anchor border color
#' @param anchorBgColor Set the hex code for anchor background color
#' @param anchorBgAlpha Set the transparency of the anchor background
#' @param anchorImageAlpha Set the transparency of the image
#' @param anchorImageScale Set the scale of the image
#' 
#' @examples
#' library(fusionchartsR)
#' df <- data.frame(label = c("Venezuela", "Saudi", "Canada", "Russia"), value = c(290, 260,180, 115))
#' df %>%
#' fusionPlot(x = "label", y = "value", type = "line") %>%
#' fusionAnchors(anchorRadius = "6", anchorBorderThickness = "2") %>%
#' fusionTheme(theme = "fusion")
#'
#' @export
fusionAnchors <- function(fusionPlot, drawAnchors = TRUE, showvalues = FALSE, anchorSides =  "0", anchorRadius = "3", anchorAlpha = "100", anchorBorderThickness = "1", 
                          anchorBorderColor = "#5a5a5a", anchorBgColor = "#ffffff", anchorBgAlpha = "100", anchorImageAlpha = "100", anchorImageScale = "150") {
  AnchorsAttrs <- list()
  AnchorsAttrs$drawAnchors <- as.numeric(drawAnchors)
  AnchorsAttrs$showvalues <- as.numeric(showvalues)
  AnchorsAttrs$anchorSides <- anchorSides
  AnchorsAttrs$anchorRadius <- anchorRadius
  AnchorsAttrs$anchorAlpha <- anchorAlpha
  AnchorsAttrs$anchorBorderThickness <- anchorBorderThickness
  AnchorsAttrs$anchorBorderColor <- anchorBorderColor
  AnchorsAttrs$anchorBgColor <- anchorBgColor
  AnchorsAttrs$anchorBgAlpha <- anchorBgAlpha
  AnchorsAttrs$anchorImageAlpha <- anchorImageAlpha
  AnchorsAttrs$anchorImageScale <- anchorImageScale
  
  fusionPlot$x$drawAnchors <- AnchorsAttrs$drawAnchors
  fusionPlot$x$showvalues <- AnchorsAttrs$showvalues
  fusionPlot$x$anchorSides <- AnchorsAttrs$anchorSides
  fusionPlot$x$anchorRadius <- AnchorsAttrs$anchorRadius
  fusionPlot$x$anchorAlpha <- AnchorsAttrs$anchorAlpha
  fusionPlot$x$anchorBorderThickness <- AnchorsAttrs$anchorBorderThickness
  fusionPlot$x$anchorBorderColor <- AnchorsAttrs$anchorBorderColor
  fusionPlot$x$anchorBgColor <- AnchorsAttrs$anchorBgColor
  fusionPlot$x$anchorBgAlpha <- AnchorsAttrs$anchorBgAlpha
  fusionPlot$x$anchorImageAlpha <- AnchorsAttrs$anchorImageAlpha
  fusionPlot$x$anchorImageScale <- AnchorsAttrs$anchorImageScale
  
  return(fusionPlot)
}





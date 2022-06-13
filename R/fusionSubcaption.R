#' Adding FusionCharts subcaption
#'
#' \url{https://www.fusioncharts.com/dev/chart-guide/chart-configurations/caption-and-sub-caption}
#'
#' @import htmlwidgets
#'
#' @param fusionPlot fusionPlot object got by \code{fusionPlot()}
#' @param subcaption Specify the subcaption of the chart
#' @param subcaptionFont Set the subcaption font family
#' @param subcaptionFontSize Set the subcaption font size (between 0 and 72) 
#' @param subcaptionFontColor Set the subcaption font color in hex code
#' @param subcaptionFontBold Enable subcaption font to bold
#' 
#' @examples
#' library(fusionchartsR)
#' 
#' mtcars %>%
#' fusionPlot(
#' x = "cyl", 
#' y = "mpg", 
#' type = "boxandwhisker2d"
#' ) %>%
#' fusionCaption(caption = "Caption on the left", captionAlignment = "left") %>%
#' fusionSubcaption(subcaption = "subcaption too") %>%
#' fusionPalette(palettecolors = c("#5D62B5", "#979AD0")) %>%
#' fusionTheme(theme = "fusion") 
#'
#' @export
fusionSubcaption <- function(fusionPlot, subcaption = "Add a subCaption here", subcaptionFont = "Arial", 
                             subcaptionFontSize = "14", subcaptionFontColor = "#999999", subcaptionFontBold = FALSE) {
  
  SubcaptionAttrs <- list()
  SubcaptionAttrs$subCaption <- subcaption
  SubcaptionAttrs$subcaptionFont <- subcaptionFont
  SubcaptionAttrs$subcaptionFontSize <- subcaptionFontSize
  SubcaptionAttrs$subcaptionFontColor <- subcaptionFontColor
  SubcaptionAttrs$subcaptionFontBold <- as.numeric(subcaptionFontBold)
  
  fusionPlot$x$subCaption <- SubcaptionAttrs$subCaption
  fusionPlot$x$subcaptionFont <- SubcaptionAttrs$subcaptionFont
  fusionPlot$x$subcaptionFontSize <- SubcaptionAttrs$subcaptionFontSize
  fusionPlot$x$subcaptionFontColor <- SubcaptionAttrs$subcaptionFontColor
  fusionPlot$x$subcaptionFontBold <- SubcaptionAttrs$subcaptionFontBold
  
  return(fusionPlot)
}
#' Adding FusionCharts caption
#'
#' \url{https://www.fusioncharts.com/dev/chart-guide/chart-configurations/caption-and-sub-caption}
#'
#' @import htmlwidgets
#'
#' @param fusionPlot fusionPlot object got by \code{fusionPlot()}
#' @param caption Specify the caption of the chart
#' @param captionFont Set the caption font family
#' @param captionFontSize Set the caption font size (between 0 and 72)
#' @param captionFontColor Set the caption font color
#' @param captionFontBold Enable caption font to bold
#' @param captionOnTop Display the caption at the top of the chart
#' @param captionAlignment Specify the horizontal alignment of the caption
#'
#' @examples
#' library(fusionchartsR)
#'
#' mtcars %>%
#'   fusionPlot(
#'     x = "cyl",
#'     y = "mpg",
#'     type = "boxandwhisker2d"
#'   ) %>%
#'   fusionCaption(caption = "Caption on the left", captionAlignment = "left") %>%
#'   fusionSubcaption(subcaption = "subcaption too") %>%
#'   fusionPalette(palettecolors = c("#5D62B5", "#979AD0")) %>%
#'   fusionTheme(theme = "fusion")
#'
#' @export
fusionCaption <- function(fusionPlot, caption = "Add a caption here", captionFont = "Arial",
                          captionFontSize = "18", captionFontColor = "#5A5A5A", captionFontBold = TRUE, captionOnTop = TRUE,
                          captionAlignment = c("center", "left", "right")) {
  CaptionAttrs <- list()
  CaptionAttrs$caption <- caption
  CaptionAttrs$captionFont <- captionFont
  CaptionAttrs$captionFontSize <- captionFontSize
  CaptionAttrs$captionFontColor <- captionFontColor
  CaptionAttrs$captionFontBold <- as.numeric(captionFontBold)
  CaptionAttrs$captionAlignment <- match.arg(captionAlignment)
  CaptionAttrs$captionOnTop <- as.numeric(captionOnTop)

  fusionPlot$x$caption <- CaptionAttrs$caption
  fusionPlot$x$captionFont <- CaptionAttrs$captionFont
  fusionPlot$x$captionFontSize <- CaptionAttrs$captionFontSize
  fusionPlot$x$captionFontColor <- CaptionAttrs$captionFontColor
  fusionPlot$x$captionFontBold <- CaptionAttrs$captionFontBold
  fusionPlot$x$captionAlignment <- CaptionAttrs$captionAlignment
  fusionPlot$x$captionOnTop <- CaptionAttrs$captionOnTop

  return(fusionPlot)
}

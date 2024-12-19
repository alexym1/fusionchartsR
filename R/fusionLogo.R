#' Adding FusionCharts logo
#'
#' \url{https://www.fusioncharts.com/dev/chart-guide/chart-configurations/loading-external-logo}
#'
#' @import htmlwidgets
#'
#' @param fusionPlot fusionPlot object got by \code{fusionPlot()}
#' @param logoURL Specify the URL of the external logo
#' @param logoAlpha Set the transparency of the external logo
#' @param logoScale Set the scale of the external logo (0 to 300)
#' @param logoPosition Specify the position of the external logo
#' @param logoLink Add an external link to the external logo
#'
#' @examples
#' library(fusionchartsR)
#' df <- data.frame(label = c("Venezuela", "Saudi", "Canada", "Russia"), value = c(290, 260, 180, 115))
#' logoURL <- "https://static.fusioncharts.com/sampledata/images/Logo-HM-72x72.png"
#' df %>%
#'   fusionPlot(x = "label", y = "value", type = "doughnut2d") %>%
#'   fusionLogo(logoURL = logoURL) %>%
#'   fusionTheme(theme = "fusion")
#'
#' @export
fusionLogo <- function(fusionPlot, logoURL = "NULL", logoAlpha = "40", logoScale = "80", logoPosition = c("TL", "TR", "BL", "BR", "CC"),
                       logoLink = NULL) {
  LogoAttrs <- list()
  LogoAttrs$logoURL <- logoURL
  LogoAttrs$logoAlpha <- logoAlpha
  LogoAttrs$logoScale <- logoScale
  LogoAttrs$logoPosition <- match.arg(logoPosition)
  LogoAttrs$logoLink <- logoLink

  fusionPlot$x$logoURL <- LogoAttrs$logoURL
  fusionPlot$x$logoAlpha <- LogoAttrs$logoAlpha
  fusionPlot$x$logoScale <- LogoAttrs$logoScale
  fusionPlot$x$logoPosition <- LogoAttrs$logoPosition
  fusionPlot$x$logoLink <- LogoAttrs$logoLink
  return(fusionPlot)
}

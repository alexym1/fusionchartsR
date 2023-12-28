#' Adding FusionCharts trend-line/trend-zone
#'
#' \url{https://www.fusioncharts.com/dev/chart-guide/chart-configurations/trend-lines-and-zones}
#'
#' @import htmlwidgets
#'
#' @param fusionPlot fusionPlot object got by \code{fusionPlot()}
#' @param isTrendZone Render a trend zone on a chart
#' @param displayValue Add text next to the trend-line 
#' @param startValue Specify the data value of the starting point of the trend-line
#' @param endValue Specify the data value of the ending point of the trend-line
#' @param color Specify the hex code for the color of the trend-line
#' @param thickness Specify the thickness of the trend-line(in pixels) 
#' @param alpha Specify the transparency of the trend-line
#' @param valueOnRight Enable right position
#' @param trendValueFont Set the font family for the trend-line display values
#' @param trendValueFontSize Set the font size for the trend-line display values
#' @param trendValueFontBold Make trend-line display values appear in bold
#' @param trendValueFontItalic Make trend-line display values appear in italic
#' @param trendValueAlpha Set the transparency for the trend-line display values
#' @param trendValueBgColor Set the color for the background of the trend-line display values
#' @param trendValueBgAlpha Set the transparency for the background of trend-line display values 
#' @param trendValueBorderColor Set the color for the border around the trend-line display values
#' @param trendValueBorderAlpha Set the transparency for the border around the trend-line display values (0 to 100)
#' @param trendValueBorderPadding Set the padding for the border around the trend-line display values
#' @param trendValueBorderRadius Set the radius for the border around the trend-line display values
#' @param trendValueBorderThickness Set the thickness of the border around the trend-line display values
#' @param trendValueBorderDashed Specify whether the border around the trend-line display value will be drawn as a dashed line
#' @param trendValueBorderDashLen Set the length of each dash
#' @param trendValueBorderDashGap Set the gap between each dash
#' 
#' @examples
#' library(fusionchartsR)
#' df <- data.frame(label = c("Venezuela", "Saudi", "Canada", "Russia"), value = c(290, 260,180, 115))
#' df %>%
#' fusionPlot(x = "label", y = "value", type = "column2d") %>%
#' fusionTrendline(displayValue = "Help", startValue = "100") %>%
#' fusionTheme(theme = "candy")
#'
#' @export
fusionTrendline <- function(fusionPlot, isTrendZone = FALSE, displayValue = "", startValue = "", endValue = "", color = "#FFFFFF", 
                            thickness = 2, alpha = "60", valueOnRight = TRUE, trendValueFont = "Arial", trendValueFontSize = "12",
                            trendValueFontBold = TRUE, trendValueFontItalic = FALSE, trendValueAlpha = "80", trendValueBgColor = "#000000", trendValueBgAlpha =  "10", 
                            trendValueBorderColor = "#000000", trendValueBorderAlpha = "80", trendValueBorderPadding = "4", trendValueBorderRadius = "5", trendValueBorderThickness = "2", trendValueBorderDashed = FALSE, 
                            trendValueBorderDashLen = "#5A5A5A", trendValueBorderDashGap = "1"){
  
  TrendlineAttrs <- list()
  
  TrendlineAttrs$isTrendZone <- as.numeric(isTrendZone)
  TrendlineAttrs$displayValue <- displayValue
  TrendlineAttrs$startValue <- startValue
  TrendlineAttrs$endValue <- endValue
  TrendlineAttrs$color <- color
  TrendlineAttrs$thickness <- thickness
  TrendlineAttrs$alpha <- alpha
  TrendlineAttrs$valueOnRight <- as.numeric(valueOnRight)
  TrendlineAttrs$trendValueFont <- trendValueFont
  TrendlineAttrs$trendValueFontSize <- trendValueFontSize
  TrendlineAttrs$trendValueFontBold <- as.numeric(trendValueFontBold)
  TrendlineAttrs$trendValueFontItalic <- as.numeric(trendValueFontItalic)
  TrendlineAttrs$trendValueAlpha <- trendValueAlpha
  TrendlineAttrs$trendValueBgColor <- trendValueBgColor
  TrendlineAttrs$trendValueBgAlpha <- trendValueBgAlpha
  TrendlineAttrs$trendValueBorderColor <- trendValueBorderColor
  TrendlineAttrs$trendValueBorderAlpha <- trendValueBorderAlpha
  TrendlineAttrs$trendValueBorderPadding <- trendValueBorderPadding
  TrendlineAttrs$trendValueBorderRadius <- trendValueBorderRadius
  TrendlineAttrs$trendValueBorderThickness <- trendValueBorderThickness
  TrendlineAttrs$trendValueBorderDashed <- as.numeric(trendValueBorderDashed)
  TrendlineAttrs$trendValueBorderDashLen <- trendValueBorderDashLen
  TrendlineAttrs$trendValueBorderDashGap <- trendValueBorderDashGap
  
  
  fusionPlot$x$isTrendZone <- TrendlineAttrs$isTrendZone
  fusionPlot$x$displayValue <- TrendlineAttrs$displayValue
  fusionPlot$x$startValue <- TrendlineAttrs$startValue
  fusionPlot$x$endValue <- TrendlineAttrs$endValue
  fusionPlot$x$color <- TrendlineAttrs$color
  fusionPlot$x$thickness <- TrendlineAttrs$thickness
  fusionPlot$x$alpha <- TrendlineAttrs$alpha
  fusionPlot$x$valueOnRight <- TrendlineAttrs$valueOnRight
  fusionPlot$x$trendValueFont <- TrendlineAttrs$trendValueFont
  fusionPlot$x$trendValueFontSize <- TrendlineAttrs$trendValueFontSize
  fusionPlot$x$trendValueFontBold <- TrendlineAttrs$trendValueFontBold
  fusionPlot$x$trendValueFontItalic <- TrendlineAttrs$trendValueFontItalic
  fusionPlot$x$trendValueAlpha <- TrendlineAttrs$trendValueAlpha
  fusionPlot$x$trendValueBgColor <- TrendlineAttrs$trendValueBgColor
  fusionPlot$x$trendValueBgAlpha <- TrendlineAttrs$trendValueBgAlpha
  fusionPlot$x$trendValueBorderColor <- TrendlineAttrs$trendValueBorderColor
  fusionPlot$x$trendValueBorderAlpha <- TrendlineAttrs$trendValueBorderAlpha
  fusionPlot$x$trendValueBorderPadding <- TrendlineAttrs$trendValueBorderPadding
  fusionPlot$x$trendValueBorderRadius <- TrendlineAttrs$trendValueBorderRadius
  fusionPlot$x$trendValueBorderThickness <- TrendlineAttrs$trendValueBorderThickness
  fusionPlot$x$trendValueBorderDashed <- TrendlineAttrs$trendValueBorderDashed
  fusionPlot$x$trendValueBorderDashLen <- TrendlineAttrs$trendValueBorderDashLen
  fusionPlot$x$trendValueBorderDashGap <- TrendlineAttrs$trendValueBorderDashGap
  
  return(fusionPlot)
  
}

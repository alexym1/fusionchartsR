#' Customing FusionCharts axis
#'
#' \url{https://www.fusioncharts.com/dev/chart-guide/chart-configurations/axes}
#'
#' @import htmlwidgets
#'
#' @param fusionPlot fusionPlot object got by \code{fusionPlot()}
#' @param showlabels Display the data labels
#' @param xAxisPosition change the position of the x-axis
#' @param yAxisPosition change the position of the y-axis
#' @param yAxisMinValue Set the lower limit of the x-axis
#' @param yAxisMaxValue Set the upper limit of the y-axis
#' @param AxisNameBorderColor Set the border color of the name of the axis
#' @param AxisNameBorderAlpha Set the transparency of the border around the name of axis
#' @param AxisNameBorderPadding Set the padding of the border around the name of the axis
#' @param AxisNameBorderRadius Set the radius of the border around the name of the axis
#' @param AxisNameBorderThickness Set the thickness of the border around the name of the axis
#' @param AxisNameBorderDashed Make the border around the name of the axis dashed
#' @param AxisNameBorderDashLen Set the length of each dash in the dashed border around the name of the axis
#' @param AxisNameBorderDashGap Set the gap between two consecutive dashes in the dashed border around the name of the axis
#' @param AxisNameBgColor Set the background color of the name of the axis
#' @param AxisNameBgAlpha Set the transparency of the background of the name of the axis
#' @param AxisNameFontAlpha Set the transparency of the name of the axis
#' @param AxisValueFont Set the font of the axis values
#' @param AxisValueFontSize Set the font size (between 0 to 72) of the axis values
#' @param AxisValueFontColor Set the font color of the axis
#' @param AxisValueFontBold Set the font of the axis values to bold
#' @param AxisValueFontItalic Set the font for the axis values to italics
#' @param AxisValueAlpha Set the degree of transparency of the axis values
#' @param AxisValueBgColor Set the background color of the axis values
#' @param AxisValueBgAlpha Set the background color transparency of the axis values
#' @param AxisValueBorderColor Set the border color of the axis values
#' @param AxisValueBorderAlpha Set the transparency of the border of the axis values
#' @param AxisValueBorderPadding Set the padding of the axis values border
#' @param AxisValueBorderRadius Set the border radius of the axis values
#' @param AxisValueBorderThickness Set the border thickness of the axis values
#' @param AxisValueBorderDashed Make the axis values border dashed
#' @param AxisValueBorderDashLen Set the length of each dash for the dashed borders around axis values
#' @param AxisValueBorderDashGap Set the gap between two consecutive dashes for the dashed borders around the axis values
#'
#'
#' @examples
#' library(fusionchartsR)
#' df <- data.frame(label = c("Venezuela", "Saudi", "Canada", "Russia"), value = c(290, 260, 180, 115))
#' df %>%
#'   fusionPlot(x = "label", y = "value", type = "column3d") %>%
#'   fusionAxis(xAxisName = "Countries", yAxisName = "Numbers", AxisNameFontSize = "20") %>%
#'   fusionCustomAxis(xAxisPosition = "top", yAxisPosition = "right") %>%
#'   fusionTheme(theme = "gammel")
#'
#' @export
fusionCustomAxis <- function(fusionPlot, showlabels = TRUE, xAxisPosition = c("bottom", "top", "left", "right"), yAxisPosition = c("left", "right", "top", "bottom"),
                             yAxisMinValue = NULL, yAxisMaxValue = NULL,
                             AxisNameBorderColor = NULL, AxisNameBorderAlpha = "0", AxisNameBorderPadding = "6", AxisNameBorderRadius = "3",
                             AxisNameBorderThickness = "2", AxisNameBorderDashed = FALSE, AxisNameBorderDashLen = "4", AxisNameBorderDashGap = "2",
                             AxisNameBgColor = NULL, AxisNameBgAlpha = "0", AxisNameFontAlpha = "100", AxisValueFont = "Arial", AxisValueFontSize = "1px",
                             AxisValueFontColor = NULL, AxisValueFontBold = FALSE, AxisValueFontItalic = FALSE, AxisValueAlpha = "100", AxisValueBgColor = NULL,
                             AxisValueBgAlpha = "50", AxisValueBorderColor = "#ffffff", AxisValueBorderAlpha = "0", AxisValueBorderPadding = "5",
                             AxisValueBorderRadius = "2", AxisValueBorderThickness = "3", AxisValueBorderDashed = FALSE, AxisValueBorderDashLen = "2",
                             AxisValueBorderDashGap = "2") {
  CustomAxisAttrs <- list()
  CustomAxisAttrs$showlabels <- as.numeric(showlabels)
  CustomAxisAttrs$xAxisPosition <- match.arg(xAxisPosition)

  if (is.null(AxisNameBorderColor)) {
    CustomAxisAttrs$xAxisNameBorderColor <- ""
  } else {
    CustomAxisAttrs$xAxisNameBorderColor <- AxisNameBorderColor
  }

  CustomAxisAttrs$xAxisNameBorderAlpha <- AxisNameBorderAlpha
  CustomAxisAttrs$xAxisNameBorderPadding <- AxisNameBorderPadding
  CustomAxisAttrs$xAxisNameBorderRadius <- AxisNameBorderRadius
  CustomAxisAttrs$xAxisNameBorderThickness <- AxisNameBorderThickness
  CustomAxisAttrs$xAxisNameBorderDashed <- as.numeric(AxisNameBorderDashed)
  CustomAxisAttrs$xAxisNameBorderDashLen <- AxisNameBorderDashLen
  CustomAxisAttrs$xAxisNameBorderDashGap <- AxisNameBorderDashGap

  if (is.null(AxisNameBgColor)) {
    CustomAxisAttrs$xAxisNameBgColor <- ""
  } else {
    CustomAxisAttrs$xAxisNameBgColor <- AxisNameBgColor
  }

  CustomAxisAttrs$xAxisNameBgAlpha <- AxisNameBgAlpha
  CustomAxisAttrs$xAxisNameFontAlpha <- AxisNameFontAlpha
  CustomAxisAttrs$xAxisValueFont <- AxisValueFont
  CustomAxisAttrs$xAxisValueFontSize <- AxisValueFontSize

  if (is.null(AxisValueFontColor)) {
    CustomAxisAttrs$xAxisValueFontColor <- ""
  } else {
    CustomAxisAttrs$xAxisValueFontColor <- AxisValueFontColor
  }

  CustomAxisAttrs$xAxisValueFontBold <- as.numeric(AxisValueFontBold)
  CustomAxisAttrs$xAxisValueFontItalic <- as.numeric(AxisValueFontItalic)
  CustomAxisAttrs$xAxisValueAlpha <- AxisValueAlpha

  if (is.null(AxisValueBgColor)) {
    CustomAxisAttrs$xAxisValueBgColor <- ""
  } else {
    CustomAxisAttrs$xAxisValueBgColor <- AxisValueBgColor
  }


  CustomAxisAttrs$xAxisValueBgAlpha <- AxisValueBgAlpha
  CustomAxisAttrs$xAxisValueBorderColor <- AxisValueBorderColor
  CustomAxisAttrs$xAxisValueBorderAlpha <- AxisValueBorderAlpha
  CustomAxisAttrs$xAxisValueBorderPadding <- AxisValueBorderPadding
  CustomAxisAttrs$xAxisValueBorderRadius <- AxisValueBorderRadius
  CustomAxisAttrs$xAxisValueBorderThickness <- AxisValueBorderThickness
  CustomAxisAttrs$xAxisValueBorderDashed <- AxisValueBorderDashed
  CustomAxisAttrs$xAxisValueBorderDashLen <- AxisValueBorderDashLen
  CustomAxisAttrs$xAxisValueBorderDashGap <- AxisValueBorderDashGap


  CustomAxisAttrs$yAxisPosition <- match.arg(yAxisPosition)
  CustomAxisAttrs$yAxisMinValue <- yAxisMinValue
  CustomAxisAttrs$yAxisMaxValue <- yAxisMaxValue

  if (is.null(AxisNameBorderColor)) {
    CustomAxisAttrs$yAxisNameBorderColor <- ""
  } else {
    CustomAxisAttrs$yAxisNameBorderColor <- AxisNameBorderColor
  }

  CustomAxisAttrs$yAxisNameBorderAlpha <- AxisNameBorderAlpha
  CustomAxisAttrs$yAxisNameBorderPadding <- AxisNameBorderPadding
  CustomAxisAttrs$yAxisNameBorderRadius <- AxisNameBorderRadius
  CustomAxisAttrs$yAxisNameBorderThickness <- AxisNameBorderThickness
  CustomAxisAttrs$yAxisNameBorderDashed <- as.numeric(AxisNameBorderDashed)
  CustomAxisAttrs$yAxisNameBorderDashLen <- AxisNameBorderDashLen
  CustomAxisAttrs$yAxisNameBorderDashGap <- AxisNameBorderDashGap

  if (is.null(AxisNameBgColor)) {
    CustomAxisAttrs$yAxisNameBgColor <- ""
  } else {
    CustomAxisAttrs$yAxisNameBgColor <- AxisNameBgColor
  }

  CustomAxisAttrs$yAxisNameBgAlpha <- AxisNameBgAlpha
  CustomAxisAttrs$yAxisNameFontAlpha <- AxisNameFontAlpha
  CustomAxisAttrs$yAxisValueFont <- AxisValueFont
  CustomAxisAttrs$yAxisValueFontSize <- AxisValueFontSize

  if (is.null(AxisValueFontColor)) {
    CustomAxisAttrs$yAxisValueFontColor <- ""
  } else {
    CustomAxisAttrs$yAxisValueFontColor <- AxisValueFontColor
  }

  CustomAxisAttrs$yAxisValueFontBold <- as.numeric(AxisValueFontBold)
  CustomAxisAttrs$yAxisValueFontItalic <- as.numeric(AxisValueFontItalic)
  CustomAxisAttrs$yAxisValueAlpha <- AxisValueAlpha

  if (is.null(AxisValueBgColor)) {
    CustomAxisAttrs$yAxisValueBgColor <- ""
  } else {
    CustomAxisAttrs$yAxisValueBgColor <- AxisValueBgColor
  }

  CustomAxisAttrs$yAxisValueBgAlpha <- AxisValueBgAlpha
  CustomAxisAttrs$yAxisValueBorderColor <- AxisValueBorderColor
  CustomAxisAttrs$yAxisValueBorderAlpha <- AxisValueBorderAlpha
  CustomAxisAttrs$yAxisValueBorderPadding <- AxisValueBorderPadding
  CustomAxisAttrs$yAxisValueBorderRadius <- AxisValueBorderRadius
  CustomAxisAttrs$yAxisValueBorderThickness <- AxisValueBorderThickness
  CustomAxisAttrs$yAxisValueBorderDashed <- AxisValueBorderDashed
  CustomAxisAttrs$yAxisValueBorderDashLen <- AxisValueBorderDashLen
  CustomAxisAttrs$yAxisValueBorderDashGap <- AxisValueBorderDashGap


  fusionPlot$x$showlabels <- CustomAxisAttrs$showlabels
  fusionPlot$x$xAxisPosition <- CustomAxisAttrs$xAxisPosition
  fusionPlot$x$xAxisNameBorderColor <- CustomAxisAttrs$xAxisNameBorderColor
  fusionPlot$x$xAxisNameBorderAlpha <- CustomAxisAttrs$xAxisNameBorderAlpha
  fusionPlot$x$xAxisNameBorderPadding <- CustomAxisAttrs$xAxisNameBorderPadding
  fusionPlot$x$xAxisNameBorderRadius <- CustomAxisAttrs$xAxisNameBorderRadius
  fusionPlot$x$xAxisNameBorderThickness <- CustomAxisAttrs$xAxisNameBorderThickness
  fusionPlot$x$xAxisNameBorderDashed <- CustomAxisAttrs$xAxisNameBorderDashed
  fusionPlot$x$xAxisNameBorderDashLen <- CustomAxisAttrs$xAxisNameBorderDashLen
  fusionPlot$x$xAxisNameBorderDashGap <- CustomAxisAttrs$xAxisNameBorderDashGap
  fusionPlot$x$xAxisNameBgColor <- CustomAxisAttrs$xAxisNameBgColor
  fusionPlot$x$xAxisNameBgAlpha <- CustomAxisAttrs$xAxisNameBgAlpha
  fusionPlot$x$xAxisNameFontAlpha <- CustomAxisAttrs$xAxisNameFontAlpha
  fusionPlot$x$xAxisValueFont <- CustomAxisAttrs$xAxisValueFont
  fusionPlot$x$xAxisValueFontSize <- CustomAxisAttrs$xAxisValueFontSize
  fusionPlot$x$xAxisValueFontColor <- CustomAxisAttrs$xAxisValueFontColor
  fusionPlot$x$xAxisValueFontBold <- CustomAxisAttrs$xAxisValueFontBold
  fusionPlot$x$xAxisValueFontItalic <- CustomAxisAttrs$xAxisValueFontItalic
  fusionPlot$x$xAxisValueAlpha <- CustomAxisAttrs$xAxisValueAlpha
  fusionPlot$x$xAxisValueBgColor <- CustomAxisAttrs$xAxisValueBgColor
  fusionPlot$x$xAxisValueBgAlpha <- CustomAxisAttrs$xAxisValueBgAlpha
  fusionPlot$x$xAxisValueBorderColor <- CustomAxisAttrs$xAxisValueBorderColor
  fusionPlot$x$xAxisValueBorderAlpha <- CustomAxisAttrs$xAxisValueBorderAlpha
  fusionPlot$x$xAxisValueBorderPadding <- CustomAxisAttrs$xAxisValueBorderPadding
  fusionPlot$x$xAxisValueBorderRadius <- CustomAxisAttrs$xAxisValueBorderRadius
  fusionPlot$x$xAxisValueBorderThickness <- CustomAxisAttrs$xAxisValueBorderThickness
  fusionPlot$x$xAxisValueBorderDashed <- CustomAxisAttrs$xAxisValueBorderDashed
  fusionPlot$x$xAxisValueBorderDashLen <- CustomAxisAttrs$xAxisValueBorderDashLen
  fusionPlot$x$xAxisValueBorderDashGap <- CustomAxisAttrs$xAxisValueBorderDashGap


  fusionPlot$x$yAxisPosition <- CustomAxisAttrs$yAxisPosition
  fusionPlot$x$yAxisMinValue <- CustomAxisAttrs$yAxisMinValue
  fusionPlot$x$yAxisMaxValue <- CustomAxisAttrs$yAxisMaxValue
  fusionPlot$x$yAxisNameBorderColor <- CustomAxisAttrs$yAxisNameBorderColor
  fusionPlot$x$yAxisNameBorderAlpha <- CustomAxisAttrs$yAxisNameBorderAlpha
  fusionPlot$x$yAxisNameBorderPadding <- CustomAxisAttrs$yAxisNameBorderPadding
  fusionPlot$x$yAxisNameBorderRadius <- CustomAxisAttrs$yAxisNameBorderRadius
  fusionPlot$x$yAxisNameBorderThickness <- CustomAxisAttrs$yAxisNameBorderThickness
  fusionPlot$x$yAxisNameBorderDashed <- CustomAxisAttrs$yAxisNameBorderDashed
  fusionPlot$x$yAxisNameBorderDashLen <- CustomAxisAttrs$yAxisNameBorderDashLen
  fusionPlot$x$yAxisNameBorderDashGap <- CustomAxisAttrs$yAxisNameBorderDashGap
  fusionPlot$x$yAxisNameBgColor <- CustomAxisAttrs$yAxisNameBgColor
  fusionPlot$x$yAxisNameBgAlpha <- CustomAxisAttrs$yAxisNameBgAlpha
  fusionPlot$x$yAxisNameFontAlpha <- CustomAxisAttrs$yAxisNameFontAlpha
  fusionPlot$x$yAxisValueFont <- CustomAxisAttrs$yAxisValueFont
  fusionPlot$x$yAxisValueFontSize <- CustomAxisAttrs$yAxisValueFontSize
  fusionPlot$x$yAxisValueFontColor <- CustomAxisAttrs$yAxisValueFontColor
  fusionPlot$x$yAxisValueFontBold <- CustomAxisAttrs$yAxisValueFontBold
  fusionPlot$x$yAxisValueFontItalic <- CustomAxisAttrs$yAxisValueFontItalic
  fusionPlot$x$yAxisValueAlpha <- CustomAxisAttrs$yAxisValueAlpha
  fusionPlot$x$yAxisValueBgColor <- CustomAxisAttrs$yAxisValueBgColor
  fusionPlot$x$yAxisValueBgAlpha <- CustomAxisAttrs$yAxisValueBgAlpha
  fusionPlot$x$yAxisValueBorderColor <- CustomAxisAttrs$yAxisValueBorderColor
  fusionPlot$x$yAxisValueBorderAlpha <- CustomAxisAttrs$yAxisValueBorderAlpha
  fusionPlot$x$yAxisValueBorderPadding <- CustomAxisAttrs$yAxisValueBorderPadding
  fusionPlot$x$yAxisValueBorderRadius <- CustomAxisAttrs$yAxisValueBorderRadius
  fusionPlot$x$yAxisValueBorderThickness <- CustomAxisAttrs$yAxisValueBorderThickness
  fusionPlot$x$yAxisValueBorderDashed <- CustomAxisAttrs$yAxisValueBorderDashed
  fusionPlot$x$yAxisValueBorderDashLen <- CustomAxisAttrs$yAxisValueBorderDashLen
  fusionPlot$x$yAxisValueBorderDashGap <- CustomAxisAttrs$yAxisValueBorderDashGap

  return(fusionPlot)
}

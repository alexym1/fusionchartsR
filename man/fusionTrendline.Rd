% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fusionTrendline.R
\name{fusionTrendline}
\alias{fusionTrendline}
\title{Adding FusionCharts trend-line/trend-zone}
\usage{
fusionTrendline(
  fusionPlot,
  isTrendZone = FALSE,
  displayValue = "",
  startValue = "",
  endValue = "",
  color = "#FFFFFF",
  thickness = 2,
  alpha = "60",
  valueOnRight = TRUE,
  trendValueFont = "Arial",
  trendValueFontSize = "12",
  trendValueFontBold = TRUE,
  trendValueFontItalic = FALSE,
  trendValueAlpha = "80",
  trendValueBgColor = "#000000",
  trendValueBgAlpha = "10",
  trendValueBorderColor = "#000000",
  trendValueBorderAlpha = "80",
  trendValueBorderPadding = "4",
  trendValueBorderRadius = "5",
  trendValueBorderThickness = "2",
  trendValueBorderDashed = FALSE,
  trendValueBorderDashLen = "#5A5A5A",
  trendValueBorderDashGap = "1"
)
}
\arguments{
\item{fusionPlot}{fusionPlot object got by \code{fusionPlot()}}

\item{isTrendZone}{Render a trend zone on a chart}

\item{displayValue}{Add text next to the trend-line}

\item{startValue}{Specify the data value of the starting point of the trend-line}

\item{endValue}{Specify the data value of the ending point of the trend-line}

\item{color}{Specify the hex code for the color of the trend-line}

\item{thickness}{Specify the thickness of the trend-line(in pixels)}

\item{alpha}{Specify the transparency of the trend-line}

\item{valueOnRight}{Enable right position}

\item{trendValueFont}{Set the font family for the trend-line display values}

\item{trendValueFontSize}{Set the font size for the trend-line display values}

\item{trendValueFontBold}{Make trend-line display values appear in bold}

\item{trendValueFontItalic}{Make trend-line display values appear in italic}

\item{trendValueAlpha}{Set the transparency for the trend-line display values}

\item{trendValueBgColor}{Set the color for the background of the trend-line display values}

\item{trendValueBgAlpha}{Set the transparency for the background of trend-line display values}

\item{trendValueBorderColor}{Set the color for the border around the trend-line display values}

\item{trendValueBorderAlpha}{Set the transparency for the border around the trend-line display values (0 to 100)}

\item{trendValueBorderPadding}{Set the padding for the border around the trend-line display values}

\item{trendValueBorderRadius}{Set the radius for the border around the trend-line display values}

\item{trendValueBorderThickness}{Set the thickness of the border around the trend-line display values}

\item{trendValueBorderDashed}{Specify whether the border around the trend-line display value will be drawn as a dashed line}

\item{trendValueBorderDashLen}{Set the length of each dash}

\item{trendValueBorderDashGap}{Set the gap between each dash}
}
\description{
\url{https://www.fusioncharts.com/dev/chart-guide/chart-configurations/trend-lines-and-zones}
}
\examples{
library(fusionchartsR)
df <- data.frame(label = c("Venezuela", "Saudi", "Canada", "Russia"), value = c(290, 260, 180, 115))
df \%>\%
  fusionPlot(x = "label", y = "value", type = "column2d") \%>\%
  fusionTrendline(displayValue = "Help", startValue = "100") \%>\%
  fusionTheme(theme = "candy")

}

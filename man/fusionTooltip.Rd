% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fusionTooltip.R
\name{fusionTooltip}
\alias{fusionTooltip}
\title{Adding FusionCharts tooltip}
\usage{
fusionTooltip(
  fusionPlot,
  showToolTip = TRUE,
  toolTipBorderColor = "#666666",
  toolTipBgColor = "#ffffff",
  toolTipBgAlpha = "100",
  showToolTipShadow = TRUE
)
}
\arguments{
\item{fusionPlot}{fusionPlot object got by \code{fusionPlot()}}

\item{showToolTip}{Display tooltip}

\item{toolTipBorderColor}{Specify the color of the tooltip border}

\item{toolTipBgColor}{Specify the hex code for the tooltip background color}

\item{toolTipBgAlpha}{Set the tooltip background color transparency}

\item{showToolTipShadow}{Enable tooltip shadow}
}
\description{
\url{https://www.fusioncharts.com/dev/chart-guide/chart-configurations/tool-tips}
}
\examples{
library(fusionchartsR)
df <- data.frame(label = c("Venezuela", "Saudi", "Canada", "Russia"), value = c(290, 260, 180, 115))
df \%>\%
  fusionPlot(x = "label", y = "value", type = "doughnut2d") \%>\%
  fusionTooltip(toolTipBgColor = "#3526ad", toolTipBgAlpha = "50", showToolTipShadow = FALSE) \%>\%
  fusionTheme(theme = "fusion")

}

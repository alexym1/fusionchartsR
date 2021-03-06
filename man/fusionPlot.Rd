% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fusionPlot.R
\name{fusionPlot}
\alias{fusionPlot}
\title{Create new charts}
\usage{
fusionPlot(
  data,
  type = "column2d",
  width = "100\%",
  height = "100\%",
  numberSuffix = NULL,
  exportEnabled = FALSE
)
}
\arguments{
\item{data}{Default dataset to use}

\item{type}{Chart type. Available charts can be found at \url{https://www.fusioncharts.com/dev/chart-guide/list-of-charts}}

\item{width, height}{Size of the chart. Must be a valid CSS unit (like \code{'100\%'}, \code{'400px'}, \code{'600'})}

\item{numberSuffix}{Specify the suffix for all the Y-axis values on the chart}

\item{exportEnabled}{Enable chart exporting}
}
\description{
Main function to make interactive charts
}
\examples{
library(fusionchartsR)

 df <- data.frame(label = c("Venezuela", "Saudi", "Canada", "Russia"), value = c(290, 260,180, 115))
fusionPlot(data = df, type = 'pie2d') \%>\%
 fusionCaption() \%>\%
   fusionSubcaption() \%>\%
   fusionBackground() \%>\%
   fusionCanvas() \%>\%
   fusionAxis() \%>\%
   fusionCustomAxis() \%>\%
   fusionLegend() \%>\%
   fusionCustomLegend() \%>\%
   fusionPalette() \%>\%
   fusionAnchors() \%>\%
   fusionTrendline() \%>\%
   fusionDiv() \%>\%
   fusionTooltip() \%>\%
   fusionLogo()
  
}

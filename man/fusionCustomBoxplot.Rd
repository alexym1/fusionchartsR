% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fusionCustomBoxplot.R
\name{fusionCustomBoxplot}
\alias{fusionCustomBoxplot}
\title{Customing "boxandwhisker2d" chart}
\usage{
fusionCustomBoxplot(
  fusionPlot,
  showmean = TRUE,
  drawmeanconnector = FALSE,
  lowerboxcolor = "#29C3BE",
  upperboxcolor = "#5D62B5",
  mediancolor = "#FFFFFF",
  meaniconshape = "polygon",
  meaniconsides = "2",
  meaniconradius = "2",
  showalloutliers = TRUE,
  outliericonsides = "20",
  outliericonalpha = "40",
  outliericonshape = "triangle",
  outliericonsradius = "4"
)
}
\arguments{
\item{fusionPlot}{fusionPlot object got by \code{fusionPlot()}}

\item{showmean}{Show means}

\item{drawmeanconnector}{Connect all means}

\item{lowerboxcolor}{Set the color of the lower box}

\item{upperboxcolor}{Set the color of the upper box}

\item{mediancolor}{Set the color of the median line}

\item{meaniconshape}{Set the shape of the mean icon}

\item{meaniconsides}{Set the sides of the mean icon}

\item{meaniconradius}{Set the radius of the mean icon}

\item{showalloutliers}{Show outliers}

\item{outliericonsides}{Set the sides of the outliers}

\item{outliericonalpha}{Set the background color transparency of the outliers}

\item{outliericonshape}{Set the shape of the outliers}

\item{outliericonsradius}{Set the radius of the outliers}
}
\description{
Customing "boxandwhisker2d" chart
}
\examples{
library(fusionchartsR)
mtcars \%>\%
  fusionPlot(x = "cyl", y = "mpg", type = "boxandwhisker2d") \%>\%
  fusionCustomBoxplot(drawmeanconnector = TRUE)

}

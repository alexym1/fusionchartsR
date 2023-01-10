#' Customing "boxandwhisker2d" chart
#'
#' @import htmlwidgets
#' 
#' @param fusionPlot fusionPlot object got by \code{fusionPlot()}
#' @param showmean Show means
#' @param drawmeanconnector Connect all means
#' @param mediancolor Set the color of the median line
#' @param meaniconshape Set the shape of the mean icon
#' @param meaniconsides Set the sides of the mean icon 
#' @param meaniconradius Set the radius of the mean icon
#' @param showalloutliers Show outliers
#' @param outliericonsides Set the sides of the outliers
#' @param outliericonalpha Set the background color transparency of the outliers
#' @param outliericonshape Set the shape of the outliers
#' @param outliericonsradius Set the radius of the outliers
#' 
#' 
#' @examples
#' library(fusionchartsR)
#' mtcars %>%
#' fusionPlot(x = "cyl", y = "mpg", type = "boxandwhisker2d") %>%
#' fusionCustomBoxplot(drawmeanconnector = TRUE)
#'
#' @export
fusionCustomBoxplot <- function(
    fusionPlot, showmean = TRUE, drawmeanconnector = FALSE, mediancolor = "#FFFFFF", 
    meaniconshape = "polygon", meaniconsides = "2", meaniconradius = "2", 
    showalloutliers = TRUE, outliericonsides = "20", outliericonalpha = "40",
    outliericonshape = "triangle", outliericonsradius = "4"){
  
  CustomBoxplotAttrs <- list()
  CustomBoxplotAttrs$showmean <- as.integer(showmean)
  CustomBoxplotAttrs$drawmeanconnector <- as.integer(drawmeanconnector)
  CustomBoxplotAttrs$mediancolor <- mediancolor
  CustomBoxplotAttrs$meaniconshape <- meaniconshape
  CustomBoxplotAttrs$meaniconsides <- meaniconsides
  CustomBoxplotAttrs$meaniconradius <- meaniconradius
  CustomBoxplotAttrs$showalloutliers <- as.integer(showalloutliers)
  CustomBoxplotAttrs$outliericonsides <- outliericonsides
  CustomBoxplotAttrs$outliericonalpha <- outliericonalpha
  CustomBoxplotAttrs$outliericonshape <- outliericonshape
  CustomBoxplotAttrs$outliericonsradius <- outliericonsradius

  
  fusionPlot$x$showmean <- CustomBoxplotAttrs$showmean
  fusionPlot$x$drawmeanconnector <- CustomBoxplotAttrs$drawmeanconnector
  fusionPlot$x$mediancolor <- CustomBoxplotAttrs$mediancolor
  fusionPlot$x$meaniconshape <- CustomBoxplotAttrs$meaniconshape
  fusionPlot$x$meaniconsides <- CustomBoxplotAttrs$meaniconsides
  fusionPlot$x$meaniconradius <- CustomBoxplotAttrs$meaniconradius
  fusionPlot$x$showalloutliers <- CustomBoxplotAttrs$showlabels
  fusionPlot$x$outliericonsides <- CustomBoxplotAttrs$outliericonsides
  fusionPlot$x$outliericonalpha <- CustomBoxplotAttrs$outliericonalpha
  fusionPlot$x$outliericonshape <- CustomBoxplotAttrs$outliericonshape
  fusionPlot$x$outliericonsradius <- CustomBoxplotAttrs$outliericonsradius
  
  return(fusionPlot)
  
}


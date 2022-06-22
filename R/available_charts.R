<<<<<<< HEAD
#' List of available charts in fusionchartsR
#'   
#' @examples
#' library(fusionchartsR)
#' available_charts()
#'
#' @export
available_charts <- function () {
  list1 <- c("column2d","column3d","line","area2d","bar2d","bar3d","pie2d","pie3d","doughnut2d", "doughnut3d","pareto2d","funnel", "boxandwhisker2d", "confusionMatrix", "scatter")
  list2 <- c("https///www.fusioncharts.com/charts#fusioncharts")
  df.list <- list(list1, list2)
  names(df.list) <- c("fusionPlot", "fusionMultiPlot")
  return(df.list)
}

=======
#' List of available charts in fusionchartsR
#'   
#' @examples
#' library(fusionchartsR)
#' available_charts()
#'
#' @export
available_charts <- function () {
  list1 <- c("column2d","column3d","line","area2d","bar2d","bar3d","pie2d","pie3d","doughnut2d", "doughnut3d","pareto2d","funnel", "boxandwhisker2d", "confusionMatrix", "scatter")
  list2 <- c("https///www.fusioncharts.com/charts#fusioncharts")
  df.list <- list(list1, list2)
  names(df.list) <- c("fusionPlot", "fusionMultiPlot")
  return(df.list)
}

>>>>>>> 618aca640f1c39346260d0f558a311a2e8507f87

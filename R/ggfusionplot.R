#' Convert ggplot2 to fusionchartsR
#'
#' This function converts a [ggplot2::ggplot()] object to a fusioncharstR object.
#'
#' @param object a ggplot object
#'
#' @examples
#' library(fusionchartsR)
#' library(ggplot2)
#'
#' object <- ggplot(data = mtcars, aes(x = wt, y = mpg)) +
#'   geom_point()
#'
#' ggfusionplot(object)
#' @export
ggfusionplot <- function(object) {
  data <- object$data

  type <- switch(as.character(object$layers[[1]]$constructor[[1]]),
    "geom_point" = "scatter",
    "geom_line" = "line",
    "geom_boxplot" = "boxandwhisker2d"
  )

  x <- as.character(object[["mapping"]][["x"]][[2]])
  y <- as.character(object[["mapping"]][["y"]][[2]])

  if ("title" %in% names(object$labels)) {
    caption <- object$labels$title
  } else {
    caption <- NULL
  }

  if ("subtitle" %in% names(object$labels)) {
    subcaption <- object$labels$subtitle
  } else {
    subcaption <- NULL
  }

  xAxisName <- object$labels$x
  yAxisName <- object$labels$y

  colors <- c("red", "blue", "green", "yellow", "pink", "black", "white", "orange")

  if ("colour" %in% names(object$labels)) {
    if (object$mapping$colour %in% colors) {
      colour <- col2hex(object$mapping$colour)
    } else {
      colour <- object$mapping$colour
    }
  } else {
    colour <- "#000"
  }

  if ("fill" %in% names(object$labels)) {
    if (object$mapping$fill %in% colors) {
      fill <- col2hex(object$mapping$fill)
    } else {
      fill <- object$mapping$fill
    }
  } else {
    fill <- c("#29C3BE", "#5D62B5")
  }

  if ("size" %in% names(object$labels)) {
    size <- object$labels$size
  } else {
    size <- 0.2
  }

  if ("background" %in% names(object$labels)) {
    if (object$labels$background$fill %in% colors) {
      background <- col2hex(object$labels$background$fill)
    } else {
      background <- object$labels$background$fill
    }
  } else {
    background <- "#ebebeb"
  }
  
  if ("legend.position" %in% names(object$theme)) {
    legend_position <- object$theme$legend.position
    if(legend_position == "none") {
      showLegend <- FALSE
      legendPosition <- "right"
    } else {
      showLegend = TRUE
      legendPosition <- legend_position
    }
  } else {
    showLegend = TRUE
    legendPosition <- "right"
  }

  res_plot <- fusionPlot(data = data, type = type, x = x[length(x)], y = y) %>%
    fusionCaption(caption = caption) %>%
    fusionSubcaption(subcaption = subcaption) %>%
    fusionAxis(xAxisName = xAxisName, yAxisName = yAxisName) %>%
    fusionCustomAxis(yAxisMinValue = round(min(data[,y])), yAxisMaxValue = round(max(data[,y])) + 1) %>%
    fusionAnchors(
      anchorBgColor = colour,
      anchorBorderColor = colour,
      anchorBorderThickness = as.character(size)
    ) %>%
    fusionPalette(plotBorderColor = colour) %>%
    fusionDiv(vDivLineColor = "#F2F2F2", divLineColor = "#5a5a5a") %>%
    fusionBackground(bgColorStart = background) %>%
    fusionCustomBoxplot(lowerboxcolor = fill[1], upperboxcolor = fill[length(fill)]) %>%
    fusionLegend(legendPosition = legendPosition, showLegend = showLegend)

  return(res_plot)
}

col2hex <- function(col) {
  rgb <- grDevices::col2rgb(col)
  return(paste0("#", sprintf("%02x%02x%02x", rgb[1], rgb[2], rgb[3])))
}

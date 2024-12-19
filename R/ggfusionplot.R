#' Convert a ggplot2 object to a fusionchartsR object.
#'
#' `r lifecycle::badge('experimental')`
#'
#' @param object a ggplot object
#'
#' @import ggplot2
#' @importFrom scales hue_pal
#'
#' @examples
#' library(ggplot2)
#' library(fusionchartsR)
#'
#' df <- data.frame(
#'   label = rep(x = c(2012:2016), times = 2),
#'   seriesname = c(rep("iOS App Store", 5), rep("Google Play Store", 5)),
#'   values = c(1:10)
#' )
#'
#' object <- ggplot(df, aes(label, values, fill = seriesname)) +
#'   geom_col()
#'
#' ggfusionPlot(object)
#' @export
ggfusionPlot <- function(object) {
  data <- object$data
  x <- as.character(object$mapping$x[2])
  y <- as.character(object$mapping$y[2])

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

  colour <- tryCatch(
    {
      if ("colour" %in% names(object$labels)) {
        if (object$mapping$colour %in% colors) {
          col2hex(object$mapping$colour)
        } else {
          object$mapping$colour
        }
      } else {
        "#000"
      }
    },
    error = function(e) {
      var_col <- data[, as.character(object$mapping$colour[[2]])]
      hue_pal()(length(unique(var_col)))
    }
  )

  fill <- tryCatch(
    {
      if ("fill" %in% names(object$labels)) {
        if (object$mapping$fill %in% colors) {
          col2hex(object$mapping$fill)
        } else {
          object$mapping$fill
        }
      } else {
        "#000"
      }
    },
    error = function(e) {
      var_fill <- data[, as.character(object$mapping$fill[[2]])]
      hue_pal()(length(unique(var_fill)))
    }
  )

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
    if (legend_position == "none") {
      showLegend <- FALSE
      legendPosition <- "right"
    } else {
      showLegend <- TRUE
      legendPosition <- legend_position
    }
  } else {
    showLegend <- TRUE
    legendPosition <- "right"
  }

  if (any(c("fill", "col", "colour") %in% names(object$mapping))) {
    type <- switch(as.character(object$layers[[1]]$constructor[[1]]),
      "geom_point" = "scatter",
      "geom_line" = "msline",
      "geom_boxplot" = "boxandwhisker2d",
      "geom_col" = "stackedcolumn2d",
      "geom_bar" = "stackedcolumn2d"
    )

    if (type == "stackedcolumn2d" & "position" %in% names(object$layers[[1]]$constructor)) {
      type <- "mscolumn2d"
    }

    for (i in c("fill", "col", "colour")) {
      if (i %in% names(object$mapping)[3:length(object$mapping)]) {
        legendCaption <- as.character(object$mapping[[i]][2])
      }
    }

    if (x == legendCaption) {
      type <- switch(as.character(object$layers[[1]]$constructor[[1]]),
        "geom_point" = "scatter",
        "geom_line" = "line",
        "geom_boxplot" = "boxandwhisker2d",
        "geom_col" = "column2d",
        "geom_bar" = "column2d"
      )
      fusionplot <- fusionPlot(data = data, x = x[length(x)], y = y, type = type)
    } else {
      fusionplot <- fusionMultiPlot(data = data, x = x[length(x)], y = y, col = legendCaption, type = type)
    }
  } else {
    type <- switch(as.character(object$layers[[1]]$constructor[[1]]),
      "geom_point" = "scatter",
      "geom_line" = "line",
      "geom_boxplot" = "boxandwhisker2d",
      "geom_col" = "column2d",
      "geom_bar" = "column2d"
    )

    legendCaption <- ""
    fusionplot <- fusionPlot(data = data, x = x[length(x)], y = y, type = type)
  }

  fusion_plot <- fusionplot %>%
    fusionCaption(caption = caption) %>%
    fusionSubcaption(subcaption = subcaption) %>%
    fusionAxis(xAxisName = xAxisName, yAxisName = yAxisName) %>%
    fusionCustomAxis(
      yAxisMinValue = round(min(data[, y])),
      yAxisMaxValue = round(max(data[, y])) + 1
    ) %>%
    fusionAnchors(
      anchorBgColor = colour,
      anchorBorderColor = colour,
      anchorBorderThickness = as.character(size)
    ) %>%
    fusionPalette(plotBorderColor = colour, palettecolors = fill) %>%
    fusionDiv(vDivLineColor = "#F2F2F2", divLineColor = "#5a5a5a") %>%
    fusionBackground(bgColorStart = background) %>%
    fusionCustomBoxplot(lowerboxcolor = fill[1], upperboxcolor = fill[length(fill)]) %>%
    fusionLegend(
      legendCaption = legendCaption,
      legendPosition = legendPosition,
      showLegend = showLegend
    ) %>%
    fusionCustomLegend(legendIconSides = "4")

  return(fusion_plot)
}

col2hex <- function(col) {
  rgb <- grDevices::col2rgb(col)
  return(paste0("#", sprintf("%02x%02x%02x", rgb[1], rgb[2], rgb[3])))
}

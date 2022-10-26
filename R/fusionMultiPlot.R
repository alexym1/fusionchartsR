#' Create new multiple charts
#'
#' Main function to make interactive charts.
#' Check all charts at \url{https://www.fusioncharts.com/charts}
#'
#'
#' @import htmlwidgets
#' @importFrom jsonlite toJSON
#'
#' @param data Default dataset to use
#' @param x,y character name of variable
#' @param col define seriesname variable
#' @param type See `available_charts()`
#' @param numberSuffix Specify the suffix for all the Y-axis values on the chart
#'
#'
#' @export
fusionMultiPlot <- function(data,x, y, col = NULL, type = "msstepline", numberSuffix = NULL) {
  
  # Include key license
  license <- Sys.getenv("LICENSE_FUSIONCHARTS")
  
  # Category
  xaxis <- factor(data[,x])
  df <- list(category = data.frame(label = as.character(levels(xaxis))))
  category <- toJSON(x = df, pretty = TRUE)
  n <- levels(factor(data[,col]))
  
  if(type == "scatter"){
    
    colors <- c("#5E72E3", "#FF595E", "#FFCA3A", "#8AC926", "#FB5607", "#00bbf9", "#5E72E3")
    
    # Dataset
    df.list <- lapply(1:length(n), function(z){
      list(
        seriesname = n[z], 
        anchorbgcolor = colors[z],
        anchorBorderColor = colors[z],
        data = data.frame( 
          x = as.character(data[data[,col] == n[z], x]),
          y = as.character(data[data[,col] == n[z], y])
        )
      )
    })
    
  } else {
    
    # Dataset
    df.list <- lapply(1:length(n), function(z){
      list(
        seriesname = n[z], 
        data = data.frame( 
          value = as.character(as.numeric(factor(data[data[,col] == n[z],y])))
        )
      )
    })
    
  }
  
  dataset <- toJSON(x = df.list, pretty = TRUE, auto_unbox = TRUE)
  

#' @examples
#' library(fusionchartsR)
#'
#' # Multiple charts
#' new.data <- data.frame(
#' label = rep(x = c(2012:2016), times = 2),
#' seriesname = c(rep("iOS App Store", 5), rep("Google Play Store", 5)),
#' values = c(1:10)
#' )
#'
#' new.data %>%
#' fusionMultiPlot(
#' x = "label",
#' y = "values",
#' col = "seriesname",
#' type = "mscolumn2d",
#' ) %>%
#' fusionTheme(theme = "fusion")
#'
  
  # forward options using x
  x <- list(
    key_license = license,
    data = data,
    categories = category,
    dataset = dataset,
    type = type,
    numberSuffix = numberSuffix
  )

  # create widget
  widgets <- htmlwidgets::createWidget(
    name = 'fusionMultiPlot',
    x = x,
    package = 'fusionchartsR'
  )
  
  widgets %>%
    fusionCaption() %>%
    fusionSubcaption() %>%
    fusionBackground() %>%
    fusionCanvas() %>%
    fusionAxis() %>%
    fusionCustomAxis() %>%
    fusionLegend() %>%
    fusionCustomLegend() %>%
    fusionPalette() %>%
    fusionAnchors() %>%
    # fusionTrendline() %>%
    fusionDiv() %>%
    fusionTooltip() %>%
    fusionLogo() %>%
    fusionTheme()
}

#' Shiny bindings for fusionMultiPlot
#'
#' Output and render functions for using fusionMultiPlot within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a fusionMultiPlot
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name fusionMultiPlot-shiny
#'
#' @export
fusionMultiPlotOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'fusionMultiPlot', width, height, package = 'fusionchartsR')
}

#' @rdname fusionMultiPlot-shiny
#' @export
renderFusionMultiPlot <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, fusionMultiPlotOutput, env, quoted = TRUE)
}

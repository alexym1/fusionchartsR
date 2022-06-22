#' Create new charts
#'
#' Main function to make interactive charts.
#' Check all charts at \url{https://www.fusioncharts.com/charts}
#'
#'
#' @import htmlwidgets
#' @importFrom jsonlite toJSON
#' @importFrom grDevices boxplot.stats
<<<<<<< HEAD
#'
=======
#' @import config
>>>>>>> 618aca640f1c39346260d0f558a311a2e8507f87
#'
#' @param data Default dataset to use
#' @param x,y character name of variable
#' @param type See `available_charts()`
#' @param numberSuffix Specify the suffix for all the Y-axis values on the chart
#'
#'
#' @export
fusionPlot <- function(data,x, y, type = "column2d", numberSuffix = NULL) {
  
<<<<<<< HEAD
=======
  # Include key license
  key_path <- system.file("config.yml", package = "fusionchartsR")
  if (key_path == "") {
    license <- FALSE
  } else {
    license <- config::get("key", file = key_path)
  }
  
>>>>>>> 618aca640f1c39346260d0f558a311a2e8507f87
  # Main arguments
  category <- NULL
  dataset <- NULL
  
  # boxandwhisker2d arguments
  showmean <- "0"
  showalloutliers <- NULL
  
  # ConfusionMatrix arguments
  mapbycategory <- "0"
  colorrange <- NULL
  columns <- NULL
  rows <- NULL
  

  charts <- available_charts()

  if(type %in% charts[[1]][-c(13:15)]){

    new.data <- data.frame(label = factor(data[,x]), value = data[,y])
    data <- toJSON(x = new.data, pretty = TRUE)

  }
  
  else if(type == "boxandwhisker2d"){
    
    showmean <- "1"
    
    xaxis <- factor(data[,x])
    df <- list(category = data.frame(label = as.character(levels(xaxis))))
    category <- toJSON(x = df, pretty = TRUE)
    
    n <- unique(levels(xaxis))
    df.list <- lapply(1:length(n), function(i){
      yaxis <- na.omit(data[data[,x] == n[i],y])
      stats <- boxplot.stats(yaxis)
      if(length(stats$out) >= 1){
        list(
          value = toString(yaxis[! yaxis %in% unique(stats$out)]),
          outliers = toString(unique(stats$out))
        )
      }
      else {
        list(
          value = toString(yaxis)
        )
      }
    })
    
    if(length(grep(pattern = "outliers", x = df.list)) > 0){
      showalloutliers <- 1
    }
    else {
      showalloutliers <- 0
    }
    
    newlist <- list(seriesname = y, data = df.list)
    dataset <- toJSON(x = newlist, pretty = TRUE, auto_unbox = TRUE)
    
  }
  
  else if(type == "confusionMatrix") {
    
    type <- "heatmap"
    mapbycategory <- "1"
    
    color <- list(
      gradient = c("0", "0"),
      color = data.frame(
        code = c("#5E72E4", "#FFFFFF"),
        minvalue = c("0", "0"),
        maxvalue = c("Infinity", "Infinity"),
        label = c("Good", "Bad")
      )
    )
    
    colorrange <- toJSON(x = color, pretty = TRUE, auto_unbox = TRUE)
    
    column01 <- list(
      column = data.frame(
        id = paste0("GROUP", colnames(data)),
        label = colnames(data)
      )
    )
    
    columns <- toJSON(x = column01, pretty = TRUE)
    
    row01 <- list(
      row = data.frame(
        id = paste0("group", rownames(data)),
        label = rownames(data)
      )
    )
    
    rows <- toJSON(x = row01, pretty = TRUE)
    
    columnid <- lapply(1:length(column01$column$id), function(x){
      rep(column01$column$id[x], times = ncol(data))
    })
    
    data01 <- list(
      data = data.frame(
        rowid = rep(row01$row$id, times = nrow(data)),
        columnid = do.call(c, columnid),
        displayvalue = as.character(as.vector(data)),
        colorrangelabel = c("Good", "Bad", "Bad", "Good")
      )
    )
    
    dataset <- toJSON(x = data01, pretty = TRUE, auto_unbox = TRUE)
    
  }
  else if(type == "scatter"){
    
    df <- data.frame(x = data[,x], y = data[,y])
    dataset <- list(data = df)
    dataset <- toJSON(x = dataset, pretty = TRUE, auto_unbox = TRUE)
    
  }
  else{
    stop('Chart not available. Please check `fusionMultiPlot()`')
  }


#' @examples
#' library(fusionchartsR)
#'
#' # Single
#' df <- data.frame(label = c("Venezuela", "Saudi", "Canada", "Russia"), value = c(290, 260,180, 115))
#' df %>%
#' fusionPlot(x = "label", y = "value", type = "pie2d") %>%
#' fusionTheme(theme = "fusion")
#' 

  # forward options using x
  x <- list(
<<<<<<< HEAD
=======
    key_license = license,
>>>>>>> 618aca640f1c39346260d0f558a311a2e8507f87
    data = data,
    categories = category,
    dataset = dataset,
    type = type,
    numberSuffix = numberSuffix,
    showmean = showmean,
    showalloutliers = showalloutliers,
    columns = columns,
    rows = rows,
    colorrange = colorrange,
    mapbycategory = mapbycategory
    )

  # create widget
  widgets <- htmlwidgets::createWidget(
    name = 'fusionPlot',
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


#' Shiny bindings for fusionPlot
#'
#' Output and render functions for using fusionPlot within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a fusionPlot
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name fusionPlotOutput
#' @aliases renderfusionPlot
#'
#' @export
fusionPlotOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'fusionPlot', width, height, package = 'fusionchartsR')
}

#' @rdname fusionPlotOutput
#' @export
renderfusionPlot <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, fusionPlotOutput, env, quoted = TRUE)
}
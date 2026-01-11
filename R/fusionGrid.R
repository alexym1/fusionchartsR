#' Create interactive data tables with FusionGrid
#'
#' Create interactive, feature-rich data tables using FusionGrid.
#' FusionGrid provides sorting, filtering, pagination, and many other features
#' for displaying tabular data.
#'
#' @import htmlwidgets
#' @importFrom jsonlite toJSON
#'
#' @param data A data frame to display in the grid
#' @param schema Optional list defining column schema. Each element should be a list
#'   with 'name' and optionally 'type' (e.g., 'number', 'string', 'date')
#' @param config Optional list of configuration options for the grid (layout, rowOptions, etc.)
#' @param dataTableOptions Optional list of options for DataTable creation (default: list(enableIndex = FALSE))
#' @param width Width of the grid (default: NULL for auto-sizing)
#' @param height Height of the grid (default: "500px")
#' @param elementId Optional element ID for the widget
#'
#' @return An htmlwidget object
#'
#' @examples
#' \dontrun{
#' # Basic usage
#' fusionGrid(mtcars)
#'
#' # With schema definition
#' schema <- list(
#'   list(name = "mpg", type = "number"),
#'   list(name = "cyl", type = "number"),
#'   list(name = "disp", type = "number"),
#'   list(name = "hp", type = "number")
#' )
#' fusionGrid(mtcars[, 1:4], schema = schema)
#'
#' # With configuration
#' # Some example may be found at:
#' # https://www.fusioncharts.com/dev/fusiongrid/tutorials-fusiongrid/column-filter
#' config <- list(
#'   layout = list(density = "compact", autoHeight = TRUE),
#'   rowOptions = list(
#'     style = list("background-color" = "oldlace"),
#'     hover = list(
#'       enable = TRUE,
#'       style = list("background-color" = "white")
#'     )
#'   )
#' )
#' fusionGrid(iris, config = config)
#' }
#'
#' @export
fusionGrid <- function(data,
                       schema = NULL,
                       config = NULL,
                       dataTableOptions = list(enableIndex = FALSE),
                       width = NULL,
                       height = "500px",
                       elementId = NULL) {

  # Validate inputs
  stopifnot(is.data.frame(data))

  # Convert data to matrix format (rows as arrays)
  data_matrix <- lapply(1:nrow(data), function(i) {
    as.list(data[i, ])
  })

  # Auto-generate schema if not provided
  if (is.null(schema)) {
    schema <- lapply(names(data), function(col_name) {
      col_data <- data[[col_name]]
      col_type <- if (is.numeric(col_data)) "number" else "string"
      list(name = col_name, type = col_type)
    })
  }

  # Prepare configuration
  x <- list(
    data = data_matrix,
    schema = schema,
    config = config,
    dataTableOptions = dataTableOptions
  )

  # Create widget
  htmlwidgets::createWidget(
    name = 'fusionGrid',
    x = x,
    width = width,
    height = height,
    package = 'fusionchartsR',
    elementId = elementId,
    sizingPolicy = htmlwidgets::sizingPolicy(
      defaultWidth = "100%",
      defaultHeight = height,
      viewer.defaultWidth = "100%",
      viewer.defaultHeight = height,
      knitr.defaultWidth = "100%",
      knitr.defaultHeight = height,
      browser.fill = TRUE,
      viewer.fill = TRUE,
      knitr.figure = FALSE
    )
  )
}

#' Shiny bindings for fusionGrid
#'
#' Output and render functions for using fusionGrid within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId Output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a fusionGrid
#' @param env The environment in which to evaluate \code{expr}
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name fusionGrid-shiny
#'
#' @export
fusionGridOutput <- function(outputId, width = '100%', height = '500px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'fusionGrid', width, height, package = 'fusionchartsR')
}

#' @rdname fusionGrid-shiny
#' @export
renderFusionGrid <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, fusionGridOutput, env, quoted = TRUE)
}

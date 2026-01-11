# Create interactive data tables with FusionGrid

Create interactive, feature-rich data tables using FusionGrid.
FusionGrid provides sorting, filtering, pagination, and many other
features for displaying tabular data.

## Usage

``` r
fusionGrid(
  data,
  schema = NULL,
  config = NULL,
  dataTableOptions = list(enableIndex = FALSE),
  width = NULL,
  height = "500px",
  elementId = NULL
)
```

## Arguments

- data:

  A data frame to display in the grid

- schema:

  Optional list defining column schema. Each element should be a list
  with 'name' and optionally 'type' (e.g., 'number', 'string', 'date')

- config:

  Optional list of configuration options for the grid (layout,
  rowOptions, etc.)

- dataTableOptions:

  Optional list of options for DataTable creation (default:
  list(enableIndex = FALSE))

- width:

  Width of the grid (default: NULL for auto-sizing)

- height:

  Height of the grid (default: "500px")

- elementId:

  Optional element ID for the widget

## Value

An htmlwidget object

## Examples

``` r
if (FALSE) { # \dontrun{
# Basic usage
fusionGrid(mtcars)

# With schema definition
schema <- list(
  list(name = "mpg", type = "number"),
  list(name = "cyl", type = "number"),
  list(name = "disp", type = "number"),
  list(name = "hp", type = "number")
)
fusionGrid(mtcars[, 1:4], schema = schema)

# With configuration
# Some example may be found at:
# https://www.fusioncharts.com/dev/fusiongrid/tutorials-fusiongrid/column-filter
config <- list(
  layout = list(density = "compact", autoHeight = TRUE),
  rowOptions = list(
    style = list("background-color" = "oldlace"),
    hover = list(
      enable = TRUE,
      style = list("background-color" = "white")
    )
  )
)
fusionGrid(iris, config = config)
} # }
```

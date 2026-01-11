#' Fusioncharts Demo
#'
#' Running Shiny App
#'
#' @import htmlwidgets
#' @import shiny
#'
#'
#' @examples
#' if (interactive()) {
#'   library(shiny)
#'   library(fusionchartsR)
#'   runDemo()
#' }
#'
#' @export
runDemo <- function() {
  ui <- fluidPage(
    tags$br(),
    tabsetPanel(
      tabPanel(
        "fusionPlot",
        tags$br(),
        sidebarLayout(
          sidebarPanel(
            selectInput(
              inputId = "input01",
              label = "Select a type chart",
              choices = c(
                "column2d", "column3d", "line", "area2d", "bar2d", "bar3d",
                "pie2d", "pie3d", "doughnut2d", "doughnut3d"
              )
            ),
            textInput(
              inputId = "input02",
              label = "Change the caption title",
              value = "Caption"
            ),
            textInput(
              inputId = "input03",
              label = "Change the subcaption title",
              value = "Subcaption"
            ),
            textInput(
              inputId = "input04",
              label = "Change the X-axis title",
              value = "X-axis"
            ),
            textInput(
              inputId = "input05",
              label = "Change the Y-axis title",
              value = "Y-axis"
            ),
            selectInput(
              inputId = "input06",
              label = "Choose a theme",
              choices = c("fusion", "gammel", "candy", "zune", "ocean", "carbon", "umber", "fint", "access")
            ),
            tags$br(),
            actionButton(
              inputId = "updateBtn",
              label = "Update Chart",
              class = "btn-primary"
            )
          ),
          mainPanel(
            fusionPlotOutput(outputId = "plot")
          )
        )
      ),
      tabPanel(
        "fusionGrid",
        tags$br(),
        sidebarLayout(
          sidebarPanel(
            selectInput(
              inputId = "gridDataset",
              label = "Select dataset",
              choices = c("mtcars", "iris", "airquality")
            ),
            selectInput(
              inputId = "gridDensity",
              label = "Grid density",
              choices = c("default", "compact", "comfortable"),
              selected = "default"
            ),
            checkboxInput(
              inputId = "gridHover",
              label = "Enable row hover",
              value = TRUE
            ),
            tags$br(),
            actionButton(
              inputId = "updateGrid",
              label = "Update Grid",
              class = "btn-primary"
            )
          ),
          mainPanel(
            fusionGridOutput(outputId = "grid")
          )
        )
      )
    )
  )

  server <- function(input, output) {
    plotData <- eventReactive(input$updateBtn, {
      df <- data.frame(label = c("Venezuela", "Saudi", "Canada", "Russia"), value = c(290, 260, 180, 115))
      df %>%
        fusionPlot(x = "label", y = "value", type = input$input01) %>%
        fusionCaption(caption = input$input02) %>%
        fusionSubcaption(subcaption = input$input03) %>%
        fusionAxis(xAxisName = input$input04, yAxisName = input$input05) %>%
        fusionTheme(theme = input$input06)
    }, ignoreNULL = FALSE)
    
    output$plot <- renderfusionPlot({
      plotData()
    })
    
    gridData <- eventReactive(input$updateGrid, {
      # Get selected dataset
      df <- switch(input$gridDataset,
        "mtcars" = mtcars,
        "iris" = iris,
        "airquality" = airquality
      )
      
      # Configure grid options
      config <- list(
        layout = list(
          density = if (input$gridDensity == "default") NULL else input$gridDensity,
          autoHeight = FALSE
        )
      )
      
      # Add hover styling if enabled
      if (input$gridHover) {
        config$rowOptions <- list(
          style = list("background-color" = "white"),
          hover = list(
            enable = TRUE,
            style = list("background-color" = "#f0f8ff")
          )
        )
      }
      
      fusionGrid(df, config = config, height = "500px")
    }, ignoreNULL = FALSE)
    
    output$grid <- renderFusionGrid({
      gridData()
    })
  }

  shinyApp(ui = ui, server = server)
}

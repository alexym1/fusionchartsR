library(ggplot2)
object <- ggplot(data = mtcars, aes(x = wt, y = mpg)) +
  geom_point()

ggfusionplot <- function(object){
  data <- object$data
  
  type <- switch(
    as.character(object$layers[[1]]$constructor[[1]]),
    "geom_point" = "scatter"
  )

  x <- as.character(object[["mapping"]][["x"]][[2]])
  y <- as.character(object[["mapping"]][["y"]][[2]])
  
  if("title" %in% names(object$labels)){
    caption <- object$labels$title
  } else {
    caption <- NULL
  }
  
  if("subtitle" %in% names(object$labels)){
    subcaption <- object$labels$subtitle
  } else {
    subcaption <- NULL
  }
  
  xAxisName <- object$labels$x
  yAxisName <- object$labels$y
  
  colors <- c("red", "blue", "green", "yellow", "pink", "black", "white", "orange")
  
  if("colour" %in% names(object$labels)){
    colour <- "#000"
    #if(object$labels$background$fill %in% colors){
    #  background <- col2hex(object$labels$background$fill)
    #} else {
    #  background <- object$labels$background$fill
    #}
  } else {
    colour <- "#000"
  }
  
  size <- ifelse("colour" %in% object$labels, 0.2,  object$layers[[1]]$geom$default_aes$size)
  
  if("background" %in% names(object$labels)){
    if(object$labels$background$fill %in% colors){
      background <- col2hex(object$labels$background$fill)
    } else {
      background <- object$labels$background$fill
    }
  } else {
    background <- "#ebebeb"
  }

  res_plot <- fusionPlot(data = data, type = type, x = x, y = y) %>%
    fusionCaption(caption = caption) %>%
    fusionSubcaption(subcaption = subcaption) %>%
    fusionAxis(xAxisName = xAxisName, yAxisName = yAxisName) %>%
    fusionAnchors(
      anchorBgColor = colour, 
      anchorBorderColor = colour, 
      anchorBorderThickness = as.character(size)
    ) %>%
    fusionDiv(vDivLineColor = "#fff", divLineColor = "#fff") %>%
    fusionBackground(bgColorStart = background)
  
  return(res_plot)
}

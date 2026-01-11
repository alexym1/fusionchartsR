# Adding FusionCharts trend-line/trend-zone

<https://www.fusioncharts.com/dev/chart-guide/chart-configurations/trend-lines-and-zones>

## Usage

``` r
fusionTrendline(
  fusionPlot,
  isTrendZone = FALSE,
  displayValue = "",
  startValue = "",
  endValue = "",
  color = "#FFFFFF",
  thickness = 2,
  alpha = "60",
  valueOnRight = TRUE,
  trendValueFont = "Arial",
  trendValueFontSize = "12",
  trendValueFontBold = TRUE,
  trendValueFontItalic = FALSE,
  trendValueAlpha = "80",
  trendValueBgColor = "#000000",
  trendValueBgAlpha = "10",
  trendValueBorderColor = "#000000",
  trendValueBorderAlpha = "80",
  trendValueBorderPadding = "4",
  trendValueBorderRadius = "5",
  trendValueBorderThickness = "2",
  trendValueBorderDashed = FALSE,
  trendValueBorderDashLen = "#5A5A5A",
  trendValueBorderDashGap = "1"
)
```

## Arguments

- fusionPlot:

  fusionPlot object got by
  [`fusionPlot()`](https://alexym1.github.io/fusionchartsR/reference/fusionPlot.md)

- isTrendZone:

  Render a trend zone on a chart

- displayValue:

  Add text next to the trend-line

- startValue:

  Specify the data value of the starting point of the trend-line

- endValue:

  Specify the data value of the ending point of the trend-line

- color:

  Specify the hex code for the color of the trend-line

- thickness:

  Specify the thickness of the trend-line(in pixels)

- alpha:

  Specify the transparency of the trend-line

- valueOnRight:

  Enable right position

- trendValueFont:

  Set the font family for the trend-line display values

- trendValueFontSize:

  Set the font size for the trend-line display values

- trendValueFontBold:

  Make trend-line display values appear in bold

- trendValueFontItalic:

  Make trend-line display values appear in italic

- trendValueAlpha:

  Set the transparency for the trend-line display values

- trendValueBgColor:

  Set the color for the background of the trend-line display values

- trendValueBgAlpha:

  Set the transparency for the background of trend-line display values

- trendValueBorderColor:

  Set the color for the border around the trend-line display values

- trendValueBorderAlpha:

  Set the transparency for the border around the trend-line display
  values (0 to 100)

- trendValueBorderPadding:

  Set the padding for the border around the trend-line display values

- trendValueBorderRadius:

  Set the radius for the border around the trend-line display values

- trendValueBorderThickness:

  Set the thickness of the border around the trend-line display values

- trendValueBorderDashed:

  Specify whether the border around the trend-line display value will be
  drawn as a dashed line

- trendValueBorderDashLen:

  Set the length of each dash

- trendValueBorderDashGap:

  Set the gap between each dash

## Examples

``` r
library(fusionchartsR)
df <- data.frame(label = c("Venezuela", "Saudi", "Canada", "Russia"), value = c(290, 260, 180, 115))
df %>%
  fusionPlot(x = "label", y = "value", type = "column2d") %>%
  fusionTrendline(displayValue = "Help", startValue = "100") %>%
  fusionTheme(theme = "candy")

{"x":{"key_license":"","data":[
  {
    "label": "Venezuela",
    "value": 290
  },
  {
    "label": "Saudi",
    "value": 260
  },
  {
    "label": "Canada",
    "value": 180
  },
  {
    "label": "Russia",
    "value": 115
  }
],"categories":null,"dataset":null,"type":"column2d","numberSuffix":null,"columns":null,"rows":null,"colorrange":null,"mapbycategory":"0","caption":"Add a caption here","captionFont":"Arial","captionFontSize":"18","captionFontColor":"#5A5A5A","captionFontBold":1,"captionAlignment":"center","captionOnTop":1,"subCaption":"Add a subCaption here","subcaptionFont":"Arial","subcaptionFontSize":"14","subcaptionFontColor":"#999999","subcaptionFontBold":0,"showBorder":0,"borderColor":"#666666","borderThickness":"4","borderAlpha":"80","bgColor":"#ffffff","bgAlpha":"50","bgratio":"60,40","bgAngle":"180","showCanvasBg":0,"canvasbgColor":"#5a5a5a","canvasBgDepth":"0","canvasbgAlpha":"100","canvasBgRatio":"40,60","canvasBgAngle":"0","showCanvasBorder":0,"canvasBorderColor":"#666666","canvasBorderAlpha":"80","canvasBorderThickness":"1","showCanvasBase":0,"canvasBaseDepth":"5","canvasBaseColor":"#aaaaaa","xAxisName":"Change X axis","xAxisNameFont":"Arial","xAxisNameFontSize":"12","xAxisNameFontColor":"#999999","xAxisNameFontBold":1,"xAxisNameFontItalic":0,"yAxisName":"Change Y axis","yAxisNameFont":"Arial","yAxisNameFontSize":"12","yAxisNameFontColor":"#999999","yAxisNameFontBold":1,"yAxisNameFontItalic":0,"showlabels":1,"xAxisPosition":"bottom","xAxisNameBorderColor":"","xAxisNameBorderAlpha":"0","xAxisNameBorderPadding":"6","xAxisNameBorderRadius":"3","xAxisNameBorderThickness":"2","xAxisNameBorderDashed":0,"xAxisNameBorderDashLen":"4","xAxisNameBorderDashGap":"2","xAxisNameBgColor":"","xAxisNameBgAlpha":"0","xAxisNameFontAlpha":"100","xAxisValueFont":"Arial","xAxisValueFontSize":"1px","xAxisValueFontColor":"","xAxisValueFontBold":0,"xAxisValueFontItalic":0,"xAxisValueAlpha":"100","xAxisValueBgColor":"","xAxisValueBgAlpha":"50","xAxisValueBorderColor":"#ffffff","xAxisValueBorderAlpha":"0","xAxisValueBorderPadding":"5","xAxisValueBorderRadius":"2","xAxisValueBorderThickness":"3","xAxisValueBorderDashed":false,"xAxisValueBorderDashLen":"2","xAxisValueBorderDashGap":"2","yAxisPosition":"left","yAxisNameBorderColor":"","yAxisNameBorderAlpha":"0","yAxisNameBorderPadding":"6","yAxisNameBorderRadius":"3","yAxisNameBorderThickness":"2","yAxisNameBorderDashed":0,"yAxisNameBorderDashLen":"4","yAxisNameBorderDashGap":"2","yAxisNameBgColor":"","yAxisNameBgAlpha":"0","yAxisNameFontAlpha":"100","yAxisValueFont":"Arial","yAxisValueFontSize":"1px","yAxisValueFontColor":"","yAxisValueFontBold":0,"yAxisValueFontItalic":0,"yAxisValueAlpha":"100","yAxisValueBgColor":"","yAxisValueBgAlpha":"50","yAxisValueBorderColor":"#ffffff","yAxisValueBorderAlpha":"0","yAxisValueBorderPadding":"5","yAxisValueBorderRadius":"2","yAxisValueBorderThickness":"3","yAxisValueBorderDashed":false,"yAxisValueBorderDashLen":"2","yAxisValueBorderDashGap":"2","showLegend":1,"interactiveLegend":1,"legendPosition":"bottom","legendAllowDrag":0,"legendIconScale":"1","reverseLegend":0,"legendCaption":"","legendCaptionBold":1,"legendCaptionFont":"Arial","legendCaptionFontSize":"14","legendCaptionFontColor":"#333333","plotHighlightEffect":"","drawCustomLegendIcon":1,"legendIconBgColor":"","legendIconAlpha":"100","legendIconBgAlpha":"100","legendIconBorderColor":"#123456","legendIconBorderThickness":"0","legendIconSides":"1","legendIconStartAngle":"45","legendScrollBgColor":"#5A5A5A","legendBgColor":"#CCCCCC","legendBgAlpha":"0","legendBorderColor":"#666666","legendBorderThickness":"0","legendBorderAlpha":"40","legendCaptionAlignment":"center","legendShadow":0,"legendItemFontBold":0,"legendItemFont":"Arial","legendItemFontSize":"14","legendItemFontColor":"#5A5A5A","legendItemHoverFontColor":"","usePlotGradientColor":0,"plotGradientColor":"#003366","plotFillAngle":"0","plotFillRatio":"90,100","plotFillAlpha":"100","showPlotBorder":0,"drawFullAreaBorder":0,"inheritPlotBorderColor":0,"plotBorderDashed":0,"plotBorderDashLen":"4","plotBorderDashGap":"4","plotBorderThickness":"1","plotBorderColor":"#666666","useRoundEdges":0,"plotHoverEffect":0,"plotFillHoverColor":"#5D62B5","plotFillHoverAlpha":"100","plotBorderHoverColor":"#000000","plotBorderHoverAlpha":"100","plotBorderHoverThickness":"1","plotBorderHoverDashed":1,"plotBorderHoverDashLen":"6","plotBorderHoverDashGap":"2","drawAnchors":1,"showvalues":0,"anchorSides":"0","anchorRadius":"3","anchorAlpha":"100","anchorBorderThickness":"1","anchorBorderColor":"#5a5a5a","anchorBgColor":"#ffffff","anchorBgAlpha":"100","anchorImageAlpha":"100","anchorImageScale":"150","isTrendZone":0,"displayValue":"Help","startValue":"100","endValue":"","color":"#FFFFFF","thickness":2,"alpha":"60","valueOnRight":1,"trendValueFont":"Arial","trendValueFontSize":"12","trendValueFontBold":1,"trendValueFontItalic":0,"trendValueAlpha":"80","trendValueBgColor":"#000000","trendValueBgAlpha":"10","trendValueBorderColor":"#000000","trendValueBorderAlpha":"80","trendValueBorderPadding":"4","trendValueBorderRadius":"5","trendValueBorderThickness":"2","trendValueBorderDashed":0,"trendValueBorderDashLen":"#5A5A5A","trendValueBorderDashGap":"1","showmean":1,"drawmeanconnector":0,"lowerboxcolor":"#29C3BE","upperboxcolor":"#5D62B5","mediancolor":"#FFFFFF","meaniconshape":"polygon","meaniconsides":"2","meaniconradius":"2","outliericonsides":"20","outliericonalpha":"40","outliericonshape":"triangle","outliericonsradius":"4","adjustDiv":0,"numDivLines":"5","divLineColor":"#5a5a5a","divLineAlpha":"10","divLineDashed":0,"divLineDashLen":"5","divLineDashGap":"6","numVDivLines":"5","vDivLineColor":"#F2F2F2","vDivLineThickness":"1","vDivLineAlpha":"100","vDivLineDashed":0,"vDivLineDashLen":"5","vDivLineDashGap":"3","showAlternateHGridColor":0,"alternateHGridColor":"#5a5a5a","alternateHGridAlpha":"1","showAlternateVGridColor":0,"alternateVGridColor":"#5a5a5a","alternateVGridAlpha":"3","showToolTip":1,"toolTipBorderColor":"#666666","toolTipBgColor":"#ffffff","toolTipBgAlpha":"100","showToolTipShadow":1,"logoURL":"NULL","logoAlpha":"40","logoScale":"80","logoPosition":"TL","theme":"candy"},"evals":[],"jsHooks":[]}
```

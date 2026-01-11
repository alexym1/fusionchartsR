# Customing FusionCharts axis

<https://www.fusioncharts.com/dev/chart-guide/chart-configurations/axes>

## Usage

``` r
fusionCustomAxis(
  fusionPlot,
  showlabels = TRUE,
  xAxisPosition = c("bottom", "top", "left", "right"),
  yAxisPosition = c("left", "right", "top", "bottom"),
  yAxisMinValue = NULL,
  yAxisMaxValue = NULL,
  AxisNameBorderColor = NULL,
  AxisNameBorderAlpha = "0",
  AxisNameBorderPadding = "6",
  AxisNameBorderRadius = "3",
  AxisNameBorderThickness = "2",
  AxisNameBorderDashed = FALSE,
  AxisNameBorderDashLen = "4",
  AxisNameBorderDashGap = "2",
  AxisNameBgColor = NULL,
  AxisNameBgAlpha = "0",
  AxisNameFontAlpha = "100",
  AxisValueFont = "Arial",
  AxisValueFontSize = "1px",
  AxisValueFontColor = NULL,
  AxisValueFontBold = FALSE,
  AxisValueFontItalic = FALSE,
  AxisValueAlpha = "100",
  AxisValueBgColor = NULL,
  AxisValueBgAlpha = "50",
  AxisValueBorderColor = "#ffffff",
  AxisValueBorderAlpha = "0",
  AxisValueBorderPadding = "5",
  AxisValueBorderRadius = "2",
  AxisValueBorderThickness = "3",
  AxisValueBorderDashed = FALSE,
  AxisValueBorderDashLen = "2",
  AxisValueBorderDashGap = "2"
)
```

## Arguments

- fusionPlot:

  fusionPlot object got by
  [`fusionPlot()`](https://alexym1.github.io/fusionchartsR/reference/fusionPlot.md)

- showlabels:

  Display the data labels

- xAxisPosition:

  change the position of the x-axis

- yAxisPosition:

  change the position of the y-axis

- yAxisMinValue:

  Set the lower limit of the x-axis

- yAxisMaxValue:

  Set the upper limit of the y-axis

- AxisNameBorderColor:

  Set the border color of the name of the axis

- AxisNameBorderAlpha:

  Set the transparency of the border around the name of axis

- AxisNameBorderPadding:

  Set the padding of the border around the name of the axis

- AxisNameBorderRadius:

  Set the radius of the border around the name of the axis

- AxisNameBorderThickness:

  Set the thickness of the border around the name of the axis

- AxisNameBorderDashed:

  Make the border around the name of the axis dashed

- AxisNameBorderDashLen:

  Set the length of each dash in the dashed border around the name of
  the axis

- AxisNameBorderDashGap:

  Set the gap between two consecutive dashes in the dashed border around
  the name of the axis

- AxisNameBgColor:

  Set the background color of the name of the axis

- AxisNameBgAlpha:

  Set the transparency of the background of the name of the axis

- AxisNameFontAlpha:

  Set the transparency of the name of the axis

- AxisValueFont:

  Set the font of the axis values

- AxisValueFontSize:

  Set the font size (between 0 to 72) of the axis values

- AxisValueFontColor:

  Set the font color of the axis

- AxisValueFontBold:

  Set the font of the axis values to bold

- AxisValueFontItalic:

  Set the font for the axis values to italics

- AxisValueAlpha:

  Set the degree of transparency of the axis values

- AxisValueBgColor:

  Set the background color of the axis values

- AxisValueBgAlpha:

  Set the background color transparency of the axis values

- AxisValueBorderColor:

  Set the border color of the axis values

- AxisValueBorderAlpha:

  Set the transparency of the border of the axis values

- AxisValueBorderPadding:

  Set the padding of the axis values border

- AxisValueBorderRadius:

  Set the border radius of the axis values

- AxisValueBorderThickness:

  Set the border thickness of the axis values

- AxisValueBorderDashed:

  Make the axis values border dashed

- AxisValueBorderDashLen:

  Set the length of each dash for the dashed borders around axis values

- AxisValueBorderDashGap:

  Set the gap between two consecutive dashes for the dashed borders
  around the axis values

## Examples

``` r
library(fusionchartsR)
df <- data.frame(label = c("Venezuela", "Saudi", "Canada", "Russia"), value = c(290, 260, 180, 115))
df %>%
  fusionPlot(x = "label", y = "value", type = "column3d") %>%
  fusionAxis(xAxisName = "Countries", yAxisName = "Numbers", AxisNameFontSize = "20") %>%
  fusionCustomAxis(xAxisPosition = "top", yAxisPosition = "right") %>%
  fusionTheme(theme = "gammel")

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
],"categories":null,"dataset":null,"type":"column3d","numberSuffix":null,"columns":null,"rows":null,"colorrange":null,"mapbycategory":"0","caption":"Add a caption here","captionFont":"Arial","captionFontSize":"18","captionFontColor":"#5A5A5A","captionFontBold":1,"captionAlignment":"center","captionOnTop":1,"subCaption":"Add a subCaption here","subcaptionFont":"Arial","subcaptionFontSize":"14","subcaptionFontColor":"#999999","subcaptionFontBold":0,"showBorder":0,"borderColor":"#666666","borderThickness":"4","borderAlpha":"80","bgColor":"#ffffff","bgAlpha":"50","bgratio":"60,40","bgAngle":"180","showCanvasBg":0,"canvasbgColor":"#5a5a5a","canvasBgDepth":"0","canvasbgAlpha":"100","canvasBgRatio":"40,60","canvasBgAngle":"0","showCanvasBorder":0,"canvasBorderColor":"#666666","canvasBorderAlpha":"80","canvasBorderThickness":"1","showCanvasBase":0,"canvasBaseDepth":"5","canvasBaseColor":"#aaaaaa","xAxisName":"Countries","xAxisNameFont":"Arial","xAxisNameFontSize":"20","xAxisNameFontColor":"#999999","xAxisNameFontBold":1,"xAxisNameFontItalic":0,"yAxisName":"Numbers","yAxisNameFont":"Arial","yAxisNameFontSize":"20","yAxisNameFontColor":"#999999","yAxisNameFontBold":1,"yAxisNameFontItalic":0,"showlabels":1,"xAxisPosition":"top","xAxisNameBorderColor":"","xAxisNameBorderAlpha":"0","xAxisNameBorderPadding":"6","xAxisNameBorderRadius":"3","xAxisNameBorderThickness":"2","xAxisNameBorderDashed":0,"xAxisNameBorderDashLen":"4","xAxisNameBorderDashGap":"2","xAxisNameBgColor":"","xAxisNameBgAlpha":"0","xAxisNameFontAlpha":"100","xAxisValueFont":"Arial","xAxisValueFontSize":"1px","xAxisValueFontColor":"","xAxisValueFontBold":0,"xAxisValueFontItalic":0,"xAxisValueAlpha":"100","xAxisValueBgColor":"","xAxisValueBgAlpha":"50","xAxisValueBorderColor":"#ffffff","xAxisValueBorderAlpha":"0","xAxisValueBorderPadding":"5","xAxisValueBorderRadius":"2","xAxisValueBorderThickness":"3","xAxisValueBorderDashed":false,"xAxisValueBorderDashLen":"2","xAxisValueBorderDashGap":"2","yAxisPosition":"right","yAxisNameBorderColor":"","yAxisNameBorderAlpha":"0","yAxisNameBorderPadding":"6","yAxisNameBorderRadius":"3","yAxisNameBorderThickness":"2","yAxisNameBorderDashed":0,"yAxisNameBorderDashLen":"4","yAxisNameBorderDashGap":"2","yAxisNameBgColor":"","yAxisNameBgAlpha":"0","yAxisNameFontAlpha":"100","yAxisValueFont":"Arial","yAxisValueFontSize":"1px","yAxisValueFontColor":"","yAxisValueFontBold":0,"yAxisValueFontItalic":0,"yAxisValueAlpha":"100","yAxisValueBgColor":"","yAxisValueBgAlpha":"50","yAxisValueBorderColor":"#ffffff","yAxisValueBorderAlpha":"0","yAxisValueBorderPadding":"5","yAxisValueBorderRadius":"2","yAxisValueBorderThickness":"3","yAxisValueBorderDashed":false,"yAxisValueBorderDashLen":"2","yAxisValueBorderDashGap":"2","showLegend":1,"interactiveLegend":1,"legendPosition":"bottom","legendAllowDrag":0,"legendIconScale":"1","reverseLegend":0,"legendCaption":"","legendCaptionBold":1,"legendCaptionFont":"Arial","legendCaptionFontSize":"14","legendCaptionFontColor":"#333333","plotHighlightEffect":"","drawCustomLegendIcon":1,"legendIconBgColor":"","legendIconAlpha":"100","legendIconBgAlpha":"100","legendIconBorderColor":"#123456","legendIconBorderThickness":"0","legendIconSides":"1","legendIconStartAngle":"45","legendScrollBgColor":"#5A5A5A","legendBgColor":"#CCCCCC","legendBgAlpha":"0","legendBorderColor":"#666666","legendBorderThickness":"0","legendBorderAlpha":"40","legendCaptionAlignment":"center","legendShadow":0,"legendItemFontBold":0,"legendItemFont":"Arial","legendItemFontSize":"14","legendItemFontColor":"#5A5A5A","legendItemHoverFontColor":"","usePlotGradientColor":0,"plotGradientColor":"#003366","plotFillAngle":"0","plotFillRatio":"90,100","plotFillAlpha":"100","showPlotBorder":0,"drawFullAreaBorder":0,"inheritPlotBorderColor":0,"plotBorderDashed":0,"plotBorderDashLen":"4","plotBorderDashGap":"4","plotBorderThickness":"1","plotBorderColor":"#666666","useRoundEdges":0,"plotHoverEffect":0,"plotFillHoverColor":"#5D62B5","plotFillHoverAlpha":"100","plotBorderHoverColor":"#000000","plotBorderHoverAlpha":"100","plotBorderHoverThickness":"1","plotBorderHoverDashed":1,"plotBorderHoverDashLen":"6","plotBorderHoverDashGap":"2","drawAnchors":1,"showvalues":0,"anchorSides":"0","anchorRadius":"3","anchorAlpha":"100","anchorBorderThickness":"1","anchorBorderColor":"#5a5a5a","anchorBgColor":"#ffffff","anchorBgAlpha":"100","anchorImageAlpha":"100","anchorImageScale":"150","isTrendZone":0,"displayValue":"","startValue":"","endValue":"","color":"#FFFFFF","thickness":2,"alpha":"60","valueOnRight":1,"trendValueFont":"Arial","trendValueFontSize":"12","trendValueFontBold":1,"trendValueFontItalic":0,"trendValueAlpha":"80","trendValueBgColor":"#000000","trendValueBgAlpha":"10","trendValueBorderColor":"#000000","trendValueBorderAlpha":"80","trendValueBorderPadding":"4","trendValueBorderRadius":"5","trendValueBorderThickness":"2","trendValueBorderDashed":0,"trendValueBorderDashLen":"#5A5A5A","trendValueBorderDashGap":"1","showmean":1,"drawmeanconnector":0,"lowerboxcolor":"#29C3BE","upperboxcolor":"#5D62B5","mediancolor":"#FFFFFF","meaniconshape":"polygon","meaniconsides":"2","meaniconradius":"2","outliericonsides":"20","outliericonalpha":"40","outliericonshape":"triangle","outliericonsradius":"4","adjustDiv":0,"numDivLines":"5","divLineColor":"#5a5a5a","divLineAlpha":"10","divLineDashed":0,"divLineDashLen":"5","divLineDashGap":"6","numVDivLines":"5","vDivLineColor":"#F2F2F2","vDivLineThickness":"1","vDivLineAlpha":"100","vDivLineDashed":0,"vDivLineDashLen":"5","vDivLineDashGap":"3","showAlternateHGridColor":0,"alternateHGridColor":"#5a5a5a","alternateHGridAlpha":"1","showAlternateVGridColor":0,"alternateVGridColor":"#5a5a5a","alternateVGridAlpha":"3","showToolTip":1,"toolTipBorderColor":"#666666","toolTipBgColor":"#ffffff","toolTipBgAlpha":"100","showToolTipShadow":1,"logoURL":"NULL","logoAlpha":"40","logoScale":"80","logoPosition":"TL","theme":"gammel"},"evals":[],"jsHooks":[]}
```

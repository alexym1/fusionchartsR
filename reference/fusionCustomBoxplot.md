# Customing "boxandwhisker2d" chart

Customing "boxandwhisker2d" chart

## Usage

``` r
fusionCustomBoxplot(
  fusionPlot,
  showmean = TRUE,
  drawmeanconnector = FALSE,
  lowerboxcolor = "#29C3BE",
  upperboxcolor = "#5D62B5",
  mediancolor = "#FFFFFF",
  meaniconshape = "polygon",
  meaniconsides = "2",
  meaniconradius = "2",
  showalloutliers = TRUE,
  outliericonsides = "20",
  outliericonalpha = "40",
  outliericonshape = "triangle",
  outliericonsradius = "4"
)
```

## Arguments

- fusionPlot:

  fusionPlot object got by
  [`fusionPlot()`](https://alexym1.github.io/fusionchartsR/reference/fusionPlot.md)

- showmean:

  Show means

- drawmeanconnector:

  Connect all means

- lowerboxcolor:

  Set the color of the lower box

- upperboxcolor:

  Set the color of the upper box

- mediancolor:

  Set the color of the median line

- meaniconshape:

  Set the shape of the mean icon

- meaniconsides:

  Set the sides of the mean icon

- meaniconradius:

  Set the radius of the mean icon

- showalloutliers:

  Show outliers

- outliericonsides:

  Set the sides of the outliers

- outliericonalpha:

  Set the background color transparency of the outliers

- outliericonshape:

  Set the shape of the outliers

- outliericonsradius:

  Set the radius of the outliers

## Examples

``` r
library(fusionchartsR)
mtcars %>%
  fusionPlot(x = "cyl", y = "mpg", type = "boxandwhisker2d") %>%
  fusionCustomBoxplot(drawmeanconnector = TRUE)

{"x":{"key_license":"","data":{"mpg":[21,21,22.8,21.4,18.7,18.1,14.3,24.4,22.8,19.2,17.8,16.4,17.3,15.2,10.4,10.4,14.7,32.4,30.4,33.9,21.5,15.5,15.2,13.3,19.2,27.3,26,30.4,15.8,19.7,15,21.4],"cyl":[6,6,4,6,8,6,8,4,4,6,6,8,8,8,8,8,8,4,4,4,4,8,8,8,8,4,4,4,8,6,8,4],"disp":[160,160,108,258,360,225,360,146.7,140.8,167.6,167.6,275.8,275.8,275.8,472,460,440,78.7,75.7,71.09999999999999,120.1,318,304,350,400,79,120.3,95.09999999999999,351,145,301,121],"hp":[110,110,93,110,175,105,245,62,95,123,123,180,180,180,205,215,230,66,52,65,97,150,150,245,175,66,91,113,264,175,335,109],"drat":[3.9,3.9,3.85,3.08,3.15,2.76,3.21,3.69,3.92,3.92,3.92,3.07,3.07,3.07,2.93,3,3.23,4.08,4.93,4.22,3.7,2.76,3.15,3.73,3.08,4.08,4.43,3.77,4.22,3.62,3.54,4.11],"wt":[2.62,2.875,2.32,3.215,3.44,3.46,3.57,3.19,3.15,3.44,3.44,4.07,3.73,3.78,5.25,5.424,5.345,2.2,1.615,1.835,2.465,3.52,3.435,3.84,3.845,1.935,2.14,1.513,3.17,2.77,3.57,2.78],"qsec":[16.46,17.02,18.61,19.44,17.02,20.22,15.84,20,22.9,18.3,18.9,17.4,17.6,18,17.98,17.82,17.42,19.47,18.52,19.9,20.01,16.87,17.3,15.41,17.05,18.9,16.7,16.9,14.5,15.5,14.6,18.6],"vs":[0,0,1,1,0,1,0,1,1,1,1,0,0,0,0,0,0,1,1,1,1,0,0,0,0,1,0,1,0,0,0,1],"am":[1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,1,1,1,1,1,1,1],"gear":[4,4,4,3,3,3,3,4,4,4,4,3,3,3,3,3,3,4,4,4,3,3,3,3,3,4,5,5,5,5,5,4],"carb":[4,4,1,1,2,1,4,2,2,4,4,3,3,3,4,4,4,1,2,1,1,2,2,4,2,1,2,2,4,6,8,2]},"categories":{
  "category": [
    {
      "label": "4"
    },
    {
      "label": "6"
    },
    {
      "label": "8"
    }
  ]
},"dataset":{
  "seriesname": "mpg",
  "data": [
    {
      "value": "22.8, 24.4, 22.8, 32.4, 30.4, 33.9, 21.5, 27.3, 26, 30.4, 21.4"
    },
    {
      "value": "21, 21, 21.4, 18.1, 19.2, 17.8, 19.7"
    },
    {
      "value": "18.7, 14.3, 16.4, 17.3, 15.2, 14.7, 15.5, 15.2, 13.3, 19.2, 15.8, 15",
      "outliers": "10.4"
    }
  ]
},"type":"boxandwhisker2d","numberSuffix":null,"columns":null,"rows":null,"colorrange":null,"mapbycategory":"0","caption":"Add a caption here","captionFont":"Arial","captionFontSize":"18","captionFontColor":"#5A5A5A","captionFontBold":1,"captionAlignment":"center","captionOnTop":1,"subCaption":"Add a subCaption here","subcaptionFont":"Arial","subcaptionFontSize":"14","subcaptionFontColor":"#999999","subcaptionFontBold":0,"showBorder":0,"borderColor":"#666666","borderThickness":"4","borderAlpha":"80","bgColor":"#ffffff","bgAlpha":"50","bgratio":"60,40","bgAngle":"180","showCanvasBg":0,"canvasbgColor":"#5a5a5a","canvasBgDepth":"0","canvasbgAlpha":"100","canvasBgRatio":"40,60","canvasBgAngle":"0","showCanvasBorder":0,"canvasBorderColor":"#666666","canvasBorderAlpha":"80","canvasBorderThickness":"1","showCanvasBase":0,"canvasBaseDepth":"5","canvasBaseColor":"#aaaaaa","xAxisName":"Change X axis","xAxisNameFont":"Arial","xAxisNameFontSize":"12","xAxisNameFontColor":"#999999","xAxisNameFontBold":1,"xAxisNameFontItalic":0,"yAxisName":"Change Y axis","yAxisNameFont":"Arial","yAxisNameFontSize":"12","yAxisNameFontColor":"#999999","yAxisNameFontBold":1,"yAxisNameFontItalic":0,"showlabels":1,"xAxisPosition":"bottom","xAxisNameBorderColor":"","xAxisNameBorderAlpha":"0","xAxisNameBorderPadding":"6","xAxisNameBorderRadius":"3","xAxisNameBorderThickness":"2","xAxisNameBorderDashed":0,"xAxisNameBorderDashLen":"4","xAxisNameBorderDashGap":"2","xAxisNameBgColor":"","xAxisNameBgAlpha":"0","xAxisNameFontAlpha":"100","xAxisValueFont":"Arial","xAxisValueFontSize":"1px","xAxisValueFontColor":"","xAxisValueFontBold":0,"xAxisValueFontItalic":0,"xAxisValueAlpha":"100","xAxisValueBgColor":"","xAxisValueBgAlpha":"50","xAxisValueBorderColor":"#ffffff","xAxisValueBorderAlpha":"0","xAxisValueBorderPadding":"5","xAxisValueBorderRadius":"2","xAxisValueBorderThickness":"3","xAxisValueBorderDashed":false,"xAxisValueBorderDashLen":"2","xAxisValueBorderDashGap":"2","yAxisPosition":"left","yAxisNameBorderColor":"","yAxisNameBorderAlpha":"0","yAxisNameBorderPadding":"6","yAxisNameBorderRadius":"3","yAxisNameBorderThickness":"2","yAxisNameBorderDashed":0,"yAxisNameBorderDashLen":"4","yAxisNameBorderDashGap":"2","yAxisNameBgColor":"","yAxisNameBgAlpha":"0","yAxisNameFontAlpha":"100","yAxisValueFont":"Arial","yAxisValueFontSize":"1px","yAxisValueFontColor":"","yAxisValueFontBold":0,"yAxisValueFontItalic":0,"yAxisValueAlpha":"100","yAxisValueBgColor":"","yAxisValueBgAlpha":"50","yAxisValueBorderColor":"#ffffff","yAxisValueBorderAlpha":"0","yAxisValueBorderPadding":"5","yAxisValueBorderRadius":"2","yAxisValueBorderThickness":"3","yAxisValueBorderDashed":false,"yAxisValueBorderDashLen":"2","yAxisValueBorderDashGap":"2","showLegend":1,"interactiveLegend":1,"legendPosition":"bottom","legendAllowDrag":0,"legendIconScale":"1","reverseLegend":0,"legendCaption":"","legendCaptionBold":1,"legendCaptionFont":"Arial","legendCaptionFontSize":"14","legendCaptionFontColor":"#333333","plotHighlightEffect":"","drawCustomLegendIcon":1,"legendIconBgColor":"","legendIconAlpha":"100","legendIconBgAlpha":"100","legendIconBorderColor":"#123456","legendIconBorderThickness":"0","legendIconSides":"1","legendIconStartAngle":"45","legendScrollBgColor":"#5A5A5A","legendBgColor":"#CCCCCC","legendBgAlpha":"0","legendBorderColor":"#666666","legendBorderThickness":"0","legendBorderAlpha":"40","legendCaptionAlignment":"center","legendShadow":0,"legendItemFontBold":0,"legendItemFont":"Arial","legendItemFontSize":"14","legendItemFontColor":"#5A5A5A","legendItemHoverFontColor":"","usePlotGradientColor":0,"plotGradientColor":"#003366","plotFillAngle":"0","plotFillRatio":"90,100","plotFillAlpha":"100","showPlotBorder":0,"drawFullAreaBorder":0,"inheritPlotBorderColor":0,"plotBorderDashed":0,"plotBorderDashLen":"4","plotBorderDashGap":"4","plotBorderThickness":"1","plotBorderColor":"#666666","useRoundEdges":0,"plotHoverEffect":0,"plotFillHoverColor":"#5D62B5","plotFillHoverAlpha":"100","plotBorderHoverColor":"#000000","plotBorderHoverAlpha":"100","plotBorderHoverThickness":"1","plotBorderHoverDashed":1,"plotBorderHoverDashLen":"6","plotBorderHoverDashGap":"2","drawAnchors":1,"showvalues":0,"anchorSides":"0","anchorRadius":"3","anchorAlpha":"100","anchorBorderThickness":"1","anchorBorderColor":"#5a5a5a","anchorBgColor":"#ffffff","anchorBgAlpha":"100","anchorImageAlpha":"100","anchorImageScale":"150","isTrendZone":0,"displayValue":"","startValue":"","endValue":"","color":"#FFFFFF","thickness":2,"alpha":"60","valueOnRight":1,"trendValueFont":"Arial","trendValueFontSize":"12","trendValueFontBold":1,"trendValueFontItalic":0,"trendValueAlpha":"80","trendValueBgColor":"#000000","trendValueBgAlpha":"10","trendValueBorderColor":"#000000","trendValueBorderAlpha":"80","trendValueBorderPadding":"4","trendValueBorderRadius":"5","trendValueBorderThickness":"2","trendValueBorderDashed":0,"trendValueBorderDashLen":"#5A5A5A","trendValueBorderDashGap":"1","showmean":1,"drawmeanconnector":1,"lowerboxcolor":"#29C3BE","upperboxcolor":"#5D62B5","mediancolor":"#FFFFFF","meaniconshape":"polygon","meaniconsides":"2","meaniconradius":"2","outliericonsides":"20","outliericonalpha":"40","outliericonshape":"triangle","outliericonsradius":"4","adjustDiv":0,"numDivLines":"5","divLineColor":"#5a5a5a","divLineAlpha":"10","divLineDashed":0,"divLineDashLen":"5","divLineDashGap":"6","numVDivLines":"5","vDivLineColor":"#F2F2F2","vDivLineThickness":"1","vDivLineAlpha":"100","vDivLineDashed":0,"vDivLineDashLen":"5","vDivLineDashGap":"3","showAlternateHGridColor":0,"alternateHGridColor":"#5a5a5a","alternateHGridAlpha":"1","showAlternateVGridColor":0,"alternateVGridColor":"#5a5a5a","alternateVGridAlpha":"3","showToolTip":1,"toolTipBorderColor":"#666666","toolTipBgColor":"#ffffff","toolTipBgAlpha":"100","showToolTipShadow":1,"logoURL":"NULL","logoAlpha":"40","logoScale":"80","logoPosition":"TL","theme":"fusion"},"evals":[],"jsHooks":[]}
```

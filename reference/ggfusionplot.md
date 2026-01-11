# Convert a ggplot2 object to a fusionchartsR object.

**\[experimental\]**

## Usage

``` r
ggfusionPlot(object)
```

## Arguments

- object:

  a ggplot object

## Examples

``` r
library(ggplot2)
library(fusionchartsR)

df <- data.frame(
  label = rep(x = c(2012:2016), times = 2),
  seriesname = c(rep("iOS App Store", 5), rep("Google Play Store", 5)),
  values = c(1:10)
)

object <- ggplot(df, aes(label, values, fill = seriesname)) +
  geom_col()

ggfusionPlot(object)

{"x":{"key_license":"","data":{"label":[2012,2013,2014,2015,2016,2012,2013,2014,2015,2016],"seriesname":["iOS App Store","iOS App Store","iOS App Store","iOS App Store","iOS App Store","Google Play Store","Google Play Store","Google Play Store","Google Play Store","Google Play Store"],"values":[1,2,3,4,5,6,7,8,9,10]},"categories":{
  "category": [
    {
      "label": "2012"
    },
    {
      "label": "2013"
    },
    {
      "label": "2014"
    },
    {
      "label": "2015"
    },
    {
      "label": "2016"
    }
  ]
},"dataset":[
  {
    "seriesname": "Google Play Store",
    "data": [
      {
        "value": "6"
      },
      {
        "value": "7"
      },
      {
        "value": "8"
      },
      {
        "value": "9"
      },
      {
        "value": "10"
      }
    ]
  },
  {
    "seriesname": "iOS App Store",
    "data": [
      {
        "value": "1"
      },
      {
        "value": "2"
      },
      {
        "value": "3"
      },
      {
        "value": "4"
      },
      {
        "value": "5"
      }
    ]
  }
],"type":"stackedcolumn2d","numberSuffix":null,"captionFont":"Arial","captionFontSize":"18","captionFontColor":"#5A5A5A","captionFontBold":1,"captionAlignment":"center","captionOnTop":1,"subcaptionFont":"Arial","subcaptionFontSize":"14","subcaptionFontColor":"#999999","subcaptionFontBold":0,"showBorder":0,"borderColor":"#666666","borderThickness":"4","borderAlpha":"80","bgColor":"#ebebeb","bgAlpha":"50","bgratio":"60,40","bgAngle":"180","showCanvasBg":0,"canvasbgColor":"#5a5a5a","canvasBgDepth":"0","canvasbgAlpha":"100","canvasBgRatio":"40,60","canvasBgAngle":"0","showCanvasBorder":0,"canvasBorderColor":"#666666","canvasBorderAlpha":"80","canvasBorderThickness":"1","showCanvasBase":0,"canvasBaseDepth":"5","canvasBaseColor":"#aaaaaa","xAxisNameFont":"Arial","xAxisNameFontSize":"12","xAxisNameFontColor":"#999999","xAxisNameFontBold":1,"xAxisNameFontItalic":0,"yAxisNameFont":"Arial","yAxisNameFontSize":"12","yAxisNameFontColor":"#999999","yAxisNameFontBold":1,"yAxisNameFontItalic":0,"showlabels":1,"xAxisPosition":"bottom","xAxisNameBorderColor":"","xAxisNameBorderAlpha":"0","xAxisNameBorderPadding":"6","xAxisNameBorderRadius":"3","xAxisNameBorderThickness":"2","xAxisNameBorderDashed":0,"xAxisNameBorderDashLen":"4","xAxisNameBorderDashGap":"2","xAxisNameBgColor":"","xAxisNameBgAlpha":"0","xAxisNameFontAlpha":"100","xAxisValueFont":"Arial","xAxisValueFontSize":"1px","xAxisValueFontColor":"","xAxisValueFontBold":0,"xAxisValueFontItalic":0,"xAxisValueAlpha":"100","xAxisValueBgColor":"","xAxisValueBgAlpha":"50","xAxisValueBorderColor":"#ffffff","xAxisValueBorderAlpha":"0","xAxisValueBorderPadding":"5","xAxisValueBorderRadius":"2","xAxisValueBorderThickness":"3","xAxisValueBorderDashed":false,"xAxisValueBorderDashLen":"2","xAxisValueBorderDashGap":"2","yAxisPosition":"left","yAxisNameBorderColor":"","yAxisNameBorderAlpha":"0","yAxisNameBorderPadding":"6","yAxisNameBorderRadius":"3","yAxisNameBorderThickness":"2","yAxisNameBorderDashed":0,"yAxisNameBorderDashLen":"4","yAxisNameBorderDashGap":"2","yAxisNameBgColor":"","yAxisNameBgAlpha":"0","yAxisNameFontAlpha":"100","yAxisValueFont":"Arial","yAxisValueFontSize":"1px","yAxisValueFontColor":"","yAxisValueFontBold":0,"yAxisValueFontItalic":0,"yAxisValueAlpha":"100","yAxisValueBgColor":"","yAxisValueBgAlpha":"50","yAxisValueBorderColor":"#ffffff","yAxisValueBorderAlpha":"0","yAxisValueBorderPadding":"5","yAxisValueBorderRadius":"2","yAxisValueBorderThickness":"3","yAxisValueBorderDashed":false,"yAxisValueBorderDashLen":"2","yAxisValueBorderDashGap":"2","showLegend":1,"interactiveLegend":1,"legendPosition":"right","legendAllowDrag":0,"legendIconScale":"1","reverseLegend":0,"legendCaption":"seriesname","legendCaptionBold":1,"legendCaptionFont":"Arial","legendCaptionFontSize":"14","legendCaptionFontColor":"#333333","plotHighlightEffect":"","drawCustomLegendIcon":1,"legendIconBgColor":"","legendIconAlpha":"100","legendIconBgAlpha":"100","legendIconBorderColor":"#123456","legendIconBorderThickness":"0","legendIconSides":"4","legendIconStartAngle":"45","legendScrollBgColor":"#5A5A5A","legendBgColor":"#CCCCCC","legendBgAlpha":"0","legendBorderColor":"#666666","legendBorderThickness":"0","legendBorderAlpha":"40","legendCaptionAlignment":"center","legendShadow":0,"legendItemFontBold":0,"legendItemFont":"Arial","legendItemFontSize":"14","legendItemFontColor":"#5A5A5A","legendItemHoverFontColor":"","usePlotGradientColor":0,"plotGradientColor":"#003366","plotFillAngle":"0","plotFillRatio":"90,100","plotFillAlpha":"100","showPlotBorder":0,"drawFullAreaBorder":0,"inheritPlotBorderColor":0,"plotBorderDashed":0,"plotBorderDashLen":"4","plotBorderDashGap":"4","plotBorderThickness":"1","plotBorderColor":"#000","useRoundEdges":0,"plotHoverEffect":0,"plotFillHoverColor":"#5D62B5","plotFillHoverAlpha":"100","plotBorderHoverColor":"#000000","plotBorderHoverAlpha":"100","plotBorderHoverThickness":"1","plotBorderHoverDashed":1,"plotBorderHoverDashLen":"6","plotBorderHoverDashGap":"2","drawAnchors":1,"showvalues":0,"anchorSides":"0","anchorRadius":"3","anchorAlpha":"100","anchorBorderThickness":"0.2","anchorBorderColor":"#000","anchorBgColor":"#000","anchorBgAlpha":"100","anchorImageAlpha":"100","anchorImageScale":"150","isTrendZone":0,"displayValue":"","startValue":"","endValue":"","color":"#FFFFFF","thickness":2,"alpha":"60","valueOnRight":1,"trendValueFont":"Arial","trendValueFontSize":"12","trendValueFontBold":1,"trendValueFontItalic":0,"trendValueAlpha":"80","trendValueBgColor":"#000000","trendValueBgAlpha":"10","trendValueBorderColor":"#000000","trendValueBorderAlpha":"80","trendValueBorderPadding":"4","trendValueBorderRadius":"5","trendValueBorderThickness":"2","trendValueBorderDashed":0,"trendValueBorderDashLen":"#5A5A5A","trendValueBorderDashGap":"1","showmean":1,"drawmeanconnector":0,"lowerboxcolor":"#000","upperboxcolor":"#000","mediancolor":"#FFFFFF","meaniconshape":"polygon","meaniconsides":"2","meaniconradius":"2","outliericonsides":"20","outliericonalpha":"40","outliericonshape":"triangle","outliericonsradius":"4","adjustDiv":0,"numDivLines":"5","divLineColor":"#5a5a5a","divLineAlpha":"10","divLineDashed":0,"divLineDashLen":"5","divLineDashGap":"6","numVDivLines":"5","vDivLineColor":"#F2F2F2","vDivLineThickness":"1","vDivLineAlpha":"100","vDivLineDashed":0,"vDivLineDashLen":"5","vDivLineDashGap":"3","showAlternateHGridColor":0,"alternateHGridColor":"#5a5a5a","alternateHGridAlpha":"1","showAlternateVGridColor":0,"alternateVGridColor":"#5a5a5a","alternateVGridAlpha":"3","showToolTip":1,"toolTipBorderColor":"#666666","toolTipBgColor":"#ffffff","toolTipBgAlpha":"100","showToolTipShadow":1,"logoURL":"NULL","logoAlpha":"40","logoScale":"80","logoPosition":"TL","theme":"fusion","yAxisMinValue":1,"yAxisMaxValue":11,"palettecolors":"#000"},"evals":[],"jsHooks":[]}
```

HTMLWidgets.widget({

  name: 'fusionPlot',

  type: 'output',

  factory: function(el, width, height) {

    // TODO: define shared variables for this instance

    return {

      renderValue: function(x) {

    FusionCharts.ready(function(){
    var fusioncharts = new FusionCharts({
    type: x.type,
    renderAt: el,
    key: x.license,
    creditLabel: false,
    width: "100%",
    height: "100%",
    dataFormat: 'json',
    dataSource: {
        // Chart Configuration
        "chart": {
          // fusionPlot()
          "numberSuffix": x.numberSuffix,
          "mapbycategory": x.mapbycategory,
          
          // fusionCustomBoxplot()
          "showmean": x.showmean,
          "drawmeanconnector": x.drawmeanconnector,
          "mediancolor": x.mediancolor,
          "meaniconshape": x.meaniconshape,
          "meaniconsides": x.meaniconsides,
          "meaniconradius": x.meaniconradius,
          "showalloutliers": x.showalloutliers,
          "outliericonsides": x.outliericonsides,
          "outliericonalpha": x.outliericonalpha,
          "outliericonshape": x.outliericonshape,
          "outliericonsradius": x.outliericonsradius,

          // fusionCaption()
          "caption": x.caption,
          "captionFont": x.captionFont,
          "captionFontSize": x.captionFontSize,
          "captionFontColor": x.captionFontColor,
          "captionFontBold": x.captionFontBold,
          "captionAlignment": x.captionAlignment,
          "captionOnTop": x.captionOnTop,

          // fusionSubcaption()
          "subCaption": x.subCaption,
          "subcaptionFont": x.subcaptionFont,
          "subcaptionFontSize": x.subcaptionFontSize,
          "subcaptionFontColor": x.subcaptionFontColor,
          "subcaptionFontBold": x.subcaptionFontBold,

          // fusionBackground()
          "showBorder": x.showBorder,
          "borderColor": x.borderColor,
          "borderThickness": x.borderThickness,
          "borderAlpha": x.borderAlpha,
          "bgColor": x.bgColor,
          "bgAlpha": x.bgAlpha,
          "bgratio": x.bgratio,
          "bgAngle": x.bgAngle,

          // fusionCanvas()
          "showCanvasBg": x.showCanvasBg,
          "canvasbgColor": x.canvasbgColor,
          "canvasBgDepth": x.canvasBgDepth,
          "canvasbgAlpha": x.canvasbgAlpha,
          "canvasBgRatio": x.canvasBgRatio,
          "canvasBgAngle": x.canvasBgAngle,
          "showCanvasBorder": x.showCanvasBorder,
          "canvasBorderColor": x.canvasBorderColor,
          "canvasBorderAlpha": x.canvasBorderAlpha,
          "canvasBorderThickness": x.canvasBorderThickness,
          "showCanvasBase": x.showCanvasBase,
          "canvasBaseDepth": x.canvasBaseDepth,
          "canvasBaseColor": x.canvasBaseColor,

           // fusionAxis()
          "xAxisName": x.xAxisName,
          "xAxisNameFont": x.xAxisNameFont,
          "xAxisNameFontSize": x.xAxisNameFontSize,
          "xAxisNameFontColor": x.xAxisNameFontColor,
          "xAxisNameFontBold": x.xAxisNameFontBold,
          "xAxisNameFontItalic": x.xAxisNameFontItalic,
          "yAxisName": x.yAxisName,
          "yAxisNameFont": x.yAxisNameFont,
          "yAxisNameFontSize": x.yAxisNameFontSize,
          "yAxisNameFontColor": x.yAxisNameFontColor,
          "yAxisNameFontBold": x.yAxisNameFontBold,
          "yAxisNameFontItalic": x.yAxisNameFontItalic,

          //fusionCustomAxis()
          "showlabels": x.showlabels,
          "xAxisPosition": x.xAxisPosition,
          "xAxisNameBorderColor": x.xAxisNameBorderColor,
          "xAxisNameBorderAlpha": x.xAxisNameBorderAlpha,
          "xAxisNameBorderPadding": x.xAxisNameBorderPadding,
          "xAxisNameBorderRadius": x.xAxisNameBorderRadius,
          "xAxisNameBorderThickness": x.xAxisNameBorderThickness,
          "xAxisNameBorderDashed": x.xAxisNameBorderDashed,
          "xAxisNameBorderDashLen": x.xAxisNameBorderDashLen,
          "xAxisNameBorderDashGap": x.xAxisNameBorderDashGap,
          "xAxisNameBgColor": x.xAxisNameBgColor,
          "xAxisNameBgAlpha": x.xAxisNameBgAlpha,
          "xAxisNameFontAlpha": x.xAxisNameFontAlpha,
          "xAxisValueFont": x.xAxisValueFont,
          "xAxisValueFontSize": x.xAxisValueFontSize,
          "xAxisValueFontColor": x.xAxisValueFontColor,
          "xAxisValueFontBold": x.xAxisValueFontBold,
          "xAxisValueFontItalic": x.xAxisValueFontItalic,
          "xAxisValueAlpha": x.xAxisValueAlpha,
          "xAxisValueBgColor": x.xAxisValueBgColor,
          "xAxisValueBgAlpha": x.xAxisValueBgAlpha,
          "xAxisValueBorderColor": x.xAxisValueBorderColor,
          "xAxisValueBorderAlpha": x.xAxisValueBorderAlpha,
          "xAxisValueBorderPadding": x.xAxisValueBorderPadding,
          "xAxisValueBorderRadius": x.xAxisValueBorderRadius,
          "xAxisValueBorderThickness": x.xAxisValueBorderThickness,
          "xAxisValueBorderDashed": x.xAxisValueBorderDashed,
          "xAxisValueBorderDashLen": x.xAxisValueBorderDashLen,
          "xAxisValueBorderDashGap": x.xAxisValueBorderDashGap,

          "yAxisPosition": x.yAxisPosition,
          "yAxisMaxValue": x.yAxisMaxValue,
          "yAxisNameBorderColor": x.yAxisNameBorderColor,
          "yAxisNameBorderAlpha": x.yAxisNameBorderAlpha,
          "yAxisNameBorderPadding": x.yAxisNameBorderPadding,
          "yAxisNameBorderRadius": x.yAxisNameBorderRadius,
          "yAxisNameBorderThickness": x.yAxisNameBorderThickness,
          "yAxisNameBorderDashed": x.yAxisNameBorderDashed,
          "yAxisNameBorderDashLen": x.yAxisNameBorderDashLen,
          "yAxisNameBorderDashGap": x.yAxisNameBorderDashGap,
          "yAxisNameBgColor": x.yAxisNameBgColor,
          "yAxisNameBgAlpha": x.yAxisNameBgAlpha,
          "yAxisNameFontAlpha": x.yAxisNameFontAlpha,
          "yAxisValueFont": x.yAxisValueFont,
          "yAxisValueFontSize": x.yAxisValueFontSize,
          "yAxisValueFontColor": x.yAxisValueFontColor,
          "yAxisValueFontBold": x.yAxisValueFontBold,
          "yAxisValueFontItalic": x.yAxisValueFontItalic,
          "yAxisValueAlpha": x.yAxisValueAlpha,
          "yAxisValueBgColor": x.yAxisValueBgColor,
          "yAxisValueBgAlpha": x.yAxisValueBgAlpha,
          "yAxisValueBorderColor": x.yAxisValueBorderColor,
          "yAxisValueBorderAlpha": x.yAxisValueBorderAlpha,
          "yAxisValueBorderPadding": x.yAxisValueBorderPadding,
          "yAxisValueBorderRadius": x.yAxisValueBorderRadius,
          "yAxisValueBorderThickness": x.yAxisValueBorderThickness,
          "yAxisValueBorderDashed": x.yAxisValueBorderDashed,
          "yAxisValueBorderDashLen": x.yAxisValueBorderDashLen,
          "yAxisValueBorderDashGap": x.yAxisValueBorderDashGap,

           // fusionLegend()
          "showLegend": x.showLegend,
          "interactiveLegend": x.interactiveLegend,
          "legendPosition": x.legendPosition,
          "legendAllowDrag": x.legendAllowDrag,
          "legendIconScale": x.legendIconScale,
          "reverseLegend": x.reverseLegend,
          "legendCaption": x.legendCaption,
          "legendCaptionBold": x.legendCaptionBold,
          "legendCaptionFont": x.legendCaptionFont,
          "legendCaptionFontSize": x.legendCaptionFontSize,
          "legendCaptionFontColor": x.legendCaptionFontColor,

          // fusionCustomLegend()
          "plotHighlightEffect": x.plotHighlightEffect,
          "drawCustomLegendIcon": x.drawCustomLegendIcon,
          "legendIconBgColor": x.legendIconBgColor,
          "legendIconAlpha": x.legendIconAlpha,
          "legendIconBgAlpha": x.legendIconBgAlpha,
          "legendIconBorderColor": x.legendIconBorderColor,
          "legendIconBorderThickness": x.legendIconBorderThickness,
          "legendIconSides": x.legendIconSides,
          "legendIconStartAngle": x.legendIconStartAngle,
          "legendScrollBgColor": x.legendScrollBgColor,
          "legendBgColor": x.legendBgColor,
          "legendBgAlpha": x.legendBgAlpha,
          "legendBorderColor": x.legendBorderColor,
          "legendBorderThickness": x.legendBorderThickness,
          "legendBorderAlpha": x.legendBorderAlpha,
          "legendCaptionAlignment": x.legendCaptionAlignment,
          "legendShadow": x.legendShadow,
          "legendItemFontBold": x.legendItemFontBold,
          "legendItemFont": x.legendItemFont,
          "legendItemFontSize": x.legendItemFontSize,
          "legendItemFontColor": x.legendItemFontColor,
          "legendItemHoverFontColor": x.legendItemHoverFontColor,

          // fusionPalette()
          "palettecolors": x.palettecolors,
          "usePlotGradientColor": x.usePlotGradientColor,
          "plotGradientColor": x.plotGradientColor,
          "plotFillAngle": x.plotFillAngle,
          "plotFillRatio": x.plotFillRatio,
          "plotFillAlpha": x.plotFillAlpha,
          "showPlotBorder": x.showPlotBorder,
          "drawFullAreaBorder": x.drawFullAreaBorder,
          "inheritPlotBorderColor": x.inheritPlotBorderColor,
          "plotBorderDashed": x.plotBorderDashed,
          "plotBorderDashLen": x.plotBorderDashLen,
          "plotBorderDashGap": x.plotBorderDashGap,
          "plotBorderThickness": x.plotBorderThickness,
          "plotBorderColor": x.plotBorderColor,
          "useRoundEdges": x.useRoundEdges,
          "plotHoverEffect": x.plotHoverEffect,
          "plotFillHoverColor": x.plotFillHoverColor,
          "plotFillHoverAlpha": x.plotFillHoverAlpha,
          "plotBorderHoverColor": x.plotBorderHoverColor,
          "plotBorderHoverAlpha": x.plotBorderHoverAlpha,
          "plotBorderHoverThickness": x.plotBorderHoverThickness,
          "plotBorderHoverDashed": x.plotBorderHoverDashed,
          "plotBorderHoverDashLen": x.plotBorderHoverDashLen,
          "plotBorderHoverDashGap": x.plotBorderHoverDashGap,

          // fusionAnchors()
          "drawAnchors": x.drawAnchors,
          "showvalues": x.showvalues,
          "anchorSides": x.anchorSides,
          "anchorRadius": x.anchorRadius,
          "anchorAlpha": x.anchorAlpha,
          "anchorBorderThickness": x.anchorBorderThickness,
          "anchorBorderColor": x.anchorBorderColor,
          "anchorBgColor": x.anchorBgColor,
          "anchorBgAlpha": x.anchorBgAlpha,
          "anchorImageAlpha": x.anchorImageAlpha,
          "anchorImageScale": x.anchorImageScale,

          // fusionTooltip()
          "showToolTip": x.showToolTip,
          "toolTipBorderColor": x.toolTipBorderColor,
          "toolTipBgColor": x.toolTipBgColor,
          "toolTipBgAlpha": x.toolTipBgAlpha,
          "showToolTipShadow": x.showToolTipShadow,

          // fusionTheme()
          "theme": x.theme,

          // fusionTrendline()
          "trendValueFont": x.trendValueFont,
          "trendValueFontSize": x.trendValueFontSize,
          "trendValueFontBold": x.trendValueFontBold,
          "trendValueFontItalic": x.trendValueFontItalic,
          "trendValueAlpha": x.trendValueAlpha,
          "trendValueBgColor": x.trendValueBgColor,
          "trendValueBgAlpha": x.trendValueBgAlpha,
          "trendValueBorderColor": x.trendValueBorderColor,
          "trendValueBorderAlpha": x.trendValueBorderAlpha,
          "trendValueBorderPadding": x.trendValueBorderPadding,
          "trendValueBorderRadius": x.trendValueBorderRadius,
          "trendValueBorderThickness": x.trendValueBorderThickness,
          "trendValueBorderDashed": x.trendValueBorderDashed,
          "trendValueBorderDashLen": x.trendValueBorderDashLen,
          "trendValueBorderDashGap": x.trendValueBorderDashGap,

          // fusionLogo()
          "logoURL": x.logoURL,
          "logoAlpha": x.logoAlpha,
          "logoScale": x.logoScale,
          "logoPosition": x.logoPosition,
          "logoLink": x.logoLink,

          // fusionDiv()
          "adjustDiv": x.adjustDiv,
          "numDivLines": x.numDivLines,
          "divLineColor": x.divLineColor,
          "divLineAlpha": x.divLineAlpha,
          "divLineDashed": x.divLineDashed,
          "divLineDashLen": x.divLineDashLen,
          "divLineDashGap": x.divLineDashGap,
          "numVDivLines": x.numVDivLines,
          "vDivLineColor": x.vDivLineColor,
          "vDivLineThickness": x.vDivLineThickness,
          "vDivLineAlpha": x.vDivLineAlpha,
          "vDivLineDashed": x.vDivLineDashed,
          "vDivLineDashLen": x.vDivLineDashLen,
          "vDivLineDashGap": x.vDivLineDashGap,
          "showAlternateHGridColor": x.showAlternateHGridColor,
          "alternateHGridColor": x.alternateHGridColor,
          "alternateHGridAlpha": x.alternateHGridAlpha,
          "showAlternateVGridColor": x.showAlternateVGridColor,
          "alternateVGridColor": x.alternateVGridColor,
          "alternateVGridAlpha": x.alternateVGridAlpha

        },
        // Simple Charts
        "data": x.data,

        // Multiple Charts Data
        "categories": [
          x.categories
        ],
        
        "colorrange": x.colorrange,
        
        "dataset": [
          x.dataset
        ],
        
        // heatmap
        "columns": x.columns,
        "rows": x.rows,

        // fusionTrendline()
        "trendlines": [{
          "line": [{
            "isTrendZone": x.isTrendZone,
            "displayValue": x.displayValue,
            "startvalue": x.startValue,
            "endvalue": x.endValue,
            "color": x.color,
            "thickness": x.thickness,
            "alpha": x.alpha,
            "valueOnRight": x.valueOnRight
          }]
        }]
    }
});
    fusioncharts.render();
    });

      },

      resize: function(width, height) {

        // TODO: code to re-render the widget with a new size

      }

    };
  }
});

(function(factory){if(typeof module==="object"&&typeof module.exports!=="undefined"){module.exports=factory}else{factory(FusionCharts)}})((function(FusionCharts){(()=>{"use strict";
/** !
 * @license Boilerplate Theme v//? write(JSON.parse(require('fs').readFileSync('./package.json')).version);
 * FusionCharts JavaScript Library
 *
 * This theme file includes the following theme variants:
 * - boilerplate-basic
 * - boilerplate-extended
 *
 * Copyright FusionCharts, Inc.
 * License Information at <http://www.fusioncharts.com/license>
 */var themeArray=[{name:"boilerplate-basic",theme:{base:{chart:{labelDisplay:"stagger !important",caption:"Theme Caption \\!important",canvasBgColor:"#56EF22",borderThickness:"5 !important",borderColor:"#E60539",baseFontColor:"#781129"},categories:[{fontColor:"#0F4F40",fontSize:15,category:function(index){return{showLabel:index%2?0:1}},vline:{color:"#000000",thickness:2}}],dataset:[{color:"#8C3146",data:function(index,dataObj){if(index==8){dataObj.value=""}return{color:Number(dataObj.value)<32e3?"#8C3146":"#FF0000",alpha:"100"}}}],trendlines:[{line:function(index){if(index){return{color:"#ff0000",thickness:3}}else{return{color:"#ffff00",thickness:3}}}}]},pie2d:{chart:{bgColor:"#FF0000"}},msline:{chart:{canvasBgColor:"#FF0000"}}}},{name:"boilerplate-extended",theme:{base:{chart:{labelDisplay:"rotate",showValues:1,rotateYAxisName:0,canvasBgColor:"#f0ff00",borderThickness:1},categories:{fontColor:"#ff0000",fontSize:15,category:function(index){return{showLabel:index%2?1:0}},vline:{color:"#000000",thickness:2}},dataset:[{color:"#00ffff",data:function(index){return{color:index%2?"#0FF000":"#ffffff",alpha:"100"}}}]}}}],boilerplateBasic={extension:themeArray[0],name:"boilerplateBasicTheme",type:"theme"},boilerplateExtended={extension:themeArray[1],name:"boilerplateExtendedTheme",type:"theme"};FusionCharts.addDep(boilerplateBasic);FusionCharts.addDep(boilerplateExtended)})()}));
//# sourceMappingURL=fusioncharts.theme.boilerplate.js.map
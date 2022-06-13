# fusionchartsR <a href=#><img src='inst/fusionchartsR_logo.png' align="right" height="139" /></a>

[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/fusionchartsR)](https://cran.r-project.org/package=fusionchartsR)
[![](https://cranlogs.r-pkg.org/badges/fusionchartsR)](https://cran.r-project.org/package=fusionchartsR)
![](https://img.shields.io/badge/github%20version-0.0.3-green.svg)

## Bugs

* `fusionTrendline()` doesn't work with `fusionMultiPlot()`

## Installation

The `fusionchartsR` package can be installed from CRAN as follows:

```{r eval = FALSE}
install.packages("fusionchartsR")
```

The latest version can be installed from GitHub as follows: 

```{r eval = FALSE}
install.packages("devtools")
devtools::install_github("alexym1/fusionchartsR")
```

## Example

```{r}
library(fusionchartsR)

df <- data.frame(label = c("Venezuela", "Saudi", "Canada", "Russia"), value = c(290, 260,180, 115))
df %>%
fusionPlot(x = "label", y = "value", type = "pie2d") %>%
fusionTheme(theme = "gammel")
```

## Ressources

Official website at https://www.fusioncharts.com/

## Licence 

FusionChartsR has dependencies on FusionCharts, a commercial JavaScript charting library. FusionCharts is not free for commercial and governmental use. Please, purchase a licence at https://www.fusioncharts.com/buy.

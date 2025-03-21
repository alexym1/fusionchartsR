# fusionchartsR 1.1.1

* pkgdown website returns the website as expected. (#5)

# fusionchartsR 1.1.0

* Refresh the logo
* Add `ggfusionPlot` to convert `ggplot2` object to `fusionchartsR` object. (#3)
* `fusionchartsR` has been restyled using `styler`.

# fusionchartsR 1.0.0

* Add `renv.lock`
* Release website using pkgdown
* Rename `fusionchartsR_logo.png` to `logo.png`. Move logo from `inst/logo.png` to `man/figures/logo.png` and resize  to 150x150.
* Use `NEWS.md` as CHANGELOG
* Add `.github/workflows/pkgdown.yaml`
* Replace example by a shiny demo
* Add `fusionTrendline()`

# fusionchartsR 0.0.5

* Major refactoring of `fusionPlot()` and `fusionMultiPlot()`. Both functions no longer use `available_charts()` for chart selection.
* Ability to use `type="boxandwhisker2d"` for `fusionMultiPlot()`. Add `fusionCustomBoxplot()` 
* Fix colors bugs for scatter plots

# fusionchartsR 0.0.4

* Release package to CRAN
* Build basic components
* Fix relative bugs
* ...
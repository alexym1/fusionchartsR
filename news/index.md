# Changelog

## fusionchartsR 1.2.0

CRAN release: 2026-01-12

- Add `fusionGrid` to render interactive table
- Upgrade version of FusionCharts Suite XT to 4.2.0 including new themes
  like `fint` and `access`
- Refresh shinyApp
  ([\#11](https://github.com/alexym1/fusionchartsR/issues/11))

## fusionchartsR 1.1.1

- Remove `docs` folder to avoid confusion with pkgdown

## fusionchartsR 1.1.0

CRAN release: 2024-12-19

- Refresh the logo
- Add `ggfusionPlot` to convert `ggplot2` object to `fusionchartsR`
  object. ([\#3](https://github.com/alexym1/fusionchartsR/issues/3))
- `fusionchartsR` has been restyled using `styler`.

## fusionchartsR 1.0.0

CRAN release: 2024-11-09

- Add `renv.lock`
- Release website using pkgdown
- Rename `fusionchartsR_logo.png` to `logo.png`. Move logo from
  `inst/logo.png` to `man/figures/logo.png` and resize to 150x150.
- Use `NEWS.md` as CHANGELOG
- Add `.github/workflows/pkgdown.yaml`
- Replace example by a shiny demo
- Add
  [`fusionTrendline()`](https://alexym1.github.io/fusionchartsR/reference/fusionTrendline.md)

## fusionchartsR 0.0.5

- Major refactoring of
  [`fusionPlot()`](https://alexym1.github.io/fusionchartsR/reference/fusionPlot.md)
  and
  [`fusionMultiPlot()`](https://alexym1.github.io/fusionchartsR/reference/fusionMultiPlot.md).
  Both functions no longer use `available_charts()` for chart selection.
- Ability to use `type="boxandwhisker2d"` for
  [`fusionMultiPlot()`](https://alexym1.github.io/fusionchartsR/reference/fusionMultiPlot.md).
  Add
  [`fusionCustomBoxplot()`](https://alexym1.github.io/fusionchartsR/reference/fusionCustomBoxplot.md)
- Fix colors bugs for scatter plots

## fusionchartsR 0.0.4

- Release package to CRAN
- Build basic components
- Fix relative bugs
- …

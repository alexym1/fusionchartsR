col2hex <- function(col) {
  rgb <- grDevices::col2rgb(col)
  return(paste0("#", sprintf("%02x%02x%02x", rgb[1], rgb[2], rgb[3])))
}

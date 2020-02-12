#' NTNU palette with ramped colours
#'
#' @param palette List of palettes to choose from
#' @param reverse If TRUE, reverses colour direction
#' @param ... Additional arguments
#'
#' @export
#'
#' @examples
#' \dontrun{
#'  ntnu_pal()
#' }


ntnu_pal <- function(palette = "main", 
                     reverse = FALSE, ...){
  
  pal <- ntnu_palettes[[palette]]
  
  if(reverse) pal <- rev(pal)
  
  grDevices::colorRampPalette(pal, ...)
  
}


#' Setup colour palette for ggplot2
#'
#' @param palette Palette to apply
#' @param discrete Whether the scale is continuous or discrete
#' @param reverse Whether the palette should be reversed
#' @param ... Additional arguments
#'
#' @export
#'
#' @examples
#' \dontrun{
#' scale_color_ntnu()
#' }

scale_color_ntnu <- function(palette = "main", 
                             discrete = TRUE, 
                             reverse = FALSE, 
                             ...){
  
  pal <- ntnu_pal(
    palette = palette,
    reverse = reverse
    )
  
  if(discrete){
    ggplot2::discrete_scale(
      aesthetics = "colour", 
      scale_name = paste0("ntnu_", palette), 
      palette = pal, 
      ...
      )
  } else {
    ggplot2::scale_color_gradientn(
      colours = pal(256), 
      ...
      )
  }
  
}

#' Setup fill palette for ggplot2
#'
#' @param palette Palette to apply
#' @param discrete Whether the scale is continuous or discrete
#' @param reverse Whether the palette should be reversed
#' @param ... Additional arguments
#'
#' @export
#'
#' @examples
#' \dontrun{
#' scale_fill_ntnu()
#' }
 
scale_fill_ntnu <- function(palette = "main",
                            discrete = TRUE,
                            reverse = FALSE,
                            ...){
  pal <- ntnu_pal(palette = palette, reverse = reverse)
  
  if(discrete){
    ggplot2::discrete_scale(
      aesthetics = "fill", 
      scale_name = paste0("ntnu_", palette), 
      palette = pal, 
      ...)
  } else {
    ggplot2::scale_fill_gradientn(
      colours = pal(256), 
      ...)
  }
}

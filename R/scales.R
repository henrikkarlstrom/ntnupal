#' NTNU palette with ramped colours
#'
#' @param palette List of palettes to choose from
#' @param reverse If TRUE, reverses colour direction
#' @param ... 
#'
#' @export
#'
#' @examples
#' library(scales)
#' show_col(ntnu_pal()(10))
#' 
#' filled.contour(volcano, color.palette = ntnu_pal(), asp = 1)

ntnu_pal <- function(palette = "main", 
                     reverse = FALSE, ...){
  
  pal <- ntnu_palettes[[palette]]
  
  if(reverse) pal <- rev(pal)
  
  colorRampPalette(pal, ...)
  
}


#' Setup colour palette for ggplot2
#'
#' @param palette 
#' @param discrete 
#' @param reverse 
#' @param ... 
#'
#' @return
#' @export
#'
#' @examples
scale_color_ntnu <- function(palette = "main", 
                             discrete = TRUE, 
                             reverse = FALSE, 
                             ...){
  
  pal <- ntnu_pal(palette = palette, reverse= reverse)
  
  if(discrete){
    discrete_scale("colour", paste0("ntnu_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
  
}

#' Setup fill palette for ggplot2
#'
#' @param palette 
#' @param discrete 
#' @param reverse 
#' @param ... 
#'
#' @return
#' @export
#'
#' @examples
scale_fill_ntnu <- function(palette = "main",
                            discrete = TRUE,
                            reverse = FALSE,
                            ...){
  pal <- ntnu_pal(palette = palette, reverse = reverse)
  
  if(discrete){
    discrete_scale("fill", paste0("ntnu_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}

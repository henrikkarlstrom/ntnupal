#' Add NTNU theme to ggplot chart
#'
#' @param base_size Basis for text and line sizes
#' @param base_family Base font family
#'
#' @export
#'
#' @examples
#' line <- ggplot2::ggplot(line_df, aes(x = year, y = lifeExp)) +
#' ggplot2::geom_line(colour = "#007f7f", size = 1) +
#' ggplot2::geom_hline(yintercept = 0, size = 1, colour="#333333") +
#' theme_ntnu()

theme_ntnu <- function (
  base_size = 11, 
  base_family = ""
)
{
  
  half_line <- base_size/2
  
  ggplot2::theme(
    
    line = ggplot2::element_line(
      colour = "black",
      size = 0.5,
      linetype = 1,
      lineend = "butt"
    ),
    
    rect = ggplot2::element_rect(
      fill = "white",
      colour = "black", 
      size = 0.5, 
      linetype = 1
    ), 
    
    text = ggplot2::element_text(
      family = base_family,
      face = "plain", 
      colour = "black", 
      size = base_size, 
      lineheight = 0.9,
      hjust = 0.5, 
      vjust = 0.5, 
      angle = 0, 
      margin = ggplot2::margin(),
      debug = FALSE
    ),
    
    axis.line = ggplot2::element_blank(),
    
    axis.line.x = ggplot2::element_blank(),
    
    axis.line.y = ggplot2::element_blank(), 
    
    axis.text = ggplot2::element_text(
      size = ggplot2::rel(1.6),
      colour = "#222222"
    ), 
    
    axis.text.x = ggplot2::element_text(
      margin = ggplot2::margin(
        t = 0.8 * half_line/2
      ), 
      vjust = 1
    ), 
    
    axis.text.y = ggplot2::element_text(
      margin = ggplot2::margin(
        r = 0.8 * half_line/2
      ), 
      hjust = 1
    ), 
    
    axis.ticks = ggplot2::element_blank(),
    
    axis.ticks.length = grid::unit(
      x = half_line/2, 
      units = "pt"
    ), 
    
    axis.title = ggplot2::element_blank(),
    
    axis.title.x = ggplot2::element_text(
      margin = ggplot2::margin(
        t = 0.8 * half_line,
        b = 0.8 * half_line/2
      )
    ), 
    
    axis.title.y = ggplot2::element_text(
      angle = 90,
      margin = ggplot2::margin(
        r = 0.8 * half_line,
        l = 0.8 * half_line/2)
    ), 
    
    legend.background = ggplot2::element_blank(), 
    
    legend.key = ggplot2::element_blank(), 
    
    legend.key.size = grid::unit(
      x = 1.2, 
      units = "lines"
    ), 
    
    legend.key.height = NULL, 
    
    legend.key.width = NULL, 
    
    legend.margin = ggplot2::margin(9,0,9,0), 
    
    legend.text = ggplot2::element_text(
      size = ggplot2::rel(1.4),
      color = "#222222"
    ), 
    
    legend.text.align = 0, 
    
    legend.title = ggplot2::element_blank(), 
    
    legend.title.align = NULL, 
    
    legend.position = "top", 
    
    legend.direction = NULL, 
    
    legend.justification = "center", 
    
    legend.box = NULL, 
    
    panel.background = ggplot2::element_blank(), 
    
    panel.border = ggplot2::element_blank(), 
    
    panel.grid.major = ggplot2::element_line(
      colour = "white"
    ),
    
    panel.grid.major.x = ggplot2::element_blank(),
    
    panel.grid.major.y = ggplot2::element_line(
      color = "#cbcbcb"
    ),
    
    panel.grid.minor = ggplot2::element_blank(), 
    
    panel.spacing = grid::unit(
      x = half_line, 
      units = "pt"
    ), 
    
    panel.spacing.x = NULL, 
    
    panel.spacing.y = NULL, 
    
    panel.ontop = FALSE,
    
    plot.caption = ggplot2::element_blank(),
    
    plot.subtitle = ggplot2::element_text(
      size = 22,
      margin = ggplot2::margin(9,0,9,0)
    ),
    
    plot.title = ggplot2::element_text(
      size = ggplot2::rel(2),
      face = "bold",
      color = "#222222",
      margin = ggplot2::margin(
        b = half_line * 1.2
      )
    ),
    
    strip.background = ggplot2::element_rect(
      fill = "white",
      colour = NA
    ), 
    
    strip.text = ggplot2::element_text(
      size = ggplot2::rel(0.8)
    ), 
    
    strip.text.x = ggplot2::element_text(
      margin = ggplot2::margin(
        t = half_line,
        b = half_line
      )
    ), 
    
    strip.text.y = ggplot2::element_text(
      angle = -90,
      margin = ggplot2::margin(
        l = half_line,
        r = half_line
      )
    ), 
    
    strip.switch.pad.grid = grid::unit(
      x = 0.1, 
      units = "cm"
    ), 
    
    strip.switch.pad.wrap = grid::unit(
      x = 0.1, 
      units = "cm"
    ), 
    
    plot.background = ggplot2::element_rect(
      colour = "white"
    ), 
    
    plot.margin = ggplot2::margin(half_line, 
                                  half_line,
                                  half_line, 
                                  half_line), 
    
    complete = TRUE
  )
}
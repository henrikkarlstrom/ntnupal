ntnu_colours <- c(
  ntnu_blue = "#00509e",
  ntnu_moccasin = "#f1d282",
  ntnu_fountainblue = "#5cbec9",
  ntnu_bitterlemon = "#d5d10e",
  ntnu_bone = "#dfd8c5",
  ntnu_poloblue = "#79a2ce",
  ntnu_greenmist = "#c9d4b2",
  ntnu_straw = "#ccbd8f",
  ntnu_pink = "#ad208e",
  ntnu_ice = "#dde7ee",
  ntnu_brown = "#90492d",
  ntnu_purple = "#552988",
  ntnu_orange = "#f58025"
)

ntnu_cols_extract <- function(...) {
  cols <- c(...)
  
  if(is.null(cols))
    return(ntnu_colours)
  
  ntnu_colours[cols]
}

ntnu_palettes <- list(
  "main" = ntnu_cols_extract("ntnu_blue"),
  
  "cool" = ntnu_cols_extract("ntnu_fountainblue",
                             "ntnu_poloblue",
                             "ntnu_ice"),
  
  "hot" = ntnu_cols_extract("ntnu_moccasin",
                            "ntnu_bitterlemon",
                            "ntnu_orange"),
  
  "strong" = ntnu_cols_extract("ntnu_fountainblue",
                               "ntnu_pink",
                               "ntnu_purple",
                               "ntnu_orange"),
  
  "subdued" = ntnu_cols_extract("ntnu_bone",
                                "ntnu_greenmist",
                                "ntnu_straw",
                                "ntnu_ice"),
  
  "mixed" = ntnu_cols_extract()
  
)
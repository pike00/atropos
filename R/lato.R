font_lato <- "Lato-Regular.ttf"
font_lato_thin <- "Lato-Thin.ttf"
font_lato_bold <- "Lato-Bold.ttf"


import_lato <- function() {
  suppressWarnings(suppressMessages(extrafont::font_import(system.file("fonts","lato", package="atropos"), prompt=F)))
}

# Define the Atropos color palette
atropos_colors_named <- c(
  "White" = "#FFFFFF",
  "Deep Teal" = "#1D3E3C",
  "Dark Cyan" = "#016F66",
  "Ash Gray" = "#B5B6B5",
  "Light Periwinkle" = "#CBDAFF",
  "Royal Blue" = "#4169D4"
)
# Reordered Atropos palette for contrast

atropos_colors_contrasting <- c(
  "#1D3E3C", "#B5B6B5", "#72A59F","#E1E2E4", "#CBDAFF","#016F66","#000807", "#4169D4",  "#7499FF"
)


pal_atropos <- function(n = 6){
    return(pal_seq_gradient(atropos_colors_named[['Ash Gray']],
                            atropos_colors_named[['Deep Teal']])
           (seq(0, 1, length.out = n)))
}

scale_color_discrete_atropos <- function(...) {
  scale_color_manual(values = atropos_colors_contrasting, ...)
}


# Custom discrete fill scale using the Atropos palette
scale_fill_discrete_atropos <- function(...) {
  scale_fill_manual(values = atropos_colors_contrasting, ...)
}

# Create a color ramp function
atropos_gradient <- colorRampPalette(atropos_colors_contrasting)

# Custom continuous color scale for Atropos palette
scale_color_continuous_atropos <- function(numColors=2,...) {
  scale_color_gradientn(colours = atropos_gradient(numColors), ...)
}


# Custom continuous fill scale for Atropos palette
scale_fill_continuous_atropos <- function(numColors = 2, ...) {
  scale_fill_gradientn(colours = atropos_gradient(numColors), ...)
}


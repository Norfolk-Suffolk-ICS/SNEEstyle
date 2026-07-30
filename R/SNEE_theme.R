#' Creates the SNEE Theme for ggplot
#'
#' Creates a base theme for ggplot objects. By default this uses a font that
#' requires the \link[extrafont]{extrafont} package to be installed.
#'
#' @param base_font_size The base font size to use for the visual (default is 11) - this is the title size and other text is scaled relative to this.
#'
#' @export
#'
#' @import ggplot2
#'
#' @examples
#' \dontrun{
#' library(ggplot2)
#' library(SNEEstyle)
#' ggplot(iris, aes(Sepal.Width, Sepal.Length, colour = Species)) +
#'   geom_point() +
#'   scale_colour_SNEE("greens") +
#'   SNEE_theme()
#' }

SNEE_theme <- function(base_font_size = 11) {
  theme_minimal(base_family = "sans") %+replace%
    theme(
      # Background elements
      panel.background = element_rect(fill = SNEE_colour("white"), colour = SNEE_colour("white")),
      panel.border = element_blank(),
      plot.background = element_rect(fill = SNEE_colour("white"), colour = SNEE_colour("white")),
      plot.margin = margin(t = 0.5, r = 0.5, b = 0.5, l = 0.5, unit ="cm"),
      strip.background = element_blank(),
      # Grid elements
      axis.line.x = element_line(colour = SNEE_colour("pale_grey")),
      axis.line.y = element_blank(),
      axis.ticks = element_blank(),
      panel.grid.major.x = element_blank(),
      panel.grid.major.y = element_line(colour = SNEE_colour("pale_grey")),
      panel.grid.minor = element_blank(),
      panel.spacing = unit(0.5, "cm"),
      # Text elements
      axis.text.x = element_text(colour = SNEE_colour("dark_grey"), size = base_font_size * 0.727273, vjust = 1),
      axis.text.y = element_text(colour = SNEE_colour("dark_grey"), size = base_font_size * 0.727273,  vjust = 0.5, hjust = 1),
      axis.title.x = element_text(margin = margin(t = 0.3, r = 0, b = 0, l = 0, unit ="cm"), colour = SNEE_colour("black"), size = base_font_size * 0.727273, face = "bold"),
      axis.title.y = element_text(margin = margin(t = 0, r = 0.3, b = 0, l = 0, unit ="cm"), colour = SNEE_colour("black"), size = base_font_size * 0.727273, face = "bold", angle = 90),
      legend.text = element_text(colour = SNEE_colour("black"), size = base_font_size * 0.727273, face = "bold", family = "sans"),
      legend.title = element_blank(),
      plot.caption = element_text(margin = margin(t = 0.3, r = 0, b = 0, l = 0, unit ="cm"), colour = SNEE_colour("dark_grey"), size = base_font_size * 0.727273, hjust = 1, vjust = 1),
      plot.title = element_text(margin = margin(t = 0, r = 0, b = 0.3, l = 0, unit ="cm"), colour = SNEE_colour("black"), size = base_font_size, face = "bold", hjust = 0),
      plot.title.position = "plot",
      strip.text = element_text(margin = margin(t = 0, r = 0, b = 0.3, l = 0, unit ="cm"), colour = SNEE_colour("black"), size = base_font_size * 0.727273, face = "bold"),
      # Legend elements
      legend.background = element_blank(),
      legend.box.background = element_blank(),
      legend.box.margin = margin(t = 0, r = 0, b = 0, l = 0, unit ="cm"),
      legend.byrow = TRUE,
      legend.key = element_blank(),
      legend.key.size = unit(0.4, "cm"),
      legend.margin = margin(t = 0, r = 0, b = 0, l = 0, unit ="cm"),
      legend.position = "bottom",
      legend.spacing.x = unit(0.1, "cm"),
      legend.spacing.y = unit(0.1, "cm")
    )
}

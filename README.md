# SNEEstyle

An R package containing useful functions for implementing SNEE style.

## SNEE colours and palettes

### Colours

-   Neutrals: navy, black, dark_grey, pale_grey, white

-   Purples: purple, darkpurple1, darkpurple2, lightpurple1, lightpurple2

-   Greens: green, darkgreen1, darkgreen2, lightgreen1, lightgreen2

-   Pinks: pink, darkpink1, darkpink2, lightpink1, lightpink2

-   Blues: blue, darkblue1, darkblue2, lightblue1, lightblue2

-   Yellows: yellow, darkyellow1, darkyellow2, lightyellow1, lightyellow2

### Palettes

-   greens
-   purples
-   pinks
-   blues
-   yellows
-   diverge (diverging)
-   qual (qualitative/categorical)

## R Installation

You can install the R package:

- v2.0.3 directly from GitHub with:

``` r
devtools::install_github('Norfolk-Suffolk-ICS/SNEEstyle')', ref = 'v2.0.3', force = TRUE, build_vignettes = TRUE)
```

-   the latest development version directly from GitHub with

``` r
devtools::install_github('Norfolk-Suffolk-ICS/SNEEstyle')', force = TRUE, build_vignettes = TRUE)
```

If you are prompted to update packages during the install process, choose "None" as this can stop the install.

Run `library(SNEEstyle)` to load the functions and make them available in your current R session.

## Using SNEEstyle in R

Below are quick examples of how SNEEstyle can be used.

### Finding SNEE colour codes

-   You can return all SNEE colour codes with:

``` r
library(SNEEtools)

SNEE_colour()
```

-   You can return specific colour codes by name with:

``` r
library(SNEEtools)

SNEE_colour(c("green", "lightgreen2"))
```

-   You can return colour palette codes by palette name with:

``` r
library(SNEEtools)

SNEE_colour(palette = "greens")
```

### Adding SNEE theme to plots

-   You can apply SNEE theme and colours to your plots with:

``` r
library(ggplot2)
library(SNEEtools)

ggplot(iris, aes(x = Sepal.Width, y = Sepal.Length, colour = Species)) +
    geom_point() +
    scale_colour_SNEE("greens") +
    SNEE_theme()
```

### Creating a SNEE themed quarto presentation

- You can create a quarto document or presentation based on existing SNEE templates with:

``` r
libary(SNEEstyle)

SNEE_quarto_setup(type = "presentation", format = "html", "outputs", "draft1")
```

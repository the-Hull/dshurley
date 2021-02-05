source("./R/custom_onofre.R")

# render page -------------------------------------------------------------


rmarkdown::render(input = "./doc/splash.Rmd",
                  output_format = custom_onofre(template = "./templates/onofre_wide.html",
                                                css = NULL,
                                                includes = NULL),
                  output_file = "splash.html")


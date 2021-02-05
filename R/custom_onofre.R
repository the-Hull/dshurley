#' Adjusted Template for Postcards
#'
#' @param name
#' @param css
#' @param includes
#' @param template
#'
#' @return
#' @export
#'
#' @examples
custom_onofre <- function (css, includes, template = NULL) {

    template_file <- normalizePath(template)



    minimum_required <- "2.8"
    installed <- as.character(rmarkdown::pandoc_version())
    self_contained <- !(utils::compareVersion(minimum_required,
                                              installed) > 0)
    rmarkdown::html_document(theme = NULL, self_contained = self_contained,
                             mathjax = NULL, template = template_file, css = css,
                             includes = includes, md_extensions = "-autolink_bare_uris")
}

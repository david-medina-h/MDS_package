#' A correlation Function
#'
#' This function creates a correlation table of all numeric variables in a given year
#' @param love 
#' @keywords nba 
#' @export
#' @examples
#' num_cor()

num_cor <- function(year){
  year_filt <- dplyr::filter(nbadata, Year == year)
  year_filt <- purrr::keep(year_filt, is.numeric)
  cor(year_filt, use = "complete.obs")
}














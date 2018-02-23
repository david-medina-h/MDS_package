#' A old Function
#'
#' This function returns the name of the oldest player in a given year
#' @param year Input year of interest 
#' @keywords nba 
#' @export
#' @examples
#' old_player()

old_player <- function(year){
  year_filt <- dplyr::filter(nbadata, Year == year) 
  year_filt <- dplyr::arrange(year_filt, desc(Age))
  as.character(year_filt[1, "Player"])
}







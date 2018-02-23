#' A high point function
#'
#' This function returns the name of the player who scored the most points in a given year
#' @param year Input year of interest 
#' @keywords nba
#' @export
#' @examples 
#' hscore_year()


hscore_year <- function(year){
  year_filt <- dplyr::filter(nbadata, Year == year)
  year_filt <- dplyr::arrange(year_filt, desc(PTS))
  as.character(year_filt[1, "Player"])
}













#' The base date
#'
#' @param DF Dataframe of the farms' reproduction data
#'
#' @return date the base date
#' @export
#'
#' @examples
#' bdate <- bdate(DF)
#' bdate
#'
bdate <- function(DF){

  bdate <- DF[2, 18] #get the base date as a tibble
  bdate <- bdate[[1]]
}

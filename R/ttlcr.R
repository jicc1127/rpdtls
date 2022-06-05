#' Total conception rate
#'
#' (the_number_of_pregnant_cows /
#'           (the_number_of_AIs -  the_number_of_unknown_pregnantCows'_AIs))*100 %
#'
#' @param DF Dataframe of the farms' reproduction data
#'
#' @return double total conception rate (%)
#' @export
#'
#' @examples
#' ttlCR <- ttlcr(DF)
#' ttlCR
#'

ttlcr <- function(DF){

  #Count the heads of pregnancy
  hsofpreg <- hsofpreg(DF)
  #Sum up the number of AItimes
  sofaitimes <- sofaitimes(DF)
  #Count the number of unknown pregnancy AI
  nofunkpr_ai <- nofunkpr_ai(DF)

  #calculate the total conception rate
  ttlcr <- (hsofpreg / (sofaitimes - nofunkpr_ai)) * 100

}

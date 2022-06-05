#' Total conception rate
#'
#' (the_number_of_pregnant_cows /
#'           (the_number_of_AIs -  the_number_of_nonpregnant_AIs))*100 %
#'
#' @param DF Dataframe of the farms' reproduction data
#'
#' @return double total conception rate (%)
#' @export
#'
#' @examples
#' ttl_CR <- ttl_cr(DF)
#' ttl_CR
#'
ttl_cr <- function(DF){

  #Count the heads of pregnancy
  hsofpreg <- hsofpreg(DF)
  #Sum up the number of AItimes
  sofaitimes <- sofaitimes(DF)
  #Count the number of unknown pregnancy AI
  nof_unkpr_ai <- nof_unkpr_ai(DF)

  #calculate the total conception rate
  ttl_cr <- (hsofpreg / (sofaitimes - nof_unkpr_ai)) * 100

}

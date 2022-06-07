#' Total AI rate
#'
#' omit the unknown pregnancy cycles
#'
#' (the_number_of_AIs -  the_number_of_nonpregnant_AIs /
#'  (the_number_of_cycles -
#'              the_number_of_the_unknown_pregnancy_cycles ))*100 %
#'
#' @param DF Dataframe of the farms' reproduction data
#' @param VWP Voluntary Waiting Period
#'
#' @return double total AI rate (%)
#' @export
#'
#' @examples
#' ttl_AIR <- ttl_air(DF, 50)
#' ttl_AIR
#'

ttl_air <- function(DF, VWP){

  #Sum up the number of AItimes
  sofaitimes <- sofaitimes(DF)
  #Count the number of unknown pregnancy AI
  nof_unkpr_ai <- nof_unkpr_ai(DF)
  #Get the sum of cycles
  sofcycles <- sofcycles(DF, VWP)
  #Count the number of the unknown pregnancy cycle
  snof_unkpr_cycles <- snof_unkpr_cycles(DF)

  #calculate the total conception rate
  ttl_air <- ((sofaitimes - nof_unkpr_ai) / (sofcycles - snof_unkpr_cycles)) * 100

}

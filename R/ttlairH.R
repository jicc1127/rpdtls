#' Total AI rate
#' for Heifer
#' omit the number of the unknown pregnant Heifer's AIs
#'
#' (the_number_of_AIs -  the_number_of_unknown_pregnantCows'_AIs /
#'  (the_number_of_cycles -
#'             the_number_of_the_unknown_pregnant_Heifer's_cycles ))*100 %
#'
#' @param DFH Dataframe of the farms' reproduction data
#' @param VWP Voluntary Waiting Period (months)
#'
#' @return double total AI rate (%)
#' @export
#'
#' @examples
#' ttlAIRH <- ttlairH(DFH, 13)
#' ttlAIRH
#'

ttlairH <- function(DFH, VWP){

  #Sum up the number of AItimes
  sofaitimes <- sofaitimes(DFH)
  #Count the number of unknown pregnancy AI
  nofunkpr_ai <- nofunkpr_ai(DFH)
  #Get the sum of cycles
  sofcyclesH <- sofcyclesH(DFH, VWP)
  #Count the number of the unknown pregnancy cycle
  snofunkpr_cyclesH <- snofunkpr_cyclesH(DFH, VWP)

  #calculate the total conception rate
  ttlairH <- ((sofaitimes - nofunkpr_ai) / (sofcyclesH - snofunkpr_cyclesH)) * 100

}

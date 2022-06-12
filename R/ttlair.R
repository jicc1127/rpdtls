#' Total AI rate
#' for Cow
#' omit the number of the unknown pregnant Cow's AIs
#'
#' (the_number_of_AIs -  the_number_of_unknown_pregnantCows'_AIs /
#'  (the_number_of_cycles -
#'             the_number_of_the_unknown_pregnant_Cow's_cycles ))*100 %
#'
#' @param DF Dataframe of the farms' reproduction data
#' @param VWP Voluntary Waiting Period
#'
#' @return double total AI rate (%)
#' @export
#'
#' @examples
#' ttlAIR <- ttlair(DF, 50)
#' ttlAIR
#'

ttlair <- function(DF, VWP){

  #Sum up the number of AItimes
  sofaitimes <- sofaitimes(DF)
  #Count the number of unknown pregnancy AI
  nofunkpr_ai <- nofunkpr_ai(DF)
  #Get the sum of cycles
  sofcycles <- sofcycles(DF, VWP)
  #Count the number of the unknown pregnancy cycle
  snofunkpr_cycles <- snofunkpr_cycles(DF, VWP)

  #calculate the total conception rate
  ttlair <- ((sofaitimes - nofunkpr_ai) / (sofcycles - snofunkpr_cycles)) * 100

}

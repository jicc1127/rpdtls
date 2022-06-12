#' Total pregnancy rate
#' for Heifer
#' omit the unknown pregnant Heifers
#'
#' (the_number_of_AIs -  the_number_of_unknown_pregnantCows'_AIs /
#'  (the_number_of_cycles -
#'             the_number_of_the_unknown_pregnant_Cow's_cycles ))*
#'  (the_number_of_pregnant_cows /
#'        (the_number_of_AIs -  the_number_of_unknown_pregnantCows'_AIs))*100 %
#'
#'  = (the_number_of_pregnant_cows) / (the_number_of_cycles -
#'             the_number_of_the_unknown_pregnant_Cow's_cycles ) * 100 %
#'
#'
#'  = ((the_total_AI_rate / 100) * (the_total_coception_rate / 100)) * 100(%)
#'
#' @param DFH Dataframe of the farms' reproduction data
#' @param VWP int Voluntary Waiting Period (months)
#'
#' @return double total pregnancy rate(%)
#' @export
#'
#' @examples
#'  ttlprH <- ttlprH(DFH, 13)
#'  ttlprH
#'
ttlprH <- function(DFH, VWP){


  #Count the heads of pregnancy
  hsofpreg <- hsofpreg(DFH)
  #Get the sum of cycles
  sofcycles <- sofcyclesH(DFH, VWP)
  #Count the number of the unknown pregnancy cycle
  snofunkpr_cycles <- snofunkpr_cyclesH(DFH, VWP)

  ttlprH <- (hsofpreg / (sofcycles - snofunkpr_cycles)) * 100


  #get the total AI rate
  #ttlair <- ttlairH(DFH, VWP)
  #get the total conception rate
  #ttlcr <- ttlcr(DFH)
  #get the total pregnancy rate
  #ttlpr <- ((ttlair/100) * (ttlcr/100))*100

}

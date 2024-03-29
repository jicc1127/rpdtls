#' Total pregnancy rate
#' for Cow
#' omit the unknown pregnant Cows
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
#'  = ((the_total_AI_rate / 100) * (the_total_coception_rate / 100)) * 100(%)
#'
#'
#'
#' @param DF Dataframe of the farms' reproduction data
#' @param VWP int Voluntary Waiting Period
#'
#' @return double total pregnancy rate(%)
#' @export
#'
#' @examples
#'  ttlpr <- ttlpr(DF, 50)
#'  ttlpr
#'
ttlpr <- function(DF, VWP){

  #Count the heads of pregnancy
  hsofpreg <- hsofpreg(DF)
  #Get the sum of cycles
  sofcycles <- sofcycles(DF, VWP)
  #Count the number of the unknown pregnancy cycle
  snofunkpr_cycles <- snofunkpr_cycles(DF, VWP)

  ttlpr <- (hsofpreg / (sofcycles - snofunkpr_cycles)) * 100

  #get the total AI rate
  #ttlair <- ttlair(DF, VWP)
  #get the total conception rate
  #ttlcr <- ttlcr(DF)
  #get the total pregnancy rate
  #ttlpr <- ((ttlair/100) * (ttlcr/100))*100

}

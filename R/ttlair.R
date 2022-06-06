#' Total AI rate
#'
#' (the_number_of_AIs -  the_number_of_unknown_pregnantCows'_AIs /
#'  (the_number_of_cycles - the_number_of_the_unknown_pregnanc_cycles ))*100 %
#'
#' @param DF Dataframe of the farms' reproduction data
#'
#' @return double total AI rate (%)
#' @export
#'
#' @examples
#' ttlAIR <- ttlair(DF)
#' ttlAIR
#'

ttlair <- function(DF){







  #Count the heads of pregnancy
  hsofpreg <- hsofpreg(DF)
  #Sum up the number of AItimes
  sofaitimes <- sofaitimes(DF)
  #Count the number of unknown pregnancy AI
  nofunkpr_ai <- nofunkpr_ai(DF)

  #calculate the total conception rate
  ttlair <- (hsofpreg / (sofaitimes - nofunkpr_ai)) * 100

}

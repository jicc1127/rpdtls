#' The pregnancy rate in the last 3 weeks
#' for Cows and Heifers
#'
#' (the_number_of_AIs -  the_number_of_unknown_pregnantCows'_AIs /
#'  (the_number_of_cycles -
#'             the_number_of_the_unknown_pregnant_Cow's_cycles ))*
#'  (the_number_of_pregnant_cows /
#'        (the_number_of_AIs -  the_number_of_unknown_pregnantCows'_AIs))*100 %
#'
#'  = (the_number_of_pregnant_cows_3wks) / (the_number_of_cycles_3wks -
#'             the_number_of_the_unknown_pregnant_Cow's_cycles_3wks ) * 100 %
#'
#'  = ((the_AI_rate_in_the_lst3wks / 100) *
#'            (the_coception_rate_in_the_lst3wks / 100)) * 100(%)
#'
#' @param DF Dataframe of the farms' reproduction data
#'
#' @return double pregnancy rate in the 3 weeks(%)
#' @export
#'
#' @examples
#'  pr_3wks <- pr_3wks(DF)
#'  pr_3wks
#'
pr_3wks <- function(DF){

  #Count the heads of pregnancy in the last 3 weeks
  hsofpreg <- hsofp_lst3wks(DF)
  #Get the sum of cycles inthe last 3 weeks
  sofcycles <- sofcycls_3wks(DF)
  #Count the number of the unknown pregnancy cycle in the last 3 weeks
  snofunkpr_cycles <- sofunkpcycls_3wks(DF)

  ttlprH <- (hsofpreg / (sofcycles - snofunkpr_cycles)) * 100

  #get the AI rate in the last 3 weeks
  #air_3wks <- air_3wks(DF)
  #get the conception rate in the last 3 weeks
  #cr_3wks <- cr_3wks(DF)
  #get the pregnancy rate in the last 3 weeks
  #pr_3wks <- ((air_3wks/100) * (cr_3wks/100))*100

}

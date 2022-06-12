#' Conception Rate in the last 3 weeks
#' for Cows and Heifers
#' (heads_of_pregnancy /
#'    (the_sum_of_AI -  the_sum_of_the_unknown_pregnant_AI))*100 %
#'    ...in_the_last_3weeks
#'
#' @param DF Dataframe of the farms' reproduction data
#'
#' @return double conception rate (%)
#' @export
#'
#' @examples
#' cr_3wks <- cr_3wks(DF)
#' cr_3wks
#'
cr_3wks <- function(DF){

  #Heads of pregnancy in the last 3 weeks
  hsofp_lst3wks <- hsofp_lst3wks(DF)

  #Sum of AItimes in the last 3 weeks
  sofai_lst3wks <- sofai_lst3wks(DF)
  #Sum of the unknown pregnant AI in the last 3 weeks
  sofunkp_ai_lst3wks <- sofunkp_ai_lst3wks(DF)

  #calculate the conception rate in the last 3 weeks
  cr_3wks <- (hsofp_lst3wks / (sofai_lst3wks - sofunkp_ai_lst3wks)) * 100

}

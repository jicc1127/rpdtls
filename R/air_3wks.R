#' The AI rate in the last 3 weeks
#' for Cows and Heifers
#'
#' ((the_sum_of_AI -  the_sum_of_the_unknown_pregnant_AI) /
#'  (the_number_of_cycles -
#'              the_number_of_the_unknown_pregnancy_cycles ))*100 %
#'  ..in_the_last_3weeks
#'
#'
#' @param DF Dataframe of the farms' reproduction data
#'
#' @return double  AI rate in the last 3 weeks(%)
#' @export
#'
#' @examples
#' air_3wks <- air_3wks(DF)
#' air_3wks
#'

air_3wks <- function(DF){

  #Sum of AItimes in the last 3 weeks
  sofai_lst3wks <- sofai_lst3wks(DF)
  #Sum of the unknown pregnant AI in the last 3 weeks
  sofunkp_ai_lst3wks <- sofunkp_ai_lst3wks(DF)
  #Sum of cycles in the last 3weeks
  sofcycls_3wks <- sofcycls_3wks(DF)
  #Sum of unknown pregnant cycles in the last 3 weeks
  sofunkpcycls_3wks <- sofunkpcycls_3wks(DF)

  #calculate the AI rate in the last 3 weeks
  air_3wks <- ((sofai_lst3wks - sofunkp_ai_lst3wks) /
                 (sofcycls_3wks - sofunkpcycls_3wks)) * 100

}

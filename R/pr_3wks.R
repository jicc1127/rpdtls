#' The pregnancy rate in the last 3 weeks
#'
#' ((the_AI_rate_in_the_lst3wks / 100) *
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

  #get the AI rate in the last 3 weeks
  air_3wks <- air_3wks(DF)
  #get the conception rate in the last 3 weeks
  cr_3wks <- cr_3wks(DF)
  #get the pregnancy rate in the last 3 weeks
  pr_3wks <- ((air_3wks/100) * (cr_3wks/100))*100

}

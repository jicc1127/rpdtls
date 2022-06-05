#' The_days_of_opencow - VWP devide by 21
#'
#' @param DF Dataframe of the farms' reproduction data
#' @param VWP Voluntary Waiting Period
#' @param i rowNo
#'
#' @return quotient_21
#' @export
#'
#' @examples
#' quotient_10 <- quotient_21(DF, 50, 10 )
#' print("quotient_10")
#' print("Group 1")
#' quotient_40 <- quotient_21(DF, 50, 40 )
#' print("quotient_40")
#' print("Group 4")
#' quotient_80 <- quotient_21(DF, 50, 80 )
#' print("quotient_80")
#' print("Group 5")
#'
quotient_21 <- function(DF, VWP, i){

  daysofOC <- DF[i, 17]  #get the days of open cow

  intdofOC<- as.numeric(daysofOC, units="days")

  quotient_21 <- (intdofOC - VWP) %/% 21
}

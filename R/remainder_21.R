#' Get the remainder of which The_days_of_opencow - VWP devide by 21
#'
#' @param DF Dataframe of the farms' reproduction data
#' @param VWP Voluntary Waiting Period
#' @param i rowNo
#'
#' @return remainder_21
#' @export
#'
#' @examples
#' remainder_10 <- remainder_21(DF, 50, 10 )
#' remainder_10
#' print("Group 1")
#' remainder_40 <- remainder_21(DF, 50, 40 )
#' remainder_40
#' print("Group 4")
#' remainder_80 <- remainder_21(DF, 50, 80 )
#' remainder_80
#' print("Group 5")
#'
remainder_21 <- function(DF, VWP, i){

  daysofOC <- DF[i, 17]  #get the days of open cow

  intdofOC<- as.numeric(daysofOC, units="days")

  remainder_21 <- (intdofOC - VWP) %% 21
}

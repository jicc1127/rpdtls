#' The_days_of_opencow - VWP devide by 21 for Heifer
#'
#' @param DFH Dataframe of the farms' reproduction data
#' @param VWP int Voluntary Waiting Period (months)
#' @param i rowNo
#'
#' @return int quotient_21H
#' @export
#'
#' @examples
#' quotient_5 <- quotient_21H(DFH, 13, 5 )
#' quotient_5
#' print("Group 1")
#' quotient_20 <- quotient_21H(DFH, 13, 20 )
#' quotient_20
#'
#' print("Group 4")
#' quotient_30 <- quotient_21H(DFH, 13, 30 )
#' quotient_30
#' print("Group 5")
#'
quotient_21H <- function(DFH, VWP, i){

  VWP <- VWP*30 #change months to days
  OHM <- DFH[i, 17]  #get open heifer in month
  OHM <- OHM*30 #change months to days
  #OHM <- as.numeric(OHM) #, units="days"
  OHM <- OHM[[1]]
  quotient_21H <- (OHM - VWP) %/% 21

}

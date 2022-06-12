#' Get the remainder of which The_days_of_openheifer - VWP devide by 21
#'
#' @param DFH Dataframe of the farms' reproduction data
#' @param VWP int Voluntary Waiting Period (months)
#' @param i rowNo
#'
#' @return int remainder_21H
#' @export
#'
#' @examples
#' remainder_5 <- remainder_21H(DFH, 13, 5 )
#' remainder_5
#' print("Group 1")
#' remainder_20 <- remainder_21H(DFH, 13, 20 )
#' remainder_20
#' print("Group 4")
#' remainder_30 <- remainder_21H(DFH, 13, 30 )
#' remainder_30
#' print("Group 5")
#'
remainder_21H <- function(DFH, VWP, i){

  VWP <- VWP*30 #change months to days
  OHM <- DFH[i, 17]  #get open heifer in month
  OHD <- OHM*30 #change months to days : open heifer in day
  #OHM <- as.numeric(OHM) #, units="days"
  OHD <- OHD[[1]]
  remainder_21H <- (OHD - VWP) %% 21

}

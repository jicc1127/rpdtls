#' JMR
#' for Heifer
#' @param DFH Dataframe of the farms' reproduction data
#' @param VWP int Voluntary Waiting Period (months)
#'
#' @return double JMR
#' @export
#'
#' @examples
#' jmrH <- jmrH(DFH,13)
#' jmrH
#'
jmrH <- function(DFH, VWP){

  VWP <- VWP*30 #change months to days
  nofhd <- nofhd(DFH) #get the number of head for breeding

  #the default of the sum of all Heifers' jmr value
  sjmr <- 0

  for(i in 1:nrow(DFH)){
    Group <- DFH[i,2]   #get the value of column"Group"

    if(Group == 4){
      jmr <-  as.numeric((DFH[i, 14] - DFH[i, 7]), units = "days") - VWP
      #lastAI_date - birthday - VWP
    }else if((Group == 2) || (Group == 3)){
      jmr <-  as.numeric((DFH[i, 18] - DFH[i, 7]), units = "days") - VWP
      #base_date - birthday - VWP
    }else{
      jmr <- 0
    }

    sjmr <- sjmr + jmr
  }

  #the value of this farm's JMR
  jmrH <- sjmr / nofhd

}

#' Count the number of the unknown pregnancy cycle for Heifer
#' for Heifer
#'This return is the total of unknown pregnant Heifers' cycles
#'
#' @param DFH Dataframe of the farms' reproduction data
#' @param VWP Voluntary Waiting Period (months)
#'
#' @return the total number of the unknown pregnant heifers' cycles
#' @export
#'
#' @examples
#' snofunkpr_cyclesH <- snofunkpr_cyclesH(DFH, 13)
#' snofunkpr_cyclesH


snofunkpr_cyclesH <- function(DFH, VWP){

  #default of snofunkpr_cycles(the number of unknown pregnancy cycles)
  snofunkpr_cycles = 0
  for(i in 1:nrow(DFH)){
    Group <- DFH[i,2]   #get the value of the column "Group"

    quotient <- quotient_21H(DFH, VWP, i ) #get the quotient of the row i
    if (quotient >= 0){
      nofcycle = quotient + 1
    }else{
      nofcycle = 0
    }

    if(Group == 4){
      unkpr <- 1        #unknown pregnancy
    }else{
      unkpr <- 0        #pregnant or nonpregnant
    }
    snofunkpr_cycles <- snofunkpr_cycles + nofcycle*unkpr
  }
  snofunkpr_cycles <- as.numeric(snofunkpr_cycles)
}

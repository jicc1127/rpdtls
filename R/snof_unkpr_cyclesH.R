#' Count the number of the unknown pregnancy cycle for Heifer
#'
#'This return is the number of the unknown pregnancy cycle
#'
#' @param DFH Dataframe of the farms' reproduction data
#'
#' @return  int the total number of the unknown pregnant heifers' cycles
#' @export
#'
#' @examples
#' snof_unkpr_cyclesH <- snof_unkpr_cyclesH(DFH)
#' snof_unkpr_cyclesH


snof_unkpr_cyclesH <- function(DFH){

  #default of snof_unkpr_cycles(the number of unknown pregnancy cycles)
  snof_unkpr_cycles = 0
  for(i in 1:nrow(DFH)){
    Group <- DFH[i,2]   #get the value of the column "Group"

    #quotient <- quotient_21(DF, VWP, i ) #get the quotient of the row i
    #if (quotient >= 0){
    #  nofcycle = quotient + 1
    #}else{
    #  nofcycle = 0
    #}

    if(Group == 4){     #Group 4 : unknown pregnancy
      unkpr <- 1        #unknown pregnancy
    }else{
      unkpr <- 0        #pregnant or nonpregnant
    }
    snof_unkpr_cycles <- snof_unkpr_cycles + unkpr
  }
  snof_unkpr_cycles <- as.numeric(snof_unkpr_cycles)
}

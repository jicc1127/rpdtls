#' Count the number of the unknown pregnancy cycle
#' for Cow
#'This return is the total of unknown pregnant Cows' cycles
#'
#' @param DF Dataframe of the farms' reproduction data
#' @param VWP Voluntary Waiting Period
#'
#' @return the total number of the unknown pregnant cows' cycles
#' @export
#'
#' @examples
#' snofunkpr_cycles <- snofunkpr_cycles(DF, 50)
#' snofunkpr_cycles


snofunkpr_cycles <- function(DF, VWP){

  #default of snofunkpr_cycles(the number of unknown pregnancy cycles)
  snofunkpr_cycles = 0
  for(i in 1:nrow(DF)){
    Group <- DF[i,2]   #get the value of the column "Group"

    quotient <- quotient_21(DF, VWP, i ) #get the quotient of the row i
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

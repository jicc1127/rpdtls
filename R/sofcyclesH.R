#' Get the sum of cycles for Heifer
#' for Heifer
#' @param DFH A Dataframe of the farms' reproduction data
#' @param VWP Voluntary Waiting Period (months)
#'
#' @return the sum of cycles
#' @export
#'
#' @examples
#'
#' sofcyclesH <- sofcyclesH(DFH, 13)
#' sofcyclesH
#'
sofcyclesH <- function(DFH, VWP){
  #browser()
  #default of sofcycles(sum of cycles)
  sofcycles = 0
  for(i in 1:nrow(DFH)){
    #get the quotient of the row i
    quotient <- quotient_21H(DFH, VWP, i )
    if (quotient >= 0){
      cycle = quotient + 1
    }else{
      cycle = 0
    }
    sofcycles = sofcycles + cycle

  }
  sofcycles
}

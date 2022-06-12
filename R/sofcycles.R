#' Get the sum of cycles
#' for Cow
#' @param DF A Dataframe of the farms' reproduction data
#' @param VWP Voluntary Waiting Period
#'
#' @return the sum of cycles
#' @export
#'
#' @examples
#'
#' sofcycles <- sofcycles(DF, 50)
#' sofcycles
#'
sofcycles <- function(DF, VWP){
  #browser()
  #default of sofcycles(sum of cycles)
  sofcycles = 0
  for(i in 1:nrow(DF)){
    #get the quotient of the row i
    quotient <- quotient_21(DF, VWP, i )
    if (quotient >= 0){
      cycle = quotient + 1
    }else{
      cycle = 0
    }
    sofcycles = sofcycles + cycle

  }
  sofcycles
}

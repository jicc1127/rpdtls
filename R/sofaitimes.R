#' Sum up the number of column"AItimes"
#' for Cow and Heifer
#' @param DF Dataframe of the farms' reproduction data
#'
#' @return integer
#' @export
#'
#' @examples
#' sofaitimes <- sofaitimes(DF)
#' sofaitimes


sofaitimes <- function(DF){

  #default of sofaitimes(sum of AItimes)
  sofaitimes = 0
  #browser()
  for(i in 1:nrow(DF)){
    aitimes <- DF[i,11]  #get the value of the column "AItimes"
    sofaitimes <- sofaitimes + aitimes
  }
  sofaitimes <- as.numeric(sofaitimes)
}

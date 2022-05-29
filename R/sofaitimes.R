#' Sum up the number of column"AItimes"
#'
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
    aitimes <- DF[i,11]  #授精回数を取り出す
    sofaitimes <- sofaitimes + aitimes
  }
  sofaitimes <- as.numeric(sofaitimes)
}

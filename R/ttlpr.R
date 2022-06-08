#' Total pregnancy rate
#'
#' omit the unknown pregnant Cows
#'
#' ((the_total_AI_rate / 100) * (the_total_coception_rate / 100)) * 100(%)
#'
#' @param DF Dataframe of the farms' reproduction data
#' @param VWP int Voluntary Waiting Period
#'
#' @return double total pregnancy rate(%)
#' @export
#'
#' @examples
#'  ttlpr <- ttlpr(DF, 50)
#'  ttlpr
#'
ttlpr <- function(DF, VWP){

  #get the total AI rate
  ttlair <- ttlair(DF, VWP)
  #get the total conception rate
  ttlcr <- ttlcr(DF)
  #get the total pregnancy rate
  ttlpr <- ((ttlair/100) * (ttlcr/100))*100

}

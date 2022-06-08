#' Total pregnancy rate
#'
#' omit the unknown pregnant Cows' AI and cycle
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
ttl_pr <- function(DF, VWP){

  #get the total AI rate
  ttl_air <- ttl_air(DF, VWP)
  #get the total conception rate
  ttl_cr <- ttl_cr(DF)
  #get the total pregnancy rate
  ttl_pr <- ((ttl_air/100) * (ttl_cr/100))*100

}

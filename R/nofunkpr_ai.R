#' Count the number of the unknown pregnancy AI
#'
#'This return is the total of unknown pregnant Cows' AItimes
#'
#' @param DF Dataframe of the farms' reproduction data
#'
#' @return integer
#' @export
#'
#' @examples
#' nofunkpr_ai <- nofunkpr_ai(DF)
#' nofunkpr_ai


nofunkpr_ai <- function(DF){

  #default of nofunkpr_ai(the number of unknown pregnancy AItimes)
  nofunkpr_ai = 0
  for(i in 1:nrow(DF)){
    AItimes <- DF[i,11]  #get the value of AItimes
    Group <- DF[i,2]   #get the value of Group
    if(Group == 4){
      unkpr <- 1        #unknown pregnancy
    }else{
      unkpr <- 0        #pregnant or nonpregnant
    }
    nofunkpr_ai <- nofunkpr_ai + AItimes*unkpr
  }
  nofunkpr_ai <- as.numeric(nofunkpr_ai)
}

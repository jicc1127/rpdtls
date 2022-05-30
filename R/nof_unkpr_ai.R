#' Count the number of unknown pregnancy AI
#'
#' This return is the number of the nonpregnant AI
#'
#' @param DF Dataframe of the farms' reproduction data
#'
#' @return integer
#' @export
#'
#' @examples
#' nof_unkpr_ai <- nof_unkpr_ai(DF)
#' nof_unkpr_ai


nof_unkpr_ai <- function(DF){

  #default of nof_unkpr_ai(the number of unknown pregnancy AItimes)
  nof_unkpr_ai = 0
  for(i in 1:nrow(DF)){
    #AItimes <- DF[i,11]  #get the value of AItimes
    Group <- DF[i,2]   #get the value of Group
    if(Group == 4){
      unkpr <- 1        #unknown pregnancy
    }else{
      unkpr <- 0        #pregnant or nonpregnant
    }
    nof_unkpr_ai <- nof_unkpr_ai + unkpr
  }
  nof_unkpr_ai <- as.numeric(nof_unkpr_ai)
}

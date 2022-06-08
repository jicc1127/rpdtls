#' JMR
#'
#' @param DF Dataframe of the farms' reproduction data
#' @param VWP int Voluntary Waiting Period
#'
#' @return
#' @export
#'
#' @examples
#' jmr(DF,50)
#' jmr
#'
jmr <- function(DF, VWP){

  #the default of the sum of all Cows' jmr value
  sjmr <- 0
  for(i in 1:nrow(DF)){
    Group <- DF[i,2]   #get the value of column"Group"

    if(Group == 4){
      jmr =  as.numeric((DF[i, 14] - DF[i, 9]), units = "days") - VWP
      #lastAI_date - calving_date - VWP
    }else if((Group == 2) || (Group == 3)){
      jmr =  as.numeric((DF[i, 18] - DF[i, 9]), units = "days") - VWP
      #base_date - calving_date - VWP
    }else{
      jmr = 0
    }

    sjmr <- sjmr + jmr
  }

  #get the heads of this Farm
  hsofcows <- nrow(DF)
  #the value of this farm's JMR
  jmr <- sjmr / hsofcows

}

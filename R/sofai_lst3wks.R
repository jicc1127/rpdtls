#' Sum of AItimes in the last 3 weeks
#'
#' @param DF Dataframe of the farms' reproduction data
#'
#' @return int AItimes
#' @export
#'
#' @examples
#' sofai_lst3wks <- sofai_lst3wks(DF)
#' sofai_lst3wks
#'
sofai_lst3wks <- function(DF){

  #the default of sofai_lst3wks(the sum of AItimes in the last 3weeks)
  sofai_lst3wks = 0
  for(i in 1:nrow(DF)){
    daysfrmlstAI <- DF[i, 15]    #get the days from the last AI
    if(is.na(daysfrmlstAI)){ #is.na(daysfrmlstAI) = TRUE if Non
      #nothing
    }else if(daysfrmlstAI <= 21){
      sofai_lst3wks = sofai_lst3wks + 1
    }else{
      #nothing
    }

  }
  sofai_lst3wks  #the sum of AItimes in the last 3weeks

}

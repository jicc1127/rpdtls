#' Sum of the unknown pregnant AI in the last 3 weeks
#' for Cows and Heifers
#'
#' @param DF Dataframe of the farms' reproduction data
#'
#' @return int AItimes in the last 3 weeks
#' @export
#'
#' @examples
#' sofunkp_ai_lst3wks <- sofunkp_ai_lst3wks(DF)
#' sofunkp_ai_lst3wks
#'
sofunkp_ai_lst3wks<- function(DF){

  #the default of sofunkp_ai_lst3wks
  #(the sum of unknown pregnant AI in the last 3weeks)
  sofunkp_ai_lst3wks = 0
  for(i in 1:nrow(DF)){
    daysfrmlstAI <- DF[i, 15]    #get the days from the last AI
    if(is.na(daysfrmlstAI)){ #is.na(daysfrmlstAI) = TRUE...if Non
      #何もしない
    }else if(daysfrmlstAI < 21){
      Group <- DF[i,2]   #get the number of the column"Group"
      if(Group==4){   #unknown pregnancy
        sofunkp_ai_lst3wks = sofunkp_ai_lst3wks + 1
      }else{    #@pregnant(5) or non pregnant(1,2,3)
        #nothing
      }

    }else{
      #nothing
    }

  }
  sofunkp_ai_lst3wks #the sum of unknown pregnant AI in the last 3 weeks
}

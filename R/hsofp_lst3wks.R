#' Heads of pregnancy in the last 3 weeks
#'
#' @param DF Dataframe of the farms' reproduction data
#'
#' @return int heads of pregnancy
#' @export
#'
#' @examples
#'  hsofp_lst3wks <- hsofp_lst3wks(DF)
#'  hsofp_lst3wks
#'
hsofp_lst3wks <- function(DF){

  #the default of heofp_lst3wks(heads of pregnancy the last 3weeks)
  hsofp_lst3wks = 0
  for(i in 1:nrow(DF)){
    daysfrmlstAI <- DF[i, 15]    #get the days from the last AI
    if(is.na(daysfrmlstAI)){ #is.na(daysfrmlstAI) = TRUE...if Non
      #nothing
    }else if(daysfrmlstAI <= 21){
      Group <- DF[i,2]   #get the value of column "Group"
      if(Group==5){   #pregnant(5)
        hsofp_lst3wks = hsofp_lst3wks + 1
      }else{    #unknoun pregnant(4) or nonpregnant(1,2,3)
        #nothing
      }

    }else{
      #nothing
    }

  }
  hsofp_lst3wks  #heads of pregnancy in the last 3 weeks
}

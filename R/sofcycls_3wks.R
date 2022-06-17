#' The sum of cycles in the last 3weeks
#' for Cows and Heifers
#'
#' @param DF Dataframe of the farms' reproduction data
#'
#' @return int the sum of cycles in the last 3weeks
#' @export
#'
#' @examples
#' sofcycls_3wks <- sofcycls_3wks(DF)
#' sofcycls_3wks
#'
sofcycls_3wks <- function(DF){

  #the default of sofcycls_3wks(the sum of cycles in the last 3weeks)
  sofcycls_3wks = 0
  #browser()
  for(i in 1:nrow(DF)){
    Group <- DF[i,2]   #get the value of column"Group"

    if(Group == 1){ #voluntary waiting
      cycls_3wks <- 0
    }else if(Group == 2 || Group == 3){   #AI waiting(2,3)
      cycls_3wks <- 1
    }else if(Group == 4){          #pregnancy diagnosis waiting(4)
      cycls_3wks <- 1 #*
      # 1)daysfrmlstAI(the days from the last AI)< 21
      #  -> Cycls3ws = 1 and NofAIs3wks = 1
      # 2)daysfrmlstAI                           >= 21
      #  -> PT- -> Cycls3ws = 1 and NofAIS3wks = 0
      #     PT+ -> Cycls3ws = 0
      #     This case is cycls_3wks = 1(#*),
      #     but this value is offset by unkpcycls_3wks
      #     (subtract unknown_pregnancy_cycle_3wks =1 )

    }else if(Group == 5 || Group == 6){
      daysfrmlstAI <- DF[i,15]  #get the days from the last AI
      if (daysfrmlstAI < 21){
        cycls_3wks <- 1  #NofAIs3wks = 1
      }else{
        cycls_3wks <- 0
      }
    }else{
        cycls_3wks <- 0
    }
    sofcycls_3wks <- sofcycls_3wks + cycls_3wks
  }
  sofcycls_3wks
}

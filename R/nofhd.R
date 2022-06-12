#' The number of head
#' for Cow and Heifer
#' DF needs to have only breeding cows or heifers(Group 1 _ 6)
#'
#' @param DF Dataframe of the farms' reproduction data
#'
#' @return int The number of head
#' @export
#'
#' @examples
#' nofhd <- nofhd(DF)
#' nofhd
#'
nofhd <- function(DF){

  #default of nofhd (The number of head)
  nofhd <- 0
  for(i in 1:nrow(DF)){
    Group <- DF[i, 2]  #get the value of the column "Group"
    if(Group >= 1 && Group <= 6){ #breeding cows or heifers
      nofhd <- nofhd + 1
    }else{
      nofhd <- nofhd
    }
  }
  nofhd
}

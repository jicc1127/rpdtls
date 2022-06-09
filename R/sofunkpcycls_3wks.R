#' The sum of unknown pregnant cycles in the last 3 weeks
#'
#' @param DF Dataframe of the farms' reproduction data
#'
#' @return int the sum of unknown pregnant cycles in the last 3 weeks
#'
#' @export
#'
#' @examples
#' sofunkpcycls_3wks <- sofunkpcycls_3wks(DF)
#' sofunkpcycls_3wks
#'
sofunkpcycls_3wks <- function(DF){

  #the default of sofunkpcycls_3wks(the sum of
  #        unknown pregnant cycles in the last 3weeks)
  sofunkpcycls_3wks = 0
  for(i in 1:nrow(DF)){
    Group <- DF[i,2]   #get the value of column"Group"
    if(Group==4){   #if unknown pregnant
      sofunkpcycls_3wks = sofunkpcycls_3wks + 1
    }else{    #if pregnant(5,6) or nonpregnant(1,2,3)
      #nothing
    }

  }

  sofunkpcycls_3wks
  #the sum of unknown pregnant cycles in the last 3weeks

}

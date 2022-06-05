#' Count the heads of pregnancy
#'
#' @param DF Dataframe of the farms' reproduction data
#'
#' @return integer
#' @export
#'
#' @examples
#' DF
#' hsofpreg <- hsofpreg(DF)
#' hsofpreg


hsofpreg <- function(DF){
 #default of hsofpreg（hheads of pregnancy)
  #browser()
  hsofpreg = 0
 for(i in 1:nrow(DF)){
    Group <- DF[i,2]   #get the value of Group
    if(Group <= 4){
      preg <- 0        #pregnancy -
    }else{
      preg <- 1        #pregnancy +
    }
    hsofpreg <- hsofpreg + preg
  }
  hsofpreg
}

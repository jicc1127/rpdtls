#' Count the heads of pregnancy
#' for Cows and Heifers
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
#' hsofpregH <- hsofpreg(DFH)
#' hsofpregH

hsofpreg <- function(DF){
 #default of hsofpreg（hheads of pregnancy)
  #browser()
  hsofpreg = 0
 for(i in 1:nrow(DF)){
    Group <- DF[i,2]   #get the value of Group
    if(Group == 5 || Group == 6){ #pregnant or dry
      preg <- 1        #pregnancy +
    }else{
      preg <- 0        #pregnancy - or not for breeding
    }
    hsofpreg <- hsofpreg + preg
  }
  hsofpreg
}

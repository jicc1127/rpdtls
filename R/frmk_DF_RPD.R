
frmk_DF_RPD <- function(csvfile){
  library(tidyverse)
  read_csv( csvfile,
            col_types = list(col_integer(),  #LineNo
                             col_integer(),  #Group
                             col_character(),  #Stage
                             col_integer(),  #cowCode
                             col_character(),  #cowGroup
                             col_character(),  #cowidNo
                             col_date( format = "%Y/%m/%d" ), #birthday
                             col_integer(),  #parity
                             col_date( format = "%Y/%m/%d" ), #calving_date
                             col_integer(),  #daysfrmcalving
                             col_integer(),  #AItimes
                             col_date( format = "%Y/%m/%d" ), #firstAI_date
                             col_integer(),  #fstAIdaysfrmcalving
                             col_date( format = "%Y/%m/%d" ), #lastAI_date
                             col_integer(),  #daysfrmlstAI
                             col_date( format = "%Y/%m/%d" ), #expDateofnextCalving
                             col_integer(),  #opendays
                             col_date( format = "%Y/%m/%d" ))) #base_date
  
}

#DF <- frmk_DF_RPD("D:/rpdtls/csv/MH_20220313Cow00.csv")
#str(DF)
#head(DF)
#view(DF)

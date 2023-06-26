## code to prepare `DATASET` dataset goes here
library(tidyverse)
#library(readr)

DF <- readr::read_csv( "data-raw/20230212Cow01.csv",
                       col_types = list(vroom::col_integer(),
                                        #LineNo
                                        vroom::col_integer(),
                                        #Group
                                        vroom::col_character(),
                                        #Stage
                                        vroom::col_integer(),
                                        #cowCode
                                        vroom::col_character(),
                                        #cowGroup
                                        vroom::col_character(),
                                        #cowidNo
                                        vroom::col_date( format = "%Y/%m/%d" ),
                                        #birthday
                                        vroom::col_integer(),  #parity
                                        vroom::col_date( format = "%Y/%m/%d" ),
                                        #calving_date
                                        vroom::col_integer(),  #daysfrmcalving
                                        vroom::col_integer(),  #AItimes
                                        vroom::col_date( format = "%Y/%m/%d" ),
                                        #firstAI_date
                                        vroom::col_integer(),
                                        #fstAIdaysfrmcalving
                                        vroom::col_date( format = "%Y/%m/%d" ),
                                        #lastAI_date
                                        vroom::col_integer(),  #daysfrmlstAI
                                        vroom::col_date( format = "%Y/%m/%d" ),
                                        #expDateofnextCalving
                                        vroom::col_integer(),
                                        #opendays
                                        vroom::col_date( format = "%Y/%m/%d" )))
                                        #base_date

usethis::use_data(DF, overwrite = TRUE)

## code to prepare `DATASET` dataset goes here
library(tidyverse)
library(readr)
#Source: D:\csv\MH_20220313Heifer00.csv

DFH <- readr::read_csv( "data-raw/MH_20220313Heifer00.csv",
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
                                        vroom::col_integer(),
                                        #age_in_day
                                        vroom::col_double(),  #age_in_month
                                        vroom::col_integer(),  #AItimes
                                        vroom::col_date( format = "%Y/%m/%d" ),
                                        #firstAI_date
                                        vroom::col_double(),
                                        #fstAI_age_in_month
                                        vroom::col_date( format = "%Y/%m/%d" ),
                                        #lastAI_date
                                        vroom::col_integer(),  #daysfrmlstAI
                                        vroom::col_date( format = "%Y/%m/%d" ),
                                        #expDateofnextCalving
                                        vroom::col_double(),
                                        #openmonths : open cow in month
                                        vroom::col_date( format = "%Y/%m/%d" )))
                                        #base_date

usethis::use_data(DFH, overwrite = TRUE)

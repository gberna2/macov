#libraries
library(tidyverse)
library(readxl)
library(lubridate)

# set working directory
setwd("/Users/gilbernard/Desktop/R files/ma covid/covid-19-dashboard_11-11-2020")
getwd()
#list files
list.files("/Users/gilbernard/Desktop/R files/ma covid/covid-19-dashboard_11-11-2020")

#read in files
cases<- read.csv("/Users/gilbernard/Desktop/R files/ma covid/covid-19-dashboard_11-11-2020/Cases.csv")

view(cases)


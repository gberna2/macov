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
hospitalizations<- read_xlsx("/Users/gilbernard/Desktop/R files/ma covid/covid-19-dashboard_11-11-2020/Hospitalization from Hospitals.xlsx")
deathsreported<- read.csv("/Users/gilbernard/Desktop/R files/ma covid/covid-19-dashboard_11-11-2020/DeathsReported.csv")

#hospitalizations
hos<- hospitalizations%>%
    rename("total_in_hospital"= `Total number of confirmed COVID patients in hospital today`, "net new"= `Net new number of confirmed COVID patients in hospital today`)%>%
    filter(as.Date(Date)>"2020-06-01")

attach(hos)

ggplot(hos, aes(Date))+
    geom_line(aes(y=total_in_hospital))+
    geom_line(aes(y=`Confirmed ICU`), color="red")+
    theme_classic()+
    xlab(label = "Date")+
    ylab(element_blank())+
    labs(title = "hospitalizations and ICU")

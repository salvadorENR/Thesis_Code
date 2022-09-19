install.packages("nlme")
library(nlme)

#***** EXAMPLE **********************************
library(foreign) 
chp10<-read.dta("els2002.dta") 
chp10 <- chp10[!is.na(chp10$mathach)&!is.na(chp10$efficacy)&!is.na(chp10$public)&!is.na(chp10$sclimate),] 
chp10$csclimat <- chp10$sclimate-mean(chp10$sclimate, na.rm=TRUE)
chp10$gceffic <- chp10$efficacy-mean(chp10$efficacy, na.rm=TRUE)
attach(chp10)
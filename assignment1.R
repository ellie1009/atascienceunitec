working_directory <- "C:/Users/ellie/Desktop/DataScience/Assignment Part A-20180805/"


#Part1
setwd(working_directory)
source("pollutantmean.R")
pollutantmean("specdata", "sulfate", 5:10)

setwd(working_directory)
source("pollutantmean.R")
pollutantmean("specdata", "nitrate", 23)


#Part2
setwd(working_directory)
source("complete.R")
complete("specdata", 5:34)


#Part3
setwd(working_directory)
source("corr.R")
cr<-corr("specdata", 500)
cr


#Part4
setwd(working_directory)
source("pollutantvector.R")
pollutantvector("specdata", "sulfate",1:35, 10)


#Part5
setwd(working_directory)
source("calculator.R")
calculator()



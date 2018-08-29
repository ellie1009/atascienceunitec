working_directory <- "C:/Users/ellie/Desktop/DataScience/Assignment Part A-20180805/"


#Part1
setwd(working_directory)
source("pollutantmean.R")
pollutantmean("specdata", "sulfate", 1:10)

setwd(working_directory)
source("pollutantmean.R")
pollutantmean("specdata", "nitrate", 23)


#Part2
setwd(working_directory)
source("complete.R")
complete("specdata", 1)

setwd(working_directory)
source("complete.R")
complete("specdata", 30:25)


#Part3
setwd(working_directory)
source("corr.R")
cr<-corr("specdata", 150)
cr


#Part4
setwd(working_directory)
source("pollutantvector.R")
pollutantvector("specdata", "sulfate",1:35, 0.5)


#Part5
setwd(working_directory)
source("calculator.R")
calculator()



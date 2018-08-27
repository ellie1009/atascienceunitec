complete <- function(directory, id=1:332){
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
  
  #set the working directory
  setwd(directory)
  
  # Create an empty data frame with column names
  complete_cases <- data.frame( "id" = integer(0), "nobs" = integer(0))
  
  for(i in id)
  {
    #open file 
    #formatC function is used for converting integer to string with '0' ex) 1 -> 001
    filename <- formatC(i, width = 3, format = "d", flag = "0")
    #paste0 is used for making csv file ex) 001 -> 001.csv
    new_monitor <- read.csv(paste0(filename,".csv"))
    
    #add a new list to data frame
    complete_cases[nrow(complete_cases) + 1,] <- list(i, sum(complete.cases(new_monitor)))

  }
  complete_cases
}
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
  ## number of domplete cases
  
  setwd(directory)
  
  # Create an empty data frame with column names
  df <- data.frame( "id" = integer(0), "nobs" = integer(0))
  
  
  for(i in id)
  {
    #open file
    f <- read.csv(paste0(formatC(i, width = 3, format = "d", flag = "0"),".csv"))
    
    
    df[i,] <- list(i, sum(complete.cases(f)))
    
  }
  
  df
}
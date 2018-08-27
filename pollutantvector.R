pollutantvector <- function(directory, pollutant, id=1:332, p){
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## 'p' is pollutant baseline
  
  ## Return a vector of pollutant values which are greater than p

  #set the working directory
  setwd(directory)
  
  # Create an empty vector for pollutant vector(pv)
  pollutant_vector <- numeric(0)
  
  for(i in id)
  {
    #open file 
    #formatC function is used for converting integer to string with '0' ex) 1 -> 001
    filename <- formatC(i, width = 3, format = "d", flag = "0")
    #paste0 is used for making csv file ex) 001 -> 001.csv
    new_monitor <- read.csv(paste0(filename,".csv"))
    
    #according to pullutant input value, define column which will be anlaysed
    if(pollutant == "sulfate")
      pollutant_column <- new_monitor$sulfate
    else if(pullutant == "nitrate")
      pollutant_column <- new_monitor$nitrate
   
    #check the pollutant's value is greater than 'p'
    p_check <- pollutant_column > p
    checked_column <- pollutant_column[p_check]
    
    #remove NA value and add elements to return value(pollutant_vector)
    na_check <- is.na(checked_column) 
    pollutant_vector <- c(pollutant_vector, checked_column[!na_check])
  }
  pollutant_vector
}
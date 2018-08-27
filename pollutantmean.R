pollutantmean <- function(directory, pollutant, id=1:332){
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  ## NOTE: Do not round the result!
  
  #set the working directory
  setwd(directory)
  
  # Create an empty data frame 
  total <- data.frame()
  
  for(i in id)
  {
    #open file 
    #formatC function is used for converting integer to string with '0' ex) 1 -> 001
    filename <- formatC(i, width = 3, format = "d", flag = "0")
    #paste0 is used for making csv file ex) 001 -> 001.csv
    new_monitor <- read.csv(paste0(filename,".csv"))

    total <- rbind(total, new_monitor)
  }
  
  #return the mean of the pollutant according to pollutant input value
  if(pollutant == "sulfate")
    mean(total$sulfate, na.rm = TRUE)
  else if(pollutant == "nitrate")
    mean(total$nitrate, na.rm = TRUE)
}
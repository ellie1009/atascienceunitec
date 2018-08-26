pollutantvector <- function(directory, pollutant, id=1:332, p){
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## 'p'
  
  ## Return a vector of 

  setwd(directory)
  
  # Create an empty vector
  pv = c()
  
  for(i in id)
  {
    #open file
    f <- read.csv(paste0(formatC(i, width = 3, format = "d", flag = "0"),".csv"))
    
    if(pollutant == "sulfate")
    {
      a <- f$sulfate >= p
      pv[length(pv)+1] <- f$sulfate[a]
      
    }
    else if(pullutant == "nitrate")
    {
      a <- f$nitrate >= p
      pv[length(pv)+1] <- f$nitrate[a]
    }
  }
  pv
}
corr <- function(directory, threshold = 0){
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations
  ## NOTE: Do not round the result!
  
  #set the working directory
  setwd(directory)
  
  # Create an empty vector
  correlations = numeric(0)
  
  for(i in 1:332)
  {
    #open file 
    #formatC function is used for converting integer to string with '0' ex) 1 -> 001
    filename <- formatC(i, width = 3, format = "d", flag = "0")
    #paste0 is used for making csv file ex) 001 -> 001.csv
    new_monitor <- read.csv(paste0(filename,".csv"))
  
    if (sum(complete.cases(new_monitor)) >= threshold)
    {
      x <- new_monitor$sulfate
      y <- new_monitor$nitrate
    
      #correlations[i] <- cor(x,y, use = "complete.obs")
      
      correlations[length(correlations)+1] <- cor(x,y, use = "complete.obs")
    }
  }
  
  #return a numeric vector of correlations
  correlations
}
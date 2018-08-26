corr <- function(directory, threshold = 0){
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations
  ## NOTE: Do not round the result!
  
  setwd(directory)
  
  # Create an empty vector
  correlations = numeric()
  
  for(i in 1:332)
  {
    #open file
    f <- read.csv(paste0(formatC(i, width = 3, format = "d", flag = "0"),".csv"))
  
    if (sum(complete.cases(f)) >= threshold)
    {
      x <- f$sulfate
      y <- f$nitrate
    
      correlations[i] <- cor(x,y, use = "complete.obs")
    }
  }
  
  #return a numeric vector of correlations
  correlations
}
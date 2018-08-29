calculator <- function(){
  print("******Simple R Calculator - Select operation : ******")
  print("1.Add")
  print("2.Subtract")
  print("3.Multiply")
  print("4.Divide")
  print("5.Factors")
  print("6.Prime")
  
  #prompting the user to select an operation
  choice <- as.integer(readline("Enter choice [1/2/3/4/5/6]: "))
  
  if(is.integer(choice))
  {
    #operation 1 to 4 need 2 input numbers
    if(choice >= 1 && choice <= 4)
    {
      #fn is first number
      fn <- as.integer(readline("Enter first number: "))
      #sn is second number
      sn <- as.integer(readline("Enter second number: "))
      
      #1. Add the first input number and second number
      if(choice == 1)
      {
        print(paste(fn," + ",sn," = ",fn + sn))
      }
      #2. Subtract the second number from first number
      else if(choice == 2)
      {
        print(paste(fn," - ",sn," = ",fn - sn))
      }
      #3. Multiply the first input number and second number
      else if(choice == 3)
      {
        print(paste(fn," * ",sn," = ",fn * sn))
      }
      #4. Divide the first number by second number
      else
      {
        print(paste(fn," / ",sn," = ",fn / sn))
      }
    }
    #5. Factors of an input number 
    else if(choice == 5)
    {
      number <- as.integer(readline("Enter the number: "))
      print(paste("The foactors of ",number," are: "))
      
      for(i in 1:number)
      {
        if((number %% i) == 0) {
          print(i)
        }
      }
    }
    #6. Prime
    else if(choice == 6)
    {
      number <- as.integer(readline("Enter the number: "))
      
      if(number == 1)
        print("1 is not a prime number.")
      else if(number == 2)
        print("2 is a prime number.")
      else
      {
        i <- 2
        while(1)
        {
          if((number %% i) != 0) {

            if(i < sqrt(number))
            {
              i <- i+1
              next
            }
            else
            {
              print(paste(number, " is a prime number."))
              break
            }
          }
          else 
          {
            print(paste(number, " is not a prime number."))
            break
          }
        }
      }
    }
    #If the input value is not in {1,2,3,4,5,6}, this function will ask again
    else
    {
      calculator()
    }
  }
  #If the input value is not integer, this function will ask again
  else
  {
    calculator()
  }
  
} 
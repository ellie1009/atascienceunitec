calculator <- function(){
  print("******Simple R Calculator - Select operation : ******")
  print("1.Add")
  print("2.Subtract")
  print("3.Multiply")
  print("4.Divide")
  print("5.Factors")
  print("6.Prime")
  
  #
  choice <- as.integer(readline("Enter choice [1/2/3/4/5/6]: "))
  if(is.integer(choice))
  {
    if(choice >= 1 && choice <= 4)
    {
      #fn is first number
      fn <- as.integer(readline("Enter first number: "))
      #sn is second number
      sn <- as.integer(readline("Enter second number: "))
      if(choice == 1)
      {
        print(paste(fn," + ",sn," = ",fn + sn))
      }
      else if(choice == 2)
      {
        print(paste(fn," - ",sn," = ",fn - sn))
      }
      else if(choice == 3)
      {
        print(paste(fn," * ",sn," = ",fn * sn))
      }
      else
      {
        print(paste(fn," / ",sn," = ",fn / sn))
      }
    }
    else if(choice == 5)
    {
      number <- as.integer(readline("Enter the number: "))
      for(i in 1:number)
      {
        if((number %% i) == 0) {
          print(i)
        }
      }
    }
    else if(choice == 6)
    {
      number <- as.integer(readline("Enter the number: "))
      
    }
    else
    {
      calculator()
    }
  }
  else
  {
    calculator()
  }
  
} 
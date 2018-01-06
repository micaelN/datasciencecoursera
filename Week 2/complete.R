complete <- function(directory = "specdata", id = 1:332) {
  
  #List of all the files in a specific folder. These are returned in a list with full pathnames.
  listOfiles <- list.files(path=directory, pattern=".csv", full.names = TRUE)
  #numeric vector that can only store numbers.
  nobs <- numeric()
  
  for(i in id) {
    #Sum all the completecases from the i from the the for-loop
    summedfiles <- sum(complete.cases(read.csv(listOfiles[i])))
    #vector thats adds the new to the nobs
    nobs <- c(nobs,summedfiles)             }
  
  #Create a dataframe with ids and nobs
  data.frame(id, nobs)
}
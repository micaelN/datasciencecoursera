complete <- function(directory = "/specdata", id = 1:332) {
  
  
  listOfiles <- list.files(path=directory, pattern=".csv", full.names = TRUE)
  nobs <- numeric()
  
  for(i in id) {
    nobs <- c(nobs, sum(complete.cases(read.csv(listOfiles[i]))))
              }
  
  data.frame(id, nobs)
}
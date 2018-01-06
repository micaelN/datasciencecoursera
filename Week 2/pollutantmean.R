pollutantmean <- function(directory = "./specdata", pollutant, id = 1:332) {
  
  #create object with a list of all the files
  listOfiles <- list.files(path=directory, pattern=".csv", full.names = TRUE)
  #empty vector
  all_values <- c()
  
  for (i in id) 
  {
    #read the data of one of the files with read.csv and add it to my_data until loop done
    my_data <- read.csv(paste(directory ,"/", listOfiles[i], sep = ""), header = TRUE) 
    #With the double bracket get the pollutantdata(data[["name of column"]]). Add everytime something to the vector
    all_values <- c(all_values, my_data[[pollutant]])
  }
  #mean without the na
  mean(all_values, na.rm =TRUE)
  
}



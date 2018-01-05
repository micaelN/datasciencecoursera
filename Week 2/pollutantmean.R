pollutantmean <- function(directory = "./specdata", pollutant, id = 1:332) {
  
  listOfiles <- as.character(list.files(directory))
  all_values <- c()
  
  for (i in id) 
  {
    my_data <- read.csv(paste(directory ,"/", listOfiles[i], sep = ""), header = TRUE) 
    all_values <- c(all_values, my_data[[pollutant]])
  }
  mean(all_values, na.rm =TRUE)

}
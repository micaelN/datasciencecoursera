corr <- function(directory = "specdata", threshold = 0) {
    
  #   # Read all files into a list
  # listOfiles <- list.files(path=directory, pattern=".csv", full.names = TRUE)
  # 
  # 
  # for (i in length(listOfiles) )
  # {
  #   my_data <- read.csv(paste(directory ,"/", listOfiles[i], sep = ""), header = TRUE) 
  # }
  # 
    
  htt <- complete(directory,)$nobs > threshold
  
  dt[,correlation = cor(x = sulfate, y = nitrate)]
  
    # Only keep completely observed cases
    completes <- complete(data)
    
    # Apply threshold
    dt <- dt[, .(nobs = .N, corr = cor(x = sulfate, y = nitrate)), by = ID][nobs > threshold]
    return(dt[, corr])
  }
  
  # Example Usage
  corr(directory = '~/Desktop/specdata', threshold = 150)
  
}
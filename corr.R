corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  a = 1
  corvec <- vector()
  files <- list.files(paste("~/", directory, sep=""))
  for (i in 1:length(files)){
    file <- paste("~/", directory, "/", files[i], sep = "")
    x <- read.csv(file)
    if(nrow(x[complete.cases(x),]) >= threshold){
      corvec[a] <- cor(x[complete.cases(x),][,"sulfate"], x[complete.cases(x),][, "nitrate"])
      #corvec[a] <- cor(x[,"sulfate"], x[,"nitrate"], use="complete.obs")
      a = a+1
    }
  }
  corvec
}

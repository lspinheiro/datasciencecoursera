complete <- function(directory, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  complete <- data.frame()
  for (i in id){
    file <- paste("~/", directory, "/",sprintf("%03d", i), ".csv", sep = "")
    x <- read.csv(file)
    complete <- rbind.data.frame(complete, c(i, nrow(x[complete.cases(x),])))
  }
  names(complete) <- c("id", "nobs")
  complete
}

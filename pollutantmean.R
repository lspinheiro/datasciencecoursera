pollutantmean <- function(directory, pollutant, id = 1:332) {
  ##Create a empty data frame
  
  pollutantTable <- data.frame()
  
  ## Add every data frame from the id subseting to pollutanttable
  ## the file variable specify the path to the file
  for (i in id){
    file <- paste("~/", directory, "/",sprintf("%03d", i), ".csv", sep = "")
    x <- read.csv(file)
    pollutantTable <- rbind.data.frame(pollutantTable, x)
  }
  
  ## calculate and return the mean
  mean(pollutantTable[, pollutant], na.rm = TRUE)
}




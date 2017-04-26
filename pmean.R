pmean<-function(directory, pollutant, id = 1:332){
  all_pollutants <- list()
  
  for(i in id) {
    path <- sprintf("%s\\%03d.csv", directory, i)
    df <- read.csv(path)
    all_pollutants <- append(all_pollutants, df[pollutant])
  }
  
  
  mean(unlist(all_pollutants), na.rm = TRUE)
}

complete<-function(directory, id = 1:332){
  observed_cases<-c()
  for(i in id) {
    path <- sprintf("%s\\%03d.csv", directory, i)
    df <- read.csv(path)
    observed_cases<-append(observed_cases, nrow(subset(df, complete.cases(df))))
  }
  data.frame(id, observed_cases)
}


corr<-function(directory, threshold = 0) {
    dfcases <- complete(directory)
    ids <- subset(dfcases, dfcases$observed_cases > threshold)$id
    
    result <- c()
    for(i in ids) {
      path <- sprintf("%s\\%03d.csv", directory, i)
      df <- read.csv(path)
      df <- subset(df, complete.cases(df))
      result <- append(result, cor(df$nitrate, df$sulfate))
    }
    unlist(result)
}

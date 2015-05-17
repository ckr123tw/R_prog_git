pollutantmean <- function(directory, pollutant="nitrate", id = 1:332) {
  table = data.frame(matrix(NA,nrow=0,ncol=1))
  for(i in 1:length(id)){
    table1 = read.csv(paste(getwd(),"/",directory,"/", formatC(id[i],width=3,format="d",flag="0"),".csv",sep=""))
    table = rbind(table,table1)
  }
  mean(table[complete.cases(table[,pollutant]),pollutant])
}


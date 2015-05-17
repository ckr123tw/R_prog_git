source("complete.R")
corr <- function(directory, threshold = 0) {
  complete_table=complete()
  nodes = which(complete_table[,2]>threshold)
  correlation = c()
  if(length(nodes)==0){
    correlation = c()
    correlation
  }else{
    for(i in 1:length(nodes)){
      table1 = read.csv(paste(getwd(),"/",directory,"/", formatC(nodes[i],width=3,format="d",flag="0"),".csv",sep=""))
      table1 = table1[complete.cases(table1),]
      correlation = c(correlation,cor(table1[,"sulfate"],table1[,"nitrate"]))
    }
    correlation
  }
}
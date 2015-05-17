complete <- function(directory="specdata", id = 1:332) {
  table = data.frame(matrix(NA,nrow=0,ncol=2))
  for(i in 1:length(id)){
    table1 = read.csv(paste(getwd(),"/",directory,"/", formatC(id[i],width=3,format="d",flag="0"),".csv",sep=""))
    table = rbind(table,c(id[i],length(which(complete.cases(table1)))))
  }
  colnames(table)=c("id","nobs")
  table
}
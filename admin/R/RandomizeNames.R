library(readxl)

dat<-read_xls(file.choose(), 
              skip = 14)

rand <- sample(dat$'Student Name')
write.csv(rand,
          'RandomNames.csv',
          row.names=FALSE)


# Pair-up accountabilibuddies
pairOff <- function(x){
  pairs <- matrix(sample(x),ncol=2)
  return(pairs)
}
buddies <- pairOff(rand)

write.csv(buddies,
          'Accountabilibuddies.csv',
          row.names=FALSE)

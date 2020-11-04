dat<-read.csv('IB599_AW_ClassList.csv', 
              skip = 1, 
              stringsAsFactors = FALSE)

rand <- sample(dat$NAME)
write.csv(rand,
          'RandomNames.csv',
          row.names=FALSE)


# Pair-up accountabilibuddies
pairOff <- function(x){
  pairs <- matrix(sample(x),ncol=2)
  return(pairs)
}
buddies <- pairOff(dat$NAME)

write.csv(buddies,
          'Accountabilibuddies.csv',
          row.names=FALSE)
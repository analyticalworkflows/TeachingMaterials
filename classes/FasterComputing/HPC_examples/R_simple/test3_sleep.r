
n <- 10
sqrd <- numeric(length=n)
for (i in 1:n){
  sqrd[i] <- i^2
  print(sqrd[i])
  Sys.sleep(10)
}
out <- data.frame('Input'=1:n, 'Output'=sqrd)

write.csv(out,
          file = 'MyResults.csv',
          row.names = FALSE)
          
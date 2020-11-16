# Get the command line arguments
args <- commandArgs()

options(warn=1)

# Assign the ranges to mybegin and myend
mybegin <- as.integer(1)
myend <- as.integer(10)

cat("number(x)          Sqr(x)\n")
cat("------------------ ----------\n")
for (i in mybegin:myend) {
        cat(i,"                ",i*i,"\n")
}
q()

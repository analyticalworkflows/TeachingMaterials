# Get the command line arguments
args <- commandArgs()

options(warn=1)

# Assign the ranges to mybegin and myend
mybegin <- as.integer(args[4])
myend <- as.integer(args[5])

cat("number(x)          Sqr(x)\n")
cat("------------------ ----------\n")
for (i in mybegin:myend) {
	# Artifical processing time
	Sys.sleep(0.5)
        cat(i,"                ",i*i,"\n")
}
q()

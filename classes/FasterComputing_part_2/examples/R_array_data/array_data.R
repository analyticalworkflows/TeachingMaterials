# retrices file name from command line after script name
args <- commandArgs(trailingOnly = TRUE)

# Get the input file path from the arguments
data_file <- args[1]

# Read the data from the CSV file
dat <- read.csv(data_file)

# Initialize an empty numeric vector to store squared values
sqrd <- numeric(length = length(dat$input))

# Loop through the data and calculate the square of each value
for (i in seq_along(dat$input)){
  sqrd[i] <- dat$input[i]^2
}

# Create a new data frame with the original input and the squared output
out <- data.frame('Input' = dat$input, 
                  'Output' = sqrd)

# Generate output file name based on input file
output_file <- paste0("MyResults_", basename(data_file))

# Write the results to a new CSV file
write.csv(out, 
          file = output_file, 
          row.names = FALSE)


# Generates simulated data

# Load libraries
# none needed

# Start from a clean slate
rm(list = ls())


# Generate simulated data
n_observations <- 50
xmin <- -20
xmax <- 20
slope <- 20
intcpt <- 600
sigma <- 50  # standard deviation of noise

# make x and y variables
x <- runif(n_observations, xmin, xmax)
ypred <- slope * x + intcpt

# add noise
z <- rnorm(n_observations, mean = 0, sd = sigma)
yobs <- ypred + z


# Could put validation code here, like:
do_validation <- FALSE
if (do_validation) {
  # validation
}


# Save as csv
df <- data.frame(x = x, yobs = yobs)
filename <- "classes/CodingBestPractices/project_example/data/sim_data.csv"
write.csv(df, filename, row.names = FALSE)
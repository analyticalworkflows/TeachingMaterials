# Plot the simulated data

# Load libraries
# none needed

# Clean workspace
rm(list = ls())


# Load data
filename <- "classes/CodingBestPractices/project_example/data/sim_data.csv"
df <- read.csv(filename)
x <- df$x
yobs <- df$yobs


# Plot
quartz()
plot(x,
     yobs,
     xlab = "Temperature (°C)",
     ylab = "Net Primary Productivity")
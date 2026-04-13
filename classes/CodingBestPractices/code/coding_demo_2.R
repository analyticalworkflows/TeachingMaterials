### Coding lab

# In this exercise / lab, we build a pipeline that goes
# from generating simulated data to a publication-quality
# figure.
# Our goal is to practice our techniques for writing clean 
# code bases.

# Here are the steps we will do:

# 1. Choose a dependent variable and an independent variable
# that are approximately linearly related in your field.
# In the example below I will use net primary productity (NPP) 
# as my dependent variable and mean annual temperature
# as the independent variable.

# 2. Generate simulated data showing the relationship

# 3. Fit a statistical model to the simulated data

# 4. Make a publication-quality plot


# Clear workspace
rm(list = ls())


# Script parameters
## x is independent variable, y is dependent variable
n_observations <- 50
xmin <- -20
xmax <- 20
slope <- 20
intcpt <- 600
sigma <- 50  # standard deviation of noise


# Make x and y variables
x <- runif(n_observations, xmin, xmax)
ypred <- slope * x + intcpt


# Add noise to simulate observed data
z <- rnorm(n_observations, mean = 0, sd = sigma)
yobs <- ypred + z


# Fit model
fit <- glm(yobs ~ x)


# Plot
par(
  pin = c(3, 3),
  bg = "white",
  fg = "black",
  col.axis = "black",
  col.lab = "black",
  col.main = "black"
)

plot(x,
     yobs,
     xlab = "Temperature (°C)",
     ylab = "Net Primary Productivity")
abline(fit, col = "red", lwd = 2)
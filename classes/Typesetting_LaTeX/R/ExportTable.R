##################################################
# Demonstrate how to export tables in LaTeX format
##################################################
library(Hmisc) # for LaTeX table export
options(xdvicmd='open')

# ~~~~~~~~~~~~~~~~~~~~~~~~
# Generate some dummy data
# ~~~~~~~~~~~~~~~~~~~~~~~~
n <- 20
x <- runif(n)
y <- 1 + 3 * x + rnorm(n)

dat <- data.frame(x,y)
tab <- head(dat) # restrict to just the top 6 lines for demonstration purpose
tab

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Generate a summary of a model-fit
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
fit <- lm(y~x) # fit a linear model
est.coefs <- round(coef(summary(fit)),3)
est.coefs

# plot(x,y)
# abline(fit)

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Export the top of the dataset
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
latex(
  tab,
  file = '../tables/data.tex',
  label = 'tab:data', 
  rowname = NULL, 
  na.blank = TRUE,
  caption = "The first six lines of my dataset."
)

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Export the estimated coefficients
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Fix rendering of p-value
colnames(est.coefs)[4] <- 'p-value'
latex(
  est.coefs,
  file = '../tables/est_coefs.tex',
  label = 'tab:coefs', 
  rowlabel = 'Parameter',
  rowname = c('a','b'), 
  na.blank = TRUE,
  caption = "Estimated coefficients of a linear fit to the data."
)

#############################################################################


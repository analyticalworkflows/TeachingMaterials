##################################################
# Demonstrate how to export tables in LaTeX format
##################################################

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


### ~~~~~~~~~~~~~~~~~~~~~~~ ###
### Using Stargazer package ###
### ~~~~~~~~~~~~~~~~~~~~~~~ ###
# Many more options than demonstrated available.
# See https://www.jakeruss.com/cheatsheets/stargazer/
library(stargazer)

stargazer(tab,
          out = '../tex/tables/data.tex',
          label = 'tab:data')

stargazer(est.coefs,
          out = '../tex/tables/estcoefs.tex',
          label = 'tab:coefs')


### ~~~~~~~~~~~~~~~~~~~ ###
### Using Hmisc package ###
### ~~~~~~~~~~~~~~~~~~~ ###

library(Hmisc)
options(xdvicmd='open')
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Export the top of the dataset
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
latex(
  tab,
  file = '../tex/tables/data.tex',
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
  file = '../tex/tables/est_coefs.tex',
  label = 'tab:coefs', 
  rowlabel = 'Parameter',
  rowname = c('a','b'), 
  na.blank = TRUE,
  caption = "Estimated coefficients of a linear fit to the data."
)

#############################################################################


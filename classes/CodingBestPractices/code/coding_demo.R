# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Analytical workflows: Coding demo
# This script will demonstrate some coding practices
# by generating some data and fitting a model to it
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
rm(list = ls())
graphics.off()

# ~~~~~~~~~~~~~~~~~~~~~~
# Script parameters ----
# ~~~~~~~~~~~~~~~~~~~~~~

nobs <- 10            # number of observation to generate
slope <- 0.2
intercept <- -1
predictor_ll <- 0
predictor_ul <- 100
sd_noise <- 5

npred <- 50           # number of prediction points to generate
nse <- 2              # number of standard errors in confidence interval

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Generate data for linear regression ----
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Place for explanation or notes here

predictor <- runif(n = nobs, 
                   min = predictor_ll, 
                   max = predictor_ul)

noise <- rnorm(n = nobs, 
               mean = 0, 
               sd = sd_noise)

response <- intercept + slope * predictor + noise

dat <- data.frame(predictor = predictor, 
                  response = response)

# ~~~~~~~~~~~~~~~~~~~~~~~
# Fit a linear model ----
# ~~~~~~~~~~~~~~~~~~~~~~~
is_first_time <- TRUE

if (is_first_time) {
  fit <- glm(response ~ predictor, 
             data = dat)
  save(fit, file = "my_expensive_data.Rdata")
  
} else{
  load("my_expensive_data.Rdata")
}

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Plot data and the fitted model ----
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
plot(predictor, response)
#abline(fit, col = 2)

## Add model-expected values ----
predictor_seq <- seq(predictor_ll, predictor_ul, 
                     length.out = npred)
newdat <- data.frame(predictor = predictor_seq)

pred <- predict(fit, 
                newdata = newdat, 
                se.fit = TRUE)
newdat$predicted_response_mean <- pred$fit

lines(
  newdat$predictor,
  newdat$predicted_response_mean
)

## Add confidence intervals ----
newdat$predicted_response_ul <- pred$fit + nse * pred$se.fit
newdat$predicted_response_ll <- pred$fit - nse * pred$se.fit

lines(
  newdat$predictor,
  newdat$predicted_response_ul,
  lty = 2
)
lines(
  newdat$predictor,
  newdat$predicted_response_ll,
  lty = 2
)

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

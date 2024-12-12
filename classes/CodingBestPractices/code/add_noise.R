# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Function to add stochastic noise to a time-series of population sizes
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Input
#	x: a time series of population sizes (a vector)
#	noise_model: gaussian (currently only implemented model, default)
# sd: the standard deviation of Gaussian noise (default = 0 no noise)

# Returns
#	Vector of length equal to the input vector
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

add_noise <- function(x, 
                      noise_model = "gaussian", 
                      sd = 0.1){
	noise_model <- match.arg(noise_model)
	if(noise_model=="gaussian" | sd == 0 ){
		out <- x + rnorm(length(x), 0, sd)
	}else{
		out <- x
		warning("Original time series returned")
	}
	return(out)
}

# ~~~~~~~~~~
# Test ----
# ~~~~~~~~~~
source("simulateLV.R")
out <- data.frame(out)

out$Prey_Noise <- add_noise(out$Prey)
out$Predator_Noise <- add_noise(out$Predator)

par(mfcol = c(2, 2))
plot(out$time, out$Prey,
     type = 'l')
plot(out$time, out$Prey_Noise,
     type = 'l')
plot(out$time, out$Predator,
     type = 'l')
plot(out$time, out$Predator_Noise,
     type = 'l')


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
########################################################
# Function to add stochastic noise to a time-series of population sizes.
########################################################
# Input:
#	x -- a time series of population sizes (vector)
#	noise_model -- gaussian (currently implemented model, default)
# 	sd -- the standard deviation of gaussian noise (default=0)
# Returns:
#	Vector of length equal to the input vector

add_noise <- function(x, noise_model=`gaussian', sd=0){
	noise_model <- match.arg(noise_model)
	if(noise_model==`gaussian'){
		out <- x + rnorm(length(x), sd)
	}else{
		out <- x
		warning(``Original time series returned'')
	}
	return(out)
}

# Test:
# source(`simulateLV.R')
# new <- add.noise(out, sd=1)
# par(mfrow=c(1,2))
#	plot(out)
#	plot(new)
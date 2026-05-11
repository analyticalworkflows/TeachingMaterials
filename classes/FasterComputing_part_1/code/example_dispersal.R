# Example of profiling and optimizing
# some code on connectivity of sites
# based on their spatial locations

rm(list = ls())
graphics.off()

library(microbenchmark)

set.seed(1)

# Code we want to optimize:
# compute connectivity of sites based
#on their spatial locations

# Draw random spatial locations
n_sites <- 500
sites <- data.frame(
  x = runif(n_sites, 0, 100),
  y = runif(n_sites, 0, 100)
)

connectivity <- function(sites, scale = 20) {
  n <- nrow(sites)
  K <- matrix(NA_real_, n, n)

  for (i in seq_len(n)) {
    for (j in seq_len(n)) {
      d <- sqrt((sites$x[i] - sites$x[j])^2 +
        (sites$y[i] - sites$y[j])^2)
      K[i, j] <- exp(-d / scale)
    }
  }

  # Ignore self-connectivity
  diag(K) <- NA_real_

  # Return mean connectivity
  mean_con <- mean(K, na.rm = TRUE)

  return(mean_con)
}

# Benchmark to see how long it takes
microbenchmark(
  mean_con = connectivity(sites),
  times = 5
)

# Profile to find out what is taking the most time
Rprof("connectivity_profile.out")

for (rep in 1:10) {
  mean_con <- connectivity(sites)
}

Rprof(NULL)

summaryRprof("connectivity_profile.out")$by.total

# Optimize the bottleneck
connectivity_fast <- function(sites, scale = 20) {
  D <- as.matrix(dist(sites[, c("x", "y")]))
  K <- exp(-D / scale)

  # Ignore self-connectivity
  diag(K) <- NA_real_

  # Return mean connectivity
  mean_con <- mean(K, na.rm = TRUE)

  return(mean_con)
}

# Check that the optimized version gives the same answer
mean_con_fast <- connectivity_fast(sites)

all.equal(mean_con, mean_con_fast)

# Benchmark slow vs. fast
comp <- microbenchmark(
  slow = connectivity(sites),
  fast = connectivity_fast(sites),
  times = 10
)

comp

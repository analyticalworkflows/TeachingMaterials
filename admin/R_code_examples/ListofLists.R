


dat <- list(
  list(
      site = 'Yachats',
      year = 2020,
      data = matrix(runif(9), nrow = 3)),
  list(
      site = 'Newport',
      year = 2019,
      data = matrix(runif(9), nrow = 3)),
  list(
      site = 'Corvallis',
      year = 2018,
      data = matrix(runif(9), nrow = 3))
)

# extract maximum of data values by site
lapply(dat, function(x){ max(x$data) })
# or straight to vector
sapply(dat, function(x){ max(x$data) })
 
# extract site names
sapply(dat, function(x){ x$site })

out <- data.frame(t(sapply(dat, function(x){ c(x$site, max(x$data)) })))
colnames(out) <- c('site','maxvalue')
out

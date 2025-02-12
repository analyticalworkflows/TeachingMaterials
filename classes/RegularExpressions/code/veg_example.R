# This example uses regular expressions
# to correct aberrations in a list of vegetation types.

rm(list = ls())
graphics.off()

# Sample data
dat <- data.frame(
    site_id = c(1, 2, 3, 4, 5),
    veg_type = c("Forest", "Woodland", "Rain Forest", "Mangoev", "grassland")
)


# Define a correction strategy
correction_strategy <- list(
    "Mangoev" = "Mangrove",
    "Rain Forest" = "Rainforest"
)

# Use gsub function to correct the data
nerrortype <- length(correction_strategy)
for (i in 1:nerrortype) {
    pattern <- names(correction_strategy)[i]
    repl <- correction_strategy[[i]]
    dat$veg_type <- gsub(pattern, repl, dat$veg_type)
}

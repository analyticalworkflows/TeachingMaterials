# This example uses regular expressions to extract
# the genus and species from a list of species names.

rm(list = ls())
graphics.off()

# Sample data
species_data <- c("Panthera leo", "Canis lupus", "Ursus arctos", "Elephas maximus", "Felis catus")

# Define a regular expression pattern to capture genus and species
pattern <- "([A-Za-z]+)\\s([A-Za-z]+)"

# Use regexpr function to find matches
matches <- regexpr(pattern, species_data)

# Use regmatches function to extract matched substrings
result <- regmatches(species_data, matches)

# Convert the result to a data frame
result_df <- do.call(rbind, strsplit(result, " "))
colnames(result_df) <- c("Genus", "Species")

# Display the results
print(result_df)
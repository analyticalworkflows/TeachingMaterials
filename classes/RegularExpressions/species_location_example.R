# This script uses regular expressions to extract the location information from a list of species observations.

rm(list = ls())
graphics.off()

# Sample data
species_observations <- c(
  "Panthera leo, Serengeti National Park, Tanzania",
  "Canis lupus, Yellowstone National Park, USA",
  "Ursus arctos, Banff National Park, Canada",
  "Elephas maximus, Chitwan National Park, Nepal",
  "Felis catus, Urban Area"
)

# Each observation contains a species name and a location.
# We want to extract the location information from each observation.
# The location is everythying after the first comma in each observation


# First define the pattern to capture the location
pattern <- ",\\s(.+)"


# Use regexpr function to find matches
matches <- regexpr(pattern, species_observations)

# Use regmatches function to extract matched substrings
locations <- regmatches(species_observations, matches)


# Remove the first two characters from each location
locations <- substr(locations, 3, nchar(locations))


# If there is a comma in a location, separate it into two columns
locations <- strsplit(locations, ", ")


# Build a data frame from the result
locations_df <- do.call(rbind, locations)
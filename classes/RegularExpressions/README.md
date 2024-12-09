# Regular Expressions


## Introduction
Regular expressions (regex or regexp) provide a concise and flexible way to search, match, and manipulate text. They are widely used in programming, text processing, and data analysis tasks. In short, regular expressions are used for pattern matching within strings. They are composed of powerful sequences of characters that define a search pattern. Think "find and replace" on steroids.

In the context of R programming, regular expressions are particularly useful for tasks such as:

Data Cleaning: Extracting or replacing specific patterns within text data.
Data Validation: Checking if strings adhere to a certain format or pattern.
Data Extraction: Retrieving specific information from text data.

## Example
Suppose you have a dataset with species names, and you want to extract information about the genus and species from a single column that contains both. The basic steps consist of defining a regular expression, finding matches within the text data, and extracting the matched substrings. You can then repackage the results into a new data structure as needed.

```R
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
```

In this example the regular expression pattern "([A-Za-z]+)\\s([A-Za-z]+)" is used to capture the genus and species names. Let's translate it. The pattern consists of two parts:

([A-Za-z]+) - This part of the pattern captures one or more letters (upper or lower case) and stores the result as a group.
\\s - This part of the pattern matches a single whitespace character.
([A-Za-z]+) - This part of the pattern captures one or more letters (upper or lower case) and stores the result as a group.

So the net result is that the regular expression pattern captures the genus and species names from the input strings. More generically, it captures two words separated by a space. The difference between in the input strings and the output data is that the genus and species names are now separated into two columns. 

(In terms of coding aesthetics, could you use strsplit() to do this specific example? Yes. However, regular expressions are more powerful and flexible.)


## Basic Concepts
Here are some basic concepts related to regular expressions:

- *Characters and Metacharacters*: Regular expressions consist of ordinary characters (like letters and digits) and special characters called metacharacters. Metacharacters often have a special meaning.

- *Quantifiers*: These specify the number of occurrences of a character or group in a pattern. For example, * means zero or more occurrences, + means one or more occurrences, and ? means zero or one occurrence.

- *Character Classes*: These allow you to match any one of a set of characters. For example, [aeiou] matches any vowel.

- *Anchors*: These specify the position in the string where a match must occur. ^ denotes the start of a string, and $ denotes the end.

- *Escape Characters*: Some characters have special meanings in regular expressions (like . or *). If you want to match them literally, you need to escape them with a backslash (\).

In R, the grep, grepl, regexpr, gregexpr, sub, gsub, and other functions are commonly used for operations involving regular expressions.


## Exercise: Extracting Location Information from Species Observations
*Problem Statement*:
Suppose you have a dataset with species observations, and each observation includes both the species name and its location. Create a regular expression pattern to extract the location information from these observations, and then use it to filter out the location details from a given list.

*Instructions*:
1. *Define the Regular Expression Pattern*:

- Create a regular expression pattern that matches the location information in a species observation. Consider the following rules:
   - The location information is expected to come after the species name.
   - It can contain alphanumeric characters, spaces, and possibly special characters.
   - The location should start with a comma (,), as it separates the species name from the location.

2. *Test the Pattern*:

- Test your regular expression pattern on the following species observations:
  - "Panthera leo, Serengeti National Park, Tanzania"
  - "Canis lupus, Yellowstone National Park, USA"
  - "Ursus arctos, Banff National Park, Canada"
  - "Elephas maximus, Chitwan National Park, Nepal"
  - "Felis catus, Urban Area"

3. *Use R to Extract Location Information*:

- Create a vector of species observations in R, including both complete and incomplete information.
- Use your regular expression pattern to extract the location information.

4. *Display Results*:

- Display the original vector of species observations.
- Display the vector containing only the extracted location information.

## Some common metacharacters
1. . (Dot): Matches any single character except a newline.

2. \* (Asterisk): Matches zero or more occurrences of the preceding character or group.

3. \+ (Plus): Matches one or more occurrences of the preceding character or group.

4. ? (Question Mark): Matches zero or one occurrence of the preceding character or group.

5. ^ (Caret): Anchors the pattern to the start of the string.

6. $ (Dollar): Anchors the pattern to the end of the string.

7. [] (Character Class): Matches any single character within the brackets. For example, [aeiou] matches any vowel.

8. () (Grouping): Groups characters together, allowing you to apply quantifiers or other operations to the entire group.

9. | (Pipe): Acts as an OR operator, allowing you to match either the pattern before or after the pipe.

10. \ (Backslash): Escapes a metacharacter, allowing you to match it as a literal character. For example, \\ matches a single backslash.



## Example: Error Correction in Field Data
*Scenario*: The dataset has a column named vegetation_type that includes information about the vegetation types observed. However, there are variations in spelling, and you want to standardize them.

```R
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
```
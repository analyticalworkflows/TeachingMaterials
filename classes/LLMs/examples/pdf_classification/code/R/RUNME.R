
# This should NOT be included in code but rather should be imported to the working environment
api_key <- # ADD ANTHROPIC (CLAUDE) API KEY

# Specify paths
path_to_pdfs <- '../../papers_to_classify/'
path_to_results <- '../../results/'

# Install required packages
# install.packages(c("pdftools", "tidyverse", "httr", "jsonlite"))

# Load packages
library(pdftools)
library(tidyverse)
library(httr2)
library(jsonlite)

# Import functions
source('process_pdfs.R')
source('generate_prompt.R')
source('classify_text.R')
source('classify_papers.R')
source('visualize_results.R')

# Process PDFs
papers_df <- process_pdfs(path_to_pdfs)

# Proceed with classification
results <- classify_papers(papers_df, 
                           myAPI)
results <- classify_papers2(papers_df, 
                           myAPI)

# View results
print(results$summary)

viz <- visualize_results(results)
print(viz$plot)
print(viz$table)

##### Export results
write_csv(results$summary, paste0(path_to_results, "/classification_summary.csv"))
write_csv(results$detailed, paste0(path_to_results, "/classification_detailed.csv"))

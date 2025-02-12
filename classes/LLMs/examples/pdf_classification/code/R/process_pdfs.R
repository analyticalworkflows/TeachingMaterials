
# Function to process PDFs
process_pdfs <- function(path_to_pdfs) {
  # Get list of PDF files
  pdf_files <- list.files(
    path = path_to_pdfs,
    pattern = "\\.pdf$",
    full.names = TRUE
  )
  
  # Process each PDF
  processed_papers <- map_df(pdf_files, function(file) {
    # Extract text from PDF
    text <- pdf_text(file) %>%
      paste(collapse = " ") %>%
      # Clean text
      str_replace_all("\r\n", " ") %>%
      str_replace_all("\\s+", " ") %>%
      str_trim()
    
    # Split into chunks of approximately 1000 characters
    chunks <- text %>%
      str_split_1(boundary("word")) %>%
      split(ceiling(seq_along(.)/200)) %>%
      map_chr(paste, collapse = " ")
    
    # Create dataframe
    tibble(
      filename = basename(file),
      chunk_id = seq_along(chunks),
      content = chunks
    )
  })
  
  return(processed_papers)
}
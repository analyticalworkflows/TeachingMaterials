classify_papers2 <- function(papers_df, api_key) {
  
  # Initialize progress bar
  total_chunks <- nrow(papers_df)
  pb <- txtProgressBar(min = 0, max = total_chunks, style = 3)
  
  # Classify each chunk with progress tracking
  classification <- character(total_chunks)
  for (i in seq_len(total_chunks)) {
    setTxtProgressBar(pb, i)
    classification[i] <- classify_text(papers_df$content[i], api_key)
    print(classification[i])
    Sys.sleep(20)  # Add delay to avoid rate limiting
  }
  close(pb)
  
  # Add classification to the results data frame
  results_df <- cbind(papers_df, classification = classification)
  
  # Aggregate results by paper
  unique_filenames <- unique(results_df$filename)
  summary_list <- vector("list", length(unique_filenames))
  
  for (i in seq_along(unique_filenames)) {
    file <- unique_filenames[i]
    file_classifications <- results_df$classification[results_df$filename == file]
    
    overall_classification <- if (any(grepl("USEFUL", file_classifications))) {
      "USEFUL"
    } else {
      "NOT RELEVANT"
    }
    
    summary_list[[i]] <- data.frame(
      filename = file,
      overall_classification = overall_classification,
      confidence = I(list(file_classifications)),  # Store as list-column
      processed_date = Sys.time(),
      stringsAsFactors = FALSE
    )
  }
  
  summary_df <- do.call(rbind, summary_list)
  
  return(list(
    detailed = results_df,
    summary = summary_df
  ))
}

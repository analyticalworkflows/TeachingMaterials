classify_papers <- function(papers_df, 
                            api_key) {

  # Add progress bar
  total_chunks <- nrow(papers_df)
  pb <- txtProgressBar(min = 0, 
                       max = total_chunks, 
                       style = 3)
  
  # Classify each chunk with progress tracking
  results_df <- papers_df %>%
    mutate(
      classification = map_chr(seq_len(n()), 
                               function(i) {
                                 setTxtProgressBar(pb, i)
                                 result <- classify_text(content[i], 
                                                         api_key)
                                 Sys.sleep(10)  # Add delay to avoid rate limiting
                                 result
                                 })
      )
  
  close(pb)
  
  # Aggregate results by paper
  summary_df <- results_df %>%
    group_by(filename) %>%
    summarize(
      overall_classification = case_when(
        any(str_detect(classification, "RELEVANT")) ~ "RELEVANT", TRUE ~ "NOT RELEVANT" ),
      confidence = list(classification),
      processed_date = Sys.time()
    )
  
  return(list(
    detailed = results_df,
    summary = summary_df
  ))
}


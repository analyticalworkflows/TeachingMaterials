# Function to create summary visualizations
visualize_results <- function(results) {
  # Create summary plot
  summary_plot <- results$summary %>%
    ggplot(aes(x = overall_classification, fill = overall_classification)) +
    geom_bar() +
    theme_minimal() +
    labs(
      title = "Paper Classification Results",
      x = "Classification",
      y = "Count"
    )
  
  # Create detailed results table
  results_table <- results$detailed %>%
    select(filename, chunk_id, classification) %>%
    knitr::kable()
  
  return(list(
    plot = summary_plot,
    table = results_table
  ))
}
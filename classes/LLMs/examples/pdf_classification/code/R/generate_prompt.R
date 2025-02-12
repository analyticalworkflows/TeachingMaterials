# Function to generate the ecological analysis prompt
generate_prompt <- function(text_chunk) {
    # Input validation to ensure text_chunk is provided and is a string
    if (missing(text_chunk)) {
        stop("text_chunk argument is required")
    }
    if (!is.character(text_chunk)) {
        stop("text_chunk must be a character string")
    }
    
    # Construct the prompt text with the provided text chunk
    prompt_text <- paste0(
        # Context section explaining the overall goal
        "Context: I need to classify scientific papers published in the ",
        "ecological literature based on whether they contain information ",
        "from empirical surveys about predator diets, predator-prey ",
        "interactions, or trophic relationships. ",
        "The classification should focus on whether the papers report on either ",
        "the proportion, percentage, or number of surveyed predator individuals ",
        "that were found to be feeding versus not feeding, ",
        "or to have non-empty versus empty stomachs (also referred to as guts). ",
        "Papers that performed diet surveys but do not report on the ",
        "proportion, percentage, or number of individuals that were found to ",
        "feeding versus not feeding are to be classified as NOT RELEVANT.\n\n",
        
        # Task section listing the specific requirements
        "Task: Analyze the following scientific paper excerpt and:\n",
        "1. Determine if it reports on one or more surveys of a predator's diet\n",
        "2. Classify the excerpt as either USEFUL or NOT RELEVANT\n",
        "3. List the names of the specific predator species that was surveyed (if any)\n",
        "4. List the year in which the surveys were performed (if any)\n",
        "5. Indicate your confidence level in the classification as HIGH, MEDIUM, or LOW\n\n",
        
        # Paper excerpt section containing the text to analyze
        "Paper excerpt:\n",
        text_chunk,  # Insert the provided text chunk here
        "\n\n",
        
        # Response format section specifying how the output should be structured
        "Format your response as follows:\n",
        "CLASSIFICATION: [USEFUL/NOT RELEVANT]\n",
        "SPECIES MENTIONED: [List of predator species, if any]\n",
        "SURVEY YEARS: [List of survey years, if any]\n",
        "CONFIDENCE: [HIGH/MEDIUM/LOW, there is no need to justify]"
    )
    
    # Return the constructed prompt text
    return(prompt_text)
}
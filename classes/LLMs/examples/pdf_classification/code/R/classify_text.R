classify_text <- function(text_to_assess, api_key) {
  # Add error checking for empty text
  if (is.null(text_to_assess) || nchar(trimws(text_to_assess)) == 0) {
    return("ERROR: Empty text")
  }
  
  message_body <- list(
    model = "claude-3-opus-20240229",
    max_tokens = 1000,
    temperature = 0,
    system = "You are a research assistant specializing in ecological literature analysis.",
    messages = list(
        list(
            role = "user",
            content = list(
                list(
                    type = "text",
                    text = generate_prompt(text_to_assess)
                )
            )
        )
    )
  )
  
  # Make API request with error handling
  tryCatch({
    response <- POST(
        url = "https://api.anthropic.com/v1/messages",
        add_headers(
            "x-api-key" = api_key,
            "anthropic-version" = "2023-06-01",
            "content-type" = "application/json"
        ),
        body = message_body,
        encode = "json"
    )
    
    # Parse response
    if (status_code(response) == 200) {
      # Convert response content to text
      response_text <- rawToChar(response$content)
      cat("Raw response:", response_text, "\n")
      
      # Parse JSON
      parsed <- fromJSON(response_text)
      
      # Get the response text (safely)
      if (!is.null(parsed$content) && length(parsed$content) > 0) {
        if (!is.null(parsed$content[[2]])) {
          return(parsed$content[[2]])
        }
      }
      # return("ERROR: Unexpected response format")
    } else {
      return(paste("API Error:", status_code(response)))
    }
    
  }, error = function(e) {
    return(paste("Error in API call:", e$message))
  })
}


# test_text <- "The wolf (Canis lupus) primarily feeds on ungulates, with deer making up 60% of their diet based on stomach content analysis."
# test_text <- "We quantified the diet of wolves (Canis lupus).  Of 100 surveyed individuals, only 25 contained prey in their stomachs."
# test_text <- "Of the 120 stomachs that were examined, nine were empty. Only one small (470 mm) individual was caught in 1999 and this one had an empty stomach. For this reason, small sharks in WC could not be included in the analyses."

# result <- classify_text(test_text, api_key)
# print(result)

# The error 529 indicates that the Claude AI service is currently overloaded and unable to process requests
# API error 429, also known as the "Too Many Requests" error, occurs when a client has sent too many requests to an API in a short period of time.

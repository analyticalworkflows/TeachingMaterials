def classify_papers(processed_papers, llm):
    results = []
    
    for paper in processed_papers:
        paper_results = {
            'filename': paper['filename'],
            'classifications': []
        }
        
        # Process each chunk of the paper
        for chunk in paper['content']:
            response = llm.classify(
                prompt_template.format(text_chunk=chunk.page_content)
            )
            paper_results['classifications'].append(response)
        
        # Aggregate results for the paper
        final_classification = aggregate_classifications(
            paper_results['classifications']
        )
        results.append(final_classification)
    
    return results
# PDF Classification Process Guide
**Purpose:** Demonstrate how to use LLMs to classify scientific papers based on predator surveys

## Common Challenges and Solutions

### 1. Text Processing Issues
- PDFs with poor OCR
- Complex tables or figures
- Mathematical equations
Solution: Pre-process PDFs with OCR software if needed

### 2. Classification Accuracy
- Papers with minimal diet information
- Theoretical papers discussing feeding
- Multiple species interactions
Solution: Refine prompt with specific examples

### 3. Performance Optimization
- Large PDF files
- Many papers to process
- Token limits
Solution: Implement chunking and batch processing

## Best Practices for Students

1. Prompt Engineering
- Be specific about what constitutes diet information
- Include examples of relevant/irrelevant content
- Request confidence levels

2. Validation
- Cross-check LLM classifications
- Verify key quotes
- Review borderline cases

3. Documentation
- Record classification criteria
- Note any modifications to prompts
- Track accuracy metrics

## Extension Activities

1. Bulk Processing
- Modify script for larger paper sets
- Implement parallel processing
- Add progress tracking

2. Enhanced Analysis
- Extract quantitative diet data
- Generate prey frequency tables
- Create predator-prey networks

3. Output Formats
- Export to spreadsheets
- Generate summary reports
- Create visualization of results

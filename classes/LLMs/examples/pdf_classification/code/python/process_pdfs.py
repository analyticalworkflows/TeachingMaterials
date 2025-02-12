from langchain.document_loaders import PyPDFLoader
from langchain.text_splitter import RecursiveCharacterTextSplitter
import os

def process_pdfs(folder_path):
    processed_texts = []
    
    # Process each PDF in the folder
    for filename in os.listdir(folder_path):
        if filename.endswith('.pdf'):
            file_path = os.path.join(folder_path, filename)
            
            # Load and process PDF
            loader = PyPDFLoader(file_path)
            pages = loader.load()
            
            # Split text into manageable chunks
            text_splitter = RecursiveCharacterTextSplitter(
                chunk_size=1000,
                chunk_overlap=200
            )
            texts = text_splitter.split_documents(pages)
            
            # Store processed text with filename
            processed_texts.append({
                'filename': filename,
                'content': texts
            })
            
    return processed_texts
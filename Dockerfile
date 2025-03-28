# Use the official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy dependency list and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the code
COPY . .

# Streamlit config environment variables
ENV STREAMLIT_SERVER_HEADLESS=true
ENV STREAMLIT_SERVER_PORT=8501
ENV STREAMLIT_SERVER_ENABLECORS=false
ENV STREAMLIT_SERVER_ENABLEXsrfProtection=false

# Expose Streamlit's default port
EXPOSE 8501

# Start the Streamlit app
CMD ["streamlit", "run", "app.py"]

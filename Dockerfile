# Use an official Streamlit image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set Streamlit environment variable to suppress config warning
ENV STREAMLIT_DISABLE_WELCOME=true

# Expose the port Streamlit runs on
EXPOSE 7860

# Run Streamlit
CMD ["streamlit", "run", "app.py", "--server.port=7860", "--server.address=0.0.0.0"]
# trigger from Dockerfile
# final trigger

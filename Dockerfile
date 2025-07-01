# Use an official Python base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy all files into the container
COPY . /app

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Create a non-root user to avoid permission issues
RUN useradd -m -u 1000 appuser
USER appuser

# Set environment variables
ENV HOME="/home/appuser"
ENV STREAMLIT_CONFIG_DIR="$HOME/.streamlit"
ENV STREAMLIT_DISABLE_WELCOME=true

# Create a writable .streamlit config directory
RUN mkdir -p "$STREAMLIT_CONFIG_DIR"

# Expose the port Streamlit will use
EXPOSE 7860

# Launch the app using Streamlit
CMD ["streamlit", "run", "app.py", "--server.port=7860", "--server.address=0.0.0.0"]

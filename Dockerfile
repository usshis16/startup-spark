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
# Create a writable .streamlit config directory
RUN mkdir -p /home/user/.streamlit
ENV HOME="/home/user"
ENV STREAMLIT_CONFIG_DIR="/home/user/.streamlit"


CMD ["streamlit", "run", "app.py", "--server.port=7860", "--server.address=0.0.0.0"]
# trigger from Dockerfile
# final trigger
# final launch nudge 🚀
# Expose the port Streamlit runs on
EXPOSE 7860

# Create a writable .streamlit config directory
RUN mkdir -p /home/user/.streamlit
ENV HOME="/home/user"
ENV STREAMLIT_CONFIG_DIR="/home/user/.streamlit"

# Run Streamlit
CMD ["streamlit", "run", "app.py", "--server.port=7860", "--server.address=0.0.0.0"]


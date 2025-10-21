# Base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy files
COPY app/ /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 8000

# Start the app
CMD ["python", "app.py"]

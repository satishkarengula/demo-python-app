# Use official Python image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy requirements and app files
COPY app.py /app
COPY templates /app/templates

# Install Flask
RUN pip install --no-cache-dir flask

# Expose port
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]

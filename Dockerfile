# Use an official Python image
FROM python:3.11-slim

# Set work directory
WORKDIR /app

# Install requirements
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Expose port (Cloud Run default is 8080)
EXPOSE 8080

# Start the application
CMD ["python", "main.py"]

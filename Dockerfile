# Use Python base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application
COPY src/ .

# Expose the port and run the application
EXPOSE 5000
CMD ["python", "app.py"]
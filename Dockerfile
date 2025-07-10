# Use official Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy dependencies
COPY requirement.txt .
RUN pip install -r requirement.txt

# Copy app code
COPY app.py .

# Expose port Flask uses
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]

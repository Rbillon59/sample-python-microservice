# Use the official Python image as the base image
FROM python:3.9-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file first to leverage Docker cache
COPY requirements.txt .

# Install the required dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application files to the container
COPY app.py .

# Expose the port that the Flask app will run on
EXPOSE 5000

# Set the command to run the Flask app when the container starts
CMD ["python", "app.py"]

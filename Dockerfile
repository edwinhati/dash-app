# Set the base image
FROM python:3.9-slim-buster

# Set the working directory
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application files into the container
COPY . .

# Expose the port that the app will run on
# EXPOSE 8050

# Start the app
CMD ["python", "app.py"]

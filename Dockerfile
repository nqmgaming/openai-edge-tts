FROM python:3.13.3-slim

WORKDIR /app

# Copy requirements and install them
COPY requirements.txt /app
RUN pip install -r requirements.txt

# Copy the app directory
COPY app/ /app

# Command to run the server
CMD ["python", "/app/server.py"]

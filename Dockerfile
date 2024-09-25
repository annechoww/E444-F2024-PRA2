FROM python:3.9-slim

WORKDIR /app

# Copy entire application into the container
COPY . /app

# Install required Python packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

ENV FLASK_APP=hello.py

EXPOSE 5000

# Command to run the application
CMD ["flask", "run", "--host=0.0.0.0"]

FROM python:3

# Install system dependencies
RUN apt-get update && \
    apt-get install -y python3-pil && \
    apt-get install -y libjpeg-dev zlib1g-dev

# Install Python dependencies
RUN pip install django==3.2 Pillow

# Copy the current directory contents into the container
COPY . .

# Command to run the Django server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8001"]


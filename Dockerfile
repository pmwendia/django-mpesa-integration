FROM ubuntu:latest
LABEL authors="archie"
# Use an official Python runtime as a parent image
FROM python:3.10

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /app

# Install dependencies
COPY requirements.txt /app/
RUN pip install --upgrade pip && pip install wheel && pip install -r requirements.txt

# Copy project
COPY . /app/

EXPOSE 8000

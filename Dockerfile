# Basis Image
FROM python:3.6-alpine

RUN apk add --no-cache gcc python3-dev musl-dev

# Umgebungsvariablen
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Working Directory
WORKDIR /code

# Dependencies
COPY requirements.txt /code/
RUN pip install -r requirements.txt

# Code Kopieren
COPY . /code/
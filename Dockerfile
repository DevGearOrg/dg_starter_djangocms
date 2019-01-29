FROM python:3.7.2-alpine3.8
ENV PYTHONUNBUFFERED 1
RUN mkdir -p /usr/src
WORKDIR /usr/src
COPY requirements.txt .
RUN pip install -r requirements.txt

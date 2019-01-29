FROM python:3.7.2-alpine3.8
ENV PYTHONUNBUFFERED 1
RUN mkdir -p /usr/src
WORKDIR /usr/src/server
COPY server/requirements.txt .
RUN apk add --no-cache tzdata postgresql-dev gcc libffi-dev build-base python-dev musl-dev git gettext jpeg-dev zlib-dev libxslt-dev && \
	pip install --no-cache-dir --src /root/pip_src -r requirements.txt

FROM python:3.8-slim-buster

WORKDIR /app

RUN pip install pipenv
COPY Pipfile* ./
RUN pipenv lock -r > requirements.txt
RUN pip install -r requirements.txt

COPY . /app

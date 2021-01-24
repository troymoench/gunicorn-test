FROM python:3.8-slim-buster

WORKDIR /app

RUN pip install pipenv
COPY Pipfile* ./
RUN pipenv lock -r > requirements.txt
RUN pip install -r requirements.txt

COPY ./start.sh /start.sh
RUN chmod +x /start.sh

COPY ./gunicorn_conf.py /app/gunicorn_conf.py
COPY ./main.py /app/main.py

CMD ["/start.sh"]

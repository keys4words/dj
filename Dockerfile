FROM python:3.9.7-slim-buster
ENV PYTHONUNBUFFERED=1

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install pip-tools && pip-sync
#RUN apt-get install -y python3-psycopg2

COPY . .

EXPOSE 8000
#RUN psql < psql-script.sql && \q
#RUN migrate-script.sh
#RUN compile.sh

#CMD init.sh && python manage.py runserver 127.0.0.1:8000

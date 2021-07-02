# syntax=docker/dockerfile:1
FROM python:3.8-slim

RUN apt-get update -y

ADD requirements.txt /home/requirements.txt
ADD backend/ml-service/app.py /home/app/app.py

WORKDIR /home

RUN pip install -r requirements.txt

ENTRYPOINT [ "python" ]

CMD ["app/app.py"]
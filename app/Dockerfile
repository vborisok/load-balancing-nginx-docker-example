FROM python:3

ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

RUN mkdir flask-project
WORKDIR /flask-project

COPY requirements.txt requirements.txt
COPY app.py app.py
RUN pip install -r requirements.txt

CMD [ "flask", "run" ]

FROM python:3.9.2

WORKDIR FLASKDOCKER

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . . 

EXPOSE 5000

CMD ["python", "-m", "flask", "run", "--host=0.0.0.0", "-p", "5000"]

ENV FLASK_APP=app.py
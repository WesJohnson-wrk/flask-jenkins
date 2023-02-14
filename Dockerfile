FROM python:3.9.12-buster

#ENV FLASK_ENV='development'
#ENV FLASK_APP='app.py'

WORKDIR /app

COPY . /app 

RUN pip install -r requirements.txt

EXPOSE 3000

CMD python3 ./app.py

CMD ["python3", "-m", "flask", "run", "--host=54.196.71.141"]


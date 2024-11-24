#This is a base image
FROM python:3.12-rc-bookworm

WORKDIR /app

COPY . /app

#This will install all necesarry libraries that are required to run the python application
RUN pip install --no-cache-dir -r requirements.txt

ENV FLASK_APP=app.py

CMD ["flask", "run", "--host=0.0.0.0"]
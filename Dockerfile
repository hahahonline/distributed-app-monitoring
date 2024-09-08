FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

# Definir o arquivo principal da aplicação Flask
ENV FLASK_APP=app.py

CMD ["flask", "run", "--host=0.0.0.0"]

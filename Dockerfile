FROM python:3-slim

WORKDIR /opt/app

COPY requirements.txt .

RUN apt update &&\ 
    pip install -r requirements.txt

COPY . .

ENV DB_URL=postgresql://harry:password@docker_pgs:5432/flask_db

EXPOSE 8000

CMD ["flask", "run", "--host", "0.0.0.0", "--port", "8000"]
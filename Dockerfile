FROM python:3.8-slim-buster

COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# need to mount with "simple-docker-demo:/app"
CMD ["python", "/app/app.py"]
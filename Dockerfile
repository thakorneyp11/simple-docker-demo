# import base image
FROM python:3.8-slim-buster

# process to run when build image
COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# process to run when being container
# TODO: need to mount with `$PWD:/app`
CMD ["python", "/app/app.py"]

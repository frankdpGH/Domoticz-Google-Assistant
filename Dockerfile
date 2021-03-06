# Dockerfile for Domoticz-Google-Assistant

# Install minimal Python 3.
FROM jfloff/alpine-python:3.7-slim

RUN mkdir -p config

COPY *.py /
COPY templates/ /templates/
COPY static/ /static/
COPY requirements/pip-requirements.txt /requirements.txt

# Create volume
VOLUME /config

# Configure Services and Port
CMD ["python3 /__main__.py"]

EXPOSE 3030

FROM python:3-alpine

ARG REGISTRY_PROJECT

WORKDIR /usr/src/app

COPY requirements-pypi.txt ./
RUN pip install --no-cache-dir -r requirements-pypi.txt
COPY requirements-isidro.txt ./
RUN pip install --no-cache-dir -r requirements-isidro.txt --extra-index-url https://us-python.pkg.dev/$REGISTRY_PROJECT/isidro-libs/simple/

COPY . .

ENV PYTHONUNBUFFERED True

CMD python ./main.py

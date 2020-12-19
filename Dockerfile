FROM python:3.9.1-alpine
WORKDIR /code/
COPY requirements.txt .
RUN apk add build-base libffi-dev openssl-dev && \
    pip install -r requirements.txt
COPY src/ .
CMD [ "python", "./esmorcabot.py" ]
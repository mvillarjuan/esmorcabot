FROM python:3.9.1-alpine
WORKDIR /code/
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY src/ .
CMD [ "./esmorcabot.py:" ]
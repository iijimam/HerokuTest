FROM alpine:latest

RUN apk add --no-cache --update python3 py3-pip bash
COPY ./webapp/requirements.txt /tmp/requirements.txt

RUN pip3 install --no-cache-dir -q -r /tmp/requirements.txt

COPY ./webapp /opt/webapp/
WORKDIR /opt/webapp

# Expose is NOT supported by Heroku
# EXPOSE 5000

RUN adduser -D isjedu
USER isjedu

# $PORT is set by Heroku
# gunicorn is needed by Heroku
CMD gunicorn --bind 0.0.0.0:$PORT wsgi
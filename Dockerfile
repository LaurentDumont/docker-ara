FROM python:3.8.1-alpine3.11

RUN apk update && apk add --no-cache postgresql-dev gcc python3-dev musl-dev

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY settings.yaml /root/.ara/server/settings.yaml

COPY ara-startup.sh ./
RUN chmod +x ara-startup.sh

CMD ["./ara-startup.sh"]

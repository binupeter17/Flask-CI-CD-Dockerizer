FROM alpine:3.8

RUN mkdir -p /var/flaskapp

WORKDIR /var/flaskapp

COPY .  .

RUN apk update && apk add python3 --no-cache

RUN pip3 install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python3"]

CMD ["app.py"]

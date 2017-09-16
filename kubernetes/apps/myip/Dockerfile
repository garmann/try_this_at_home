FROM alpine:3.1

RUN apk add --update python py-pip

COPY . /myapp/

RUN pip install -r /myapp/requirements.txt

EXPOSE 5000

WORKDIR /myapp/

CMD ["python", "app.py"]
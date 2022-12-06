FROM golang:buster

WORKDIR /usr/src/app
ADD . .
RUN go build -o /usr/local/bin/postgres-app

EXPOSE 3000
CMD ["/usr/local/bin/postgres-app"]
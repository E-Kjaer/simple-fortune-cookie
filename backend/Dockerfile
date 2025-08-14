FROM golang:1.24

WORKDIR /usr/app

COPY . .

RUN go mod download

RUN go build

ENTRYPOINT ["./backend"]
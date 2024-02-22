FROM golang:1.22-alpine

WORKDIR /app

COPY go.mod /app

RUN go mod download

COPY *.go /app

RUN go build app.go

EXPOSE 5000

CMD go run app.go
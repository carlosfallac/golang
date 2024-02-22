FROM golang:alpine as compiler
WORKDIR /app
COPY . .
RUN go build -o /main app.go

FROM scratch
COPY --from=compiler /main /main
EXPOSE 8080
ENTRYPOINT ["/main"]
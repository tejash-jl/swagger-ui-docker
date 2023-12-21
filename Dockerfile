FROM golang:1.21-alpine
WORKDIR /go/src/swagger-ui

RUN go install github.com/go-swagger/go-swagger/cmd/swagger@v0.30.5

ENV HOST=0.0.0.0
ENV PORT=8086

EXPOSE 8086

CMD ["sh", "-c", "/go/bin/swagger serve ./swagger-api.yml --no-open --port 8086  --base-path /swagger-ui  --path /"]


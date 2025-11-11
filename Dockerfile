FROM golang:1.22.5 AS base

WORKDIR /app

COPY go.mod .

RUN go mod download

COPY . .

ENV GOOS=linux
ENV GOARCH=amd64

RUN go build -o main .

FROM gcr.io/distroless/base

COPY --from=base /app/main .

COPY --from=base /app/static ./static

EXPOSE 8080

CMD ["./main"]
# dev
FROM golang:1.18.3-alpine as dev

WORKDIR /app

RUN apk add --no-cache git && \
    go install github.com/cespare/reflex@latest

COPY . .

CMD reflex -r '(\.go$|go\.mod)' -s go run ./cmd/main.go

# builder
FROM golang:1.18.3-alpine as builder

WORKDIR /src

COPY go.mod .
COPY go.sum .
RUN go mod download

COPY . .

RUN go build -o main cmd/main.go

# prod
FROM alpine as prod

WORKDIR /app

COPY --from=builder /src/main .

CMD ["./main"]

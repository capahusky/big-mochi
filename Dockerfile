FROM golang:1.17rc1-alpine as builder
RUN apk add git
COPY go.mod go.sum /go/src/github.com/capahusky/big-mochi/
WORKDIR /go/src/github.com/capahusky/big-mochi
RUN go mod download
COPY . /go/src/github.com/capahusky/big-mochi
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o build/big-mochi github.com/capahusky/big-mochi

FROM alpine
RUN apk add --no-cache ca-certificates && update-ca-certificates
COPY --from=builder /go/src/github.com/capahusky/big-mochi/build/big-mochi /usr/bin/big-mochi
EXPOSE 8090 8090
ENTRYPOINT ["/usr/bin/big-mochi"]

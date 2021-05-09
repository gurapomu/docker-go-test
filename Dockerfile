FROM golang:1.16.4-alpine3.13
RUN mkdir /go/src/docker-go-test
WORKDIR /go/src/docker-go-test
COPY main.go /go/src/docker-go-test
RUN go build main.go

FROM alpine:3.13
COPY --from=0 /go/src/docker-go-test/main /
CMD ["./main"]

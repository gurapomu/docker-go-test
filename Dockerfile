FROM golang:1.16.4-alpine3.13
RUN mkdir /go/src/docker-go-test
WORKDIR /go/src/docker-go-test
ADD main.go /go/src/docker-go-test
CMD ["go", "run", "main.go"]
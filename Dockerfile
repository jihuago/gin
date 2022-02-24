FROM golang:alpine as builder

WORKDIR $GOPATH/src

COPY . .

RUN go build main.go

FROM alpine:latest

ENV GO111MODULE=on \
	GOPROXY="https://goproxy.cn,direct"

MAINTAINER "linz<jihuagou@163.com>"

WORKDIR /root/

COPY --from=builder /go/src/main .

EXPOSE 8080

ENTRYPOINT ["./main"]
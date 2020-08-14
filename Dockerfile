FROM golang:1.14.7

WORKDIR /go/src/app
COPY . .

RUN go get github.com/lib/pq
RUN go get -d -v ./...
RUN go install -v ./...

CMD ["app"]

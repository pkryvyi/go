FROM golang:latest
COPY . /webapp
WORKDIR  /webapp
RUN mkdir src && \
    mkdir pkg && \
    mkdir bin
RUN go get cloud.google.com/go/pubsub && \
    go get google.golang.org/appengine
EXPOSE 8080
CMD go build main.go
CMD go run main.go

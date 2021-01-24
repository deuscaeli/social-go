FROM golang:1.15.6
MAINTAINER yuziyang7@outlook.com

WORKDIR /go/src/around
ADD . /go/src/around

RUN go get cloud.google.com/go/storage
RUN go get cloud.google.com/go/vision/apiv1 
RUN go get github.com/auth0/go-jwt-middleware
RUN go get github.com/form3tech-oss/jwt-go
RUN go get github.com/gorilla/mux
RUN go get github.com/google/uuid
RUN go get github.com/olivere/elastic

EXPOSE 8080
CMD ["/usr/local/go/bin/go", "run", "main.go", "user.go", "vision.go"]
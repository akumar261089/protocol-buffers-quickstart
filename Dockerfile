FROM ubuntu
LABEL maintainer="akumar261089@gmail.com>"
ENV PROTOC_VERSION 3.12.3
ENV GO_VERSION 1.14.4
ENV GOROOT /opt/golang/go
ENV GOPATH=$HOME/go
ENV GOBIN=$GOPATH/bin
ENV PATH=$PATH:$GOROOT:$GOPATH:$GOBIN
ENV NODEJS_VERSION 12.18.0
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    unzip \
    python3 \
    python3-pip \
    wget \
    git \
    protobuf-compiler \
    xz-utils
RUN mkdir /opt/protobuf && \
    wget https://github.com/protocolbuffers/protobuf/releases/download/v$PROTOC_VERSION/protoc-$PROTOC_VERSION-linux-x86_64.zip -O protobuf.zip && \
    unzip protobuf.zip -d /opt/protobuf/ && \
    ln -s /opt/protobuf/bin/protoc /usr/local/bin/ && \
    rm -rf  protobuf.zip 
RUN mkdir /opt/golang && \
    wget https://dl.google.com/go/go$GO_VERSION.linux-amd64.tar.gz -O golang.tar.gz && \
    tar -zxf golang.tar.gz -C /opt/golang/ && \
    ln -s /opt/golang/go/bin/go /usr/local/bin/ && \
    rm -rf  golang.tar.gz 
RUN mkdir /opt/nodejs && \
    wget https://nodejs.org/dist/v12.18.0/node-v$NODEJS_VERSION-linux-x64.tar.xz -O nodejs.tar.xz && \
    tar -xf nodejs.tar.xz -C /opt/nodejs/ && \
    ln -s /opt/nodejs/node-v$NODEJS_VERSION-linux-x64/bin/* /usr/local/bin/ && \
    rm -rf  nodejs.tar.xz 

RUN go get -u github.com/golang/protobuf/proto && go get -u github.com/golang/protobuf/protoc-gen-go

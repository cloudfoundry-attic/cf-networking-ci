FROM gliderlabs/alpine

RUN apk --update add \
  ca-certificates \
  bash \
  jq \
  iproute2 \
  go \
  alpine-sdk \
  && rm -rf /var/cache/apk/*

ENV GOROOT /usr/lib/go
ENV GOPATH /gopath
ENV GOBIN /gopath/bin
ENV PATH $PATH:$GOROOT/bin:$GOPATH/bin

RUN go get github.com/tools/godep

ADD src/github.com/onsi /gopath/src/github.com/onsi
RUN go install github.com/onsi/ginkgo/ginkgo

CMD /bin/bash

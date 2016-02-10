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
RUN go get github.com/onsi/ginkgo

RUN go install github.com/onsi/ginkgo/ginkgo

CMD /bin/bash

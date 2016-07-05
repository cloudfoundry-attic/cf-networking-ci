FROM postgres

RUN apt-get update -y && apt-get install -y --no-install-recommends \
  ca-certificates \
  curl \
  dnsutils \
  git \
  jq \
  iptables \
  &&  apt-get autoremove -yqq \
  &&  apt-get clean \
  &&  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN curl -o /tmp/golang.tgz https://storage.googleapis.com/golang/go1.6.2.linux-amd64.tar.gz \
    && tar -C /usr/local -xzf /tmp/golang.tgz \
    && rm /tmp/golang.tgz

ENV GOPATH /gopath
ENV GOBIN /gopath/bin
ENV PATH $PATH:/usr/local/go/bin:$GOPATH/bin

RUN go get github.com/tools/godep
RUN go get github.com/onsi/ginkgo

RUN go install github.com/onsi/ginkgo/ginkgo

CMD /bin/bash

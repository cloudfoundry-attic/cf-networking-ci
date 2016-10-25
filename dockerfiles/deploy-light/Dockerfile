FROM golang

RUN apt-get update -y && apt-get install -y jq curl git
RUN go get github.com/cloudfoundry/bosh-cli
RUN curl -L -o /usr/local/bin/bbl https://github.com/cloudfoundry/bosh-bootloader/releases/download/v1.1.0/bbl-v1.1.0_linux_x86-64 && chmod +x /usr/local/bin/bbl
RUN curl -L -o /usr/local/bin/bosh-init https://s3.amazonaws.com/bosh-init-artifacts/bosh-init-0.0.98-linux-amd64 && chmod +x /usr/local/bin/bosh-init

CMD /bin/bash

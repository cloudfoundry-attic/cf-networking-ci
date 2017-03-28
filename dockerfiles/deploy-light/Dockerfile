FROM golang

RUN apt-get update -y && apt-get install -y jq curl git
RUN curl -L "https://cli.run.pivotal.io/stable?release=linux64-binary&source=github" | tar -zx && mv cf /usr/local/bin/cf
RUN curl -L -o /usr/local/bin/bbl https://github.com/cloudfoundry/bosh-bootloader/releases/download/v1.2.1/bbl-v1.2.1_linux_x86-64 && chmod +x /usr/local/bin/bbl
RUN curl -L -o /usr/local/bin/bosh https://s3.amazonaws.com/bosh-cli-artifacts/bosh-cli-2.0.1-linux-amd64 && chmod +x /usr/local/bin/bosh
RUN curl -L -o /usr/local/bin/bosh-init https://s3.amazonaws.com/bosh-init-artifacts/bosh-init-0.0.99-linux-amd64 && chmod +x /usr/local/bin/bosh-init

CMD /bin/bash
